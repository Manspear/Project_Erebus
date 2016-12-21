#include "RenderQueue.h"


RenderQueue::RenderQueue() : nrOfWorlds(0), totalWorlds(0), worldMatrices(nullptr)
{
	for (size_t i = 0; i < ShaderType::NUM_SHADER_TYPES; i++)
	{
		allShaders[i] = nullptr;
	}

	int maximumNumberOfInstancesPerModel = 105;
	tempMatrices = new glm::mat4[maximumNumberOfInstancesPerModel];

}

RenderQueue::~RenderQueue()
{
	if (worldMatrices != nullptr)
		delete[] worldMatrices;
	for (size_t i = 0; i < ShaderType::NUM_SHADER_TYPES; i++)
		if (allShaders[i] != nullptr)
			delete allShaders[i];
	delete[] tempMatrices;
}

void RenderQueue::init()
{
	allShaders[ShaderType::FORWARD] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "forward");
	allShaders[ShaderType::ANIM] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "anim");
	allShaders[ShaderType::PARTICLES] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "particle");
	allShaders[ShaderType::GEOMETRY] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "geometryPass");
	allShaders[ShaderType::GEOMETRY_NON] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "geometryPass_notInstanced");
	allShaders[ShaderType::HEIGHTMAP] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "heightmap");
	allShaders[ShaderType::DEBUG_LINE] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "debugLine");
	allShaders[ShaderType::DEBUG_SPHERE] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "debugSphere");
	allShaders[ShaderType::DEBUG_AABB] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "debugAABB");
	allShaders[ShaderType::GEOMETRY_PICKING] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "geometryPicking");
}

void RenderQueue::updateUniforms(Camera* camera)
{
	allShaders[FORWARD]->use();
	allShaders[FORWARD]->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	allShaders[FORWARD]->addUniform(camera->getViewMatrix(), "viewMatrix");
	allShaders[FORWARD]->addUniform(camera->getPosition(), "viewPos");
	allShaders[FORWARD]->addUniform(camera->getPosition(), "lightPos");
	allShaders[FORWARD]->addUniform(glm::vec3(1.0f, 1.0f, 1.0f), "lightColor");
	allShaders[FORWARD]->unUse();
	
	allShaders[ANIM]->use();
	allShaders[ANIM]->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	allShaders[ANIM]->addUniform(camera->getViewMatrix(), "viewMatrix");
	allShaders[ANIM]->addUniform(camera->getPosition(), "viewPos");
	allShaders[ANIM]->addUniform(camera->getPosition(), "lightPos");
	allShaders[ANIM]->addUniform(glm::vec3(1.0f, 1.0f, 1.0f), "lightColor");
	allShaders[ANIM]->unUse();

	allShaders[GEOMETRY]->use();
	allShaders[GEOMETRY]->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	allShaders[GEOMETRY]->addUniform(camera->getViewMatrix(), "viewMatrix");
	allShaders[GEOMETRY]->unUse();

	allShaders[GEOMETRY_NON]->use();
	allShaders[GEOMETRY_NON]->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	allShaders[GEOMETRY_NON]->addUniform(camera->getViewMatrix(), "viewMatrix");
	allShaders[GEOMETRY_NON]->unUse();

	allShaders[PARTICLES]->use();
	allShaders[PARTICLES]->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	allShaders[PARTICLES]->addUniform(camera->getViewMatrix(), "viewMatrix");
	allShaders[PARTICLES]->unUse();

	allShaders[GEOMETRY_PICKING]->use();
	allShaders[GEOMETRY_PICKING]->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	allShaders[GEOMETRY_PICKING]->addUniform(camera->getViewMatrix(), "viewMatrix");
	allShaders[GEOMETRY_PICKING]->unUse();
}

void RenderQueue::configure(RenderQueueId &id, GLuint &shaderProgramId)
{

	if (currentShader != id.shaderProgram)
	{
		allShaders[currentShader]->unUse();
		allShaders[id.shaderProgram]->use();
		shaderProgramId = allShaders[id.shaderProgram]->getProgramID();
		currentShader = id.shaderProgram;
	}

	if (currentTexture != id.texture)
	{
		//use id.texture
		currentTexture = id.texture;
	}
}

void RenderQueue::process(std::vector<RenderQueueElement*> &elements)
{
	size_t size = elements.size();

	std::vector<size_t> indices(size);
	std::iota(indices.begin(), indices.end(), 0);

	std::sort(indices.begin(), indices.end(),
		[&elements](size_t i1, size_t i2) {return elements[i2] < elements[i1]; });

	currentShader = 0;
	GLuint shaderProgramId = allShaders[currentShader]->getProgramID();
	allShaders[currentShader]->use();

	for (int i = 0; i < size; i++)
	{
		RenderQueueElement* el = elements[indices[i]];
		configure(el->id, shaderProgramId);
		el->draw(shaderProgramId);
	}
	allShaders[currentShader]->unUse();
}

void RenderQueue::allocateWorlds(int n)
{
	if (worldMatrices)
		delete[] worldMatrices;
	worldMatrices = new glm::mat4[n];
}

void RenderQueue::update(int n, TransformStruct* theTrans)
{
	glm::mat4 tempMatrix = glm::mat4();
	glm::mat4 rotationZ = glm::mat4();
	glm::mat4 rotationY = glm::mat4();
	for (int i = 0; i < n; i++)
	{
		if (theTrans[i].active == true) 
		{
			//reset the world matrix
			tempMatrix = glm::mat4();
			glm::vec3 tempLook = glm::normalize(glm::vec3(theTrans[i].lookAt.x, 0, theTrans[i].lookAt.z));
			glm::vec3 axis = glm::cross(tempLook, { 0, 1, 0 });

			//rotate around the axis orthogonal to both the {0,1,0} vector and the lookDir vector. (makes the model roll forwards/backwards)
			rotationZ = glm::rotate(tempMatrix, theTrans[i].rot.z, axis);
			//rotatea around Y axis, pretty simple. (makes the model look left/right)
			rotationY = glm::rotate(tempMatrix, theTrans[i].rot.y, { 0, 1, 0 });
			//set the scale of the models
			tempMatrix[0][0] = theTrans[i].scale.x;
			tempMatrix[1][1] = theTrans[i].scale.y;
			tempMatrix[2][2] = theTrans[i].scale.z;

			//rotates a scaled identity matrix
			tempMatrix = rotationZ * rotationY * tempMatrix;

			//sets the translation of objects, final world matrix
			tempMatrix[3][0] = theTrans[i].pos.x;
			tempMatrix[3][1] = theTrans[i].pos.y;
			tempMatrix[3][2] = theTrans[i].pos.z;
			worldMatrices[i] = tempMatrix;
		}
	}
}

int RenderQueue::addModelInstance(ModelAsset* asset)
{
	int result = this->nrOfWorlds++;

	int index = -1;
	for (int i = 0; i < instances.size() && index < 0; i++)
		if (instances[i].asset == asset)
			index = i;

	if (index < 0)
	{
		ModelInstance instance;
		instance.asset = asset;
		instance.worldIndices.push_back(result);

		index = instances.size();
		instances.push_back(instance);
	}

	instances[index].worldIndices.push_back(result);
	worldMatrices[result] = glm::mat4(1, 0, 0, 0,
		0, 1, 0, 0,
		0, 0, 1, 0,
		0, 0, nrOfWorlds, 1);

	return result;
}

ShaderProgram* RenderQueue::getShaderProgram(ShaderType type) {
	return this->allShaders[type];
}

int RenderQueue::generateWorldMatrix()
{
	int result = nrOfWorlds++;
	worldMatrices[result];
	return result;
}

void RenderQueue::forwardPass(std::vector<ModelInstance>* staticModels, std::vector<ModelInstance>* dynamicModels)
{
	allShaders[FORWARD]->use();
	GLuint worldMatrixLocation = glGetUniformLocation(this->allShaders[FORWARD]->getProgramID(), "worldMatrix");
	GLuint worldMatricesLocation = glGetUniformLocation(allShaders[FORWARD]->getProgramID(), "worldMatrices");

	for (int i = 0; i < dynamicModels->size(); i++)
	{
		ModelAsset* modelAsset = dynamicModels ->at(i).asset;
		int meshes = modelAsset->getHeader()->numMeshes;
		int numInstance = 0;
		//dynamicModels->at(i).material.bindTextures(allShaders[FORWARD]->getProgramID());
		for (int j = 0; j < dynamicModels->at(i).worldIndices.size(); j++)
		{
			int index = dynamicModels->at(i).worldIndices[j];
			tempMatrices[numInstance++] = worldMatrices[index];
		}

		glUniformMatrix4fv(worldMatricesLocation, numInstance, GL_FALSE, &tempMatrices[0][0][0]);

		for (int j = 0; j < modelAsset->getHeader()->numMeshes; j++)
		{
			//0 == STATIC 1 == DYNAMIC/ANIMATEDS
			size_t size = modelAsset->getHeader()->TYPE == 0 ? sizeof(Importer::sVertex) : sizeof(Importer::sSkeletonVertex);
			glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, size, 0);
			glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, size, (void*)(sizeof(float) * 3));
			glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, size, (void*)(sizeof(float) * 6));
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
			glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
			glBindBuffer(GL_ARRAY_BUFFER, 0);
		}
	}
	allShaders[FORWARD]->unUse();
}

void RenderQueue::particlePass(std::vector<Gear::ParticleSystem*>* particleSystems)
{
	//glDisable(GL_DEPTH_TEST);
	allShaders[PARTICLES]->use();
	GLuint loc = glGetUniformLocation(allShaders[PARTICLES]->getProgramID(), "particleSize");
	//GLuint loc2 = glGetUniformLocation(allShaders[PARTICLES]->getProgramID(), "vertexColor");
	glUniform1f(loc, 1.0);
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);


	Color c;
	TextureAsset* tA;
	glm::vec3* pos;

	for (size_t i = 0; i < particleSystems->size(); i++)
	{
		if (particleSystems->at(i)->isActive)
		{
			
			//c = particleSystems->at(i)->getColor();
			//glUniform3f(loc2, c.r, c.g, c.b );
			pos = particleSystems->at(i)->getPositions();
			particleSystems->at(i)->getTexture()->bind(GL_TEXTURE0);
			size_t ParticleCount = particleSystems->at(i)->getNrOfActiveParticles();

			glBindBuffer(GL_ARRAY_BUFFER, particleSystems->at(i)->getPartVertexBuffer());
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(glm::vec3), (GLvoid*)0);
			glBufferData(GL_ARRAY_BUFFER, (sizeof(glm::vec3)) * ParticleCount, &pos[0], GL_STATIC_DRAW);
			glEnableVertexAttribArray(0);
			glDrawArraysInstanced(GL_POINTS, 0, ParticleCount, 1);
		}
	}
	allShaders[PARTICLES]->unUse();
	glDisable(GL_BLEND);
	//glEnable(GL_DEPTH_TEST);
}

/*void RenderQueue::geometryPass(std::vector<ModelInstance>* dynamicModels)
{
	allShaders[GEOMETRY]->use();
	GLuint worldMatricesLocation = glGetUniformLocation(allShaders[GEOMETRY]->getProgramID(), "worldMatrices");

	for (int i = 0; i < dynamicModels->size(); i++)
	{
		ModelAsset* modelAsset = dynamicModels->at(i).asset;
		int meshes = modelAsset->getHeader()->numMeshes;
		int numInstance = 0;
		
		dynamicModels->at(i).material.bindTextures(allShaders[GEOMETRY]->getProgramID());

		for (int j = 0; j < dynamicModels->at(i).worldIndices.size(); j++)
		{
			int index = dynamicModels->at(i).worldIndices[j];
			tempMatrices[numInstance++] = worldMatrices[index];
		}

		glUniformMatrix4fv(worldMatricesLocation, numInstance, GL_FALSE, &tempMatrices[0][0][0]);

		for (int j = 0; j < modelAsset->getHeader()->numMeshes; j++)
		{
			//0 == STATIC 1 == DYNAMIC/ANIMATEDS
			size_t size = modelAsset->getHeader()->TYPE == 0 ? sizeof(Importer::sVertex) : sizeof(Importer::sSkeletonVertex);
			glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
			glEnableVertexAttribArray(0);
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, size, 0);
			glEnableVertexAttribArray(1);
			glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, size, (void*)(sizeof(float) * 3));
			glEnableVertexAttribArray(2);
			glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, size, (void*)(sizeof(float) * 6));
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
			glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
			glBindBuffer(GL_ARRAY_BUFFER, 0);
		}
	}
	allShaders[GEOMETRY]->unUse();
}*/

void RenderQueue::geometryPass(std::vector<ModelInstance>* dynamicModels, std::vector<AnimatedInstance>* animatedModels)
{
	allShaders[GEOMETRY]->use();
	GLuint worldMatricesLocation = glGetUniformLocation(allShaders[GEOMETRY]->getProgramID(), "worldMatrices");

	for (int i = 0; i < dynamicModels->size(); i++)
	{
		ModelAsset* modelAsset = dynamicModels->at(i).asset;
		int meshes = modelAsset->getHeader()->numMeshes;
		int numInstance = 0;

		//dynamicModels->at(i).material.bindTextures(allShaders[GEOMETRY]->getProgramID());

		// TEMP: Shouldn't have any models without material
		if( modelAsset->getMaterial() )
		modelAsset->getMaterial()->bindTextures( allShaders[GEOMETRY]->getProgramID() );

		for (int j = 0; j < dynamicModels->at(i).worldIndices.size(); j++)
		{
			int index = dynamicModels->at(i).worldIndices[j];
			tempMatrices[numInstance++] = worldMatrices[index];
		}

		glUniformMatrix4fv(worldMatricesLocation, numInstance, GL_FALSE, &tempMatrices[0][0][0]);

		for (int j = 0; j < modelAsset->getHeader()->numMeshes; j++)
		{
			//0 == STATIC 1 == DYNAMIC/ANIMATEDS
			size_t size = modelAsset->getHeader()->TYPE == 0 ? sizeof(Importer::sVertex) : sizeof(Importer::sSkeletonVertex);
			glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
			glEnableVertexAttribArray(0);
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, size, 0);
			glEnableVertexAttribArray(1);
			glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, size, (void*)(sizeof(float) * 3));
			glEnableVertexAttribArray(2);
			glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, size, (void*)(sizeof(float) * 6));
			glEnableVertexAttribArray(3);
			glVertexAttribPointer(3, 3, GL_FLOAT, GL_FALSE, size, (void*)(sizeof(float) * 8));
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
			glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
			glBindBuffer(GL_ARRAY_BUFFER, 0);
		}
	}
	allShaders[GEOMETRY]->unUse();

	currentShader = ANIM;
	allShaders[currentShader]->use();
	GLuint jointMatrixLocation = glGetUniformLocation(this->allShaders[currentShader]->getProgramID(), "jointMatrices");
	worldMatricesLocation = glGetUniformLocation(allShaders[currentShader]->getProgramID(), "worldMatrices");

	for (int i = 0; i<animatedModels->size(); i++)
	{
		ModelAsset* modelAsset = animatedModels->at(i).asset;
		int meshes = modelAsset->getHeader()->numMeshes;
		int numInstance = 0;

		//animatedModels->at(i).material.bindTextures(allShaders[currentShader]->getProgramID());
		modelAsset->getMaterial()->bindTextures(allShaders[currentShader]->getProgramID());

		for (int j = 0; j< animatedModels->at(i).worldIndices.size(); j++)
		{
			int index = animatedModels->at(i).worldIndices.at(i);
			//tempMatrices[numInstance++] = worldMatrices[animatedModels->at(i).worldIndices[j]];
			glm::mat4 tempMatrix = worldMatrices[animatedModels->at(i).worldIndices[j]];


			//glUniformMatrix4fv(worldMatricesLocation, numInstance, GL_FALSE, &tempMatrices[0][0][0]);
			glUniformMatrix4fv( worldMatricesLocation, 1, GL_FALSE, &tempMatrix[0][0] );
			glUniformMatrix4fv(jointMatrixLocation, MAXJOINTCOUNT, GL_FALSE, &animatedModels->at(i).animations[j]->getShaderMatrices()[0][0][0]);

			for (int j = 0; j<modelAsset->getHeader()->numMeshes; j++)
			{
				//0 == STATIC 1 == DYNAMIC/ANIMATEDS
				int size = sizeof(Importer::sSkeletonVertex);
				glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
				glEnableVertexAttribArray(0);
				glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, size, 0);
				glEnableVertexAttribArray(1);
				glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, size, (void*)(sizeof(float) * 3));
				glEnableVertexAttribArray(2);
				glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, size, (void*)(sizeof(float) * 6));
				glEnableVertexAttribArray(3);
				glVertexAttribPointer(3, 3, GL_FLOAT, GL_FALSE, size, (void*)(sizeof(float) * 8));
				glEnableVertexAttribArray(4);
				glVertexAttribIPointer(4, 4, GL_INT, size, (void*)(sizeof(float) * 11));
				glEnableVertexAttribArray(5);
				glVertexAttribPointer(5, 4, GL_FLOAT, GL_FALSE, size, (void*)(sizeof(float) * 11 + sizeof(int) * 4));

				glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
				glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, 1);
				glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
				glBindBuffer(GL_ARRAY_BUFFER, 0);
			}
		}
	}
	allShaders[currentShader]->unUse();
}

void RenderQueue::pickingPass(std::vector<ModelInstance>* dynamicModels) {
	allShaders[GEOMETRY_PICKING]->use();
	GLuint worldMatricesLocation = glGetUniformLocation(allShaders[GEOMETRY_PICKING]->getProgramID(), "worldMatrices");
	GLuint colorIdLocation = glGetUniformLocation(allShaders[GEOMETRY_PICKING]->getProgramID(), "instanceColors");
	glm::vec3* idColors = new glm::vec3[105];
	glm::vec3 color = glm::vec3(1, 0, 0);
	for (int i = 0; i < dynamicModels->size(); i++)
	{
		ModelAsset* modelAsset = dynamicModels->at(i).asset;
		int meshes = modelAsset->getHeader()->numMeshes;
		int numInstance = 0;

		//dynamicModels->at(i).material.bindTextures(allShaders[GEOMETRY_PICKING]->getProgramID());
		modelAsset->getMaterial()->bindTextures(allShaders[GEOMETRY_PICKING]->getProgramID());

		for (int j = 0; j < dynamicModels->at(i).worldIndices.size(); j++)
		{
			int index = dynamicModels->at(i).worldIndices[j];
			tempMatrices[numInstance++] = worldMatrices[index];
			int r = 255;// (j & 0x000000FF) >> 0;
			int g = 0;// (j & 0x0000FF00) >> 8;
			int b = 0;// (j & 0x00FF0000) >> 16;
			idColors[numInstance-1] = glm::vec3((float)r / 255.f, (float)g / 255.f, (float)b / 255.f);
		}

		glUniformMatrix4fv(worldMatricesLocation, numInstance, GL_FALSE, &tempMatrices[0][0][0]);

		glUniform3fv(colorIdLocation, numInstance, &idColors[0][0]);//glm::value_ptr(idColors[0]));

		for (int j = 0; j < modelAsset->getHeader()->numMeshes; j++)
		{
			//0 == STATIC 1 == DYNAMIC/ANIMATEDS
			size_t size = modelAsset->getHeader()->TYPE == 0 ? sizeof(Importer::sVertex) : sizeof(Importer::sSkeletonVertex);
			glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
			glEnableVertexAttribArray(0);
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, size, 0);
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
			glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
			glBindBuffer(GL_ARRAY_BUFFER, 0);
		}
	}

	delete[]idColors;
	allShaders[GEOMETRY_PICKING]->unUse();
}
