#include "RenderQueue.h"


RenderQueue::RenderQueue()
	: nrOfWorlds(0),  worldMatrices(nullptr), jointMatrices( nullptr )
{
	for (size_t i = 0; i < ShaderType::NUM_SHADER_TYPES; i++)
	{
		allShaders[i] = nullptr;
		uniformLocations[i] = nullptr;
	}
	int maximumNumberOfInstancesPerModel = 105;
	tempMatrices = new glm::mat4[maximumNumberOfInstancesPerModel];

	LARGE_INTEGER i;
	QueryPerformanceFrequency( &i );
	freq = (double)i.QuadPart;
}

RenderQueue::~RenderQueue()
{
	if (worldMatrices)
		delete[] worldMatrices;
	if( jointMatrices )
		delete[] jointMatrices;

	for (size_t i = 0; i < ShaderType::NUM_SHADER_TYPES; i++)
	{
		if (allShaders[i] != nullptr)
			delete allShaders[i];
		if (uniformLocations[i] != nullptr)
			delete[] uniformLocations[i];
	}
		
	delete[] tempMatrices;
}

void RenderQueue::init()
{
	allShaders[ShaderType::FORWARD] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "forward");
	allShaders[ShaderType::ANIM] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "anim");
	allShaders[ShaderType::ANIMSHADOW] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "animShadow");
	allShaders[ShaderType::PARTICLES] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "particle");
	allShaders[ShaderType::GEOMETRY] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "geometryPass");
	allShaders[ShaderType::GEOMETRYSHADOW] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "geometryPassShadow");
	allShaders[ShaderType::DEBUG_LINE] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "debugLine");
	allShaders[ShaderType::DEBUG_SPHERE] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "debugSphere");
	allShaders[ShaderType::DEBUG_AABB] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "debugAABB");
	allShaders[ShaderType::DEBUG_OBB] = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "debugOBB");
	allShaders[ShaderType::GEOMETRY_PICKING] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "geometryPicking");
	allShaders[ShaderType::QUAD] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "quad"); //shader to draw texture to the screen

	allShaders[ShaderType::LIGHT_PASS] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "lightPass"); //Shader for calculating lighting
	allShaders[ShaderType::LIGHT_PASS]->addUniform("dirLights.direction");
	allShaders[ShaderType::LIGHT_PASS]->addUniform("dirLights.color");

	allShaders[ShaderType::BLUR] = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "blur"); //Shader for bluring texture

	glGenBuffers(1, &particleBuffer);
}

void RenderQueue::updateUniforms(Camera* camera)
{
	glm::mat4 projectionMatrix = camera->getProjectionMatrix();
	glm::mat4 viewMatrix = camera->getViewMatrix();
	glm::vec3 viewPosition = camera->getPosition();

	allShaders[FORWARD]->use();
	allShaders[FORWARD]->setUniform(projectionMatrix, "projectionMatrix");
	allShaders[FORWARD]->setUniform(viewMatrix, "viewMatrix");
	allShaders[FORWARD]->unUse();
	
	allShaders[ANIM]->use();
	allShaders[ANIM]->setUniform(projectionMatrix, "projectionMatrix");
	allShaders[ANIM]->setUniform(viewMatrix, "viewMatrix");
	allShaders[ANIM]->unUse();

	allShaders[GEOMETRY]->use();
	allShaders[GEOMETRY]->setUniform(projectionMatrix, "projectionMatrix");
	allShaders[GEOMETRY]->setUniform(viewMatrix, "viewMatrix");
	allShaders[GEOMETRY]->unUse();

	allShaders[PARTICLES]->use();
	allShaders[PARTICLES]->setUniform(projectionMatrix, "projectionMatrix");
	allShaders[PARTICLES]->setUniform(viewMatrix, "viewMatrix");
	allShaders[PARTICLES]->unUse();

	allShaders[GEOMETRY_PICKING]->use();
	allShaders[GEOMETRY_PICKING]->setUniform(projectionMatrix, "projectionMatrix");
	allShaders[GEOMETRY_PICKING]->setUniform(viewMatrix, "viewMatrix");
	allShaders[GEOMETRY_PICKING]->unUse();
}

void RenderQueue::updateUniforms(Camera * camera, ShaderType shader)
{
	allShaders[shader]->use();
	allShaders[shader]->setUniform(camera->getProjectionMatrix(), "projectionMatrix");
	allShaders[shader]->setUniform(camera->getViewMatrix(), "viewMatrix");
	allShaders[shader]->unUse();
}

void RenderQueue::allocateWorlds(int n)
{
	if (worldMatrices)
		delete[] worldMatrices;
	if(jointMatrices)
		delete[] jointMatrices;

	worldMatrices = new glm::mat4[n];
	jointMatrices = new glm::mat4[n*MAXJOINTCOUNT];
}

void RenderQueue::update(int ntransforms, TransformStruct* theTrans, int nanimations, Animation* animations)
{
	allTransforms = theTrans;
#if 1
	glm::mat4 tempMatrix = glm::mat4();
	glm::mat4 rotationZ = glm::mat4();
	glm::mat4 rotationY = glm::mat4();
	glm::mat4 rotationX = glm::mat4();
	glm::vec3 tempLook;
	glm::vec3 axis;
	for (int i = 0; i < ntransforms; i++)
	{
		if (theTrans[i].active == true) 
		{
			//THIS WHOLE FUNCTION CAN DEFINETELY BE OPTIMIZED (do something along the lines of mat4 = {coscoscosos, coscsocsosins, coscoscoscos, x,
			//																							sinsinssin, sinsinsinsn, ccoscosocosco, y,
			//																							x,x,x,x,				
			//																							yt.t.t..y,y,y,}
			//reset the world matrix
			tempMatrix = glm::mat4();
			tempLook = glm::normalize(glm::vec3(theTrans[i].lookAt.x, 0, theTrans[i].lookAt.z));
			axis = glm::cross(tempLook, { 0, 1, 0 });

			//rotate around the axis orthogonal to both the {0,1,0} vector and the lookDir vector. (makes the model roll forwards/backwards)
			rotationZ = glm::rotate(tempMatrix, theTrans[i].rot.z, axis);
			rotationX = glm::rotate(tempMatrix, theTrans[i].rot.x, theTrans[i].lookAt); //remove if too much trouble xd
			//rotatea around Y axis, pretty simple. (makes the model look left/right)
			rotationY = glm::rotate(tempMatrix, theTrans[i].rot.y, { 0, 1, 0 });
			//set the scale of the models
			tempMatrix[0][0] = theTrans[i].scale.x;
			tempMatrix[1][1] = theTrans[i].scale.y;
			tempMatrix[2][2] = theTrans[i].scale.z;

			//rotates a scaled identity matrix
			tempMatrix = rotationX *  rotationZ * rotationY *  tempMatrix;

			//sets the translation of objects, final world matrix
			tempMatrix[3][0] = theTrans[i].pos.x;
			tempMatrix[3][1] = theTrans[i].pos.y;
			tempMatrix[3][2] = theTrans[i].pos.z;
			worldMatrices[i] = tempMatrix;
		}
	}

	for( int i=0; i<nanimations; i++ )
	{
		memcpy( jointMatrices+i*MAXJOINTCOUNT, animations[i].getShaderMatrices(), sizeof(glm::mat4)*MAXJOINTCOUNT );
	}
#else
	int chunk = n / MAX_THREADS;

	for( int i=0; i<MAX_THREADS; i++ )
	{
		int first = i*chunk;

		if( i == MAX_THREADS-1 )
			chunk += n % MAX_THREADS;

		int last = first + chunk;
		
		asyncTransformData[i] = { theTrans, worldMatrices, first, last };

		work->add( asyncTransformUpdate, &asyncTransformData[i] );
	}
	work->execute();
#endif

	/*LARGE_INTEGER e;
	QueryPerformanceCounter( &e );
	double end = e.QuadPart;*/

	//printf( "Time: %f-%f=%f\n", end, start, (end-start)/freq );
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

void RenderQueue::forwardPass(std::vector<ModelInstance>* dynamicModels, std::vector<UniformValues>* uniValues)
{
	allShaders[FORWARD]->use();
	ModelAsset* modelAsset;
	int meshes;
	int numInstance;
	size_t size = sizeof(Importer::sVertex);
	bool atLeastOne = false;
	glm::vec2 resetValue = { 0.0, 0.0 };
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	for (int i = 0; i < dynamicModels->size(); i++)
	{
		numInstance = 0;
		for (int j = 0; j < dynamicModels->at(i).worldIndices.size(); j++)
		{
			indices[j] = dynamicModels->at(i).worldIndices[j];
			if (allTransforms[indices[j]].active)
			{
				tempMatrices[numInstance++] = worldMatrices[indices[j]];
				atLeastOne = true;
			}			
		}
		if (atLeastOne) 
		{
			modelAsset = dynamicModels->at(i).asset;
			meshes = modelAsset->getHeader()->numMeshes;
			
			allShaders[FORWARD]->setUniform(*tempMatrices, "worldMatrices", numInstance);
			if (uniValues->at(i).location != "NULL")
				allShaders[FORWARD]->addUniform(uniValues->at(i).values, uniValues->at(i).location);
			for (int j = 0; j < modelAsset->getHeader()->numMeshes; j++)
			{
				glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
				modelAsset->getMaterial()->bindTextures(allShaders[FORWARD]->getProgramID());
				glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, (GLsizei)size, 0);
				glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, (GLsizei)size, (void*)(sizeof(float) * 3));
				glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, (GLsizei)size, (void*)(sizeof(float) * 6));
				glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
				glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
				glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
				glBindBuffer(GL_ARRAY_BUFFER, 0);
			}
			
			if (uniValues->at(i).location != "NULL")
				allShaders[FORWARD]->addUniform(resetValue, uniValues->at(i).location);
		}
	}
	allShaders[FORWARD]->unUse();
}

bool RenderQueue::particlePass(std::vector<Gear::ParticleSystem*>* ps, std::vector<Gear::ParticleEmitter>* emitters)
{
	bool results = false;
	allShaders[PARTICLES]->use();
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	SendStruct* pos;
	size_t particleCount;
	glBindBuffer(GL_ARRAY_BUFFER, particleBuffer);
	glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, sizeof(SendStruct), (GLvoid*)0);
	for (size_t i = 0; i < ps->size(); i++)
	{
		if (ps->at(i)->isActive)
		{
			results = true;
			for (size_t j = 0; j < ps->at(i)->getNrOfEmitters(); j++)
			{
				if (ps->at(i)->particleEmitters->isActive)
				{
					pos = ps->at(i)->particleEmitters[j].getPositions();
					ps->at(i)->particleEmitters[j].getTexture()->bind(GL_TEXTURE0);
					particleCount = ps->at(i)->particleEmitters[j].getNrOfActiveParticles();
					glBufferData(GL_ARRAY_BUFFER, (sizeof(SendStruct)) * particleCount, &pos[0], GL_STATIC_DRAW);
					glDrawArraysInstanced(GL_POINTS, 0, (GLsizei)particleCount, 1);
				}
			}
		}
	}
	
	for (size_t i = 0; i < emitters->size(); i++)
	{
		if (emitters->at(i).isActive)
		{
			pos = emitters->at(i).getPositions();
			emitters->at(i).getTexture()->bind(GL_TEXTURE0);
			particleCount = emitters->at(i).getNrOfActiveParticles();
			std::cout << particleCount << std::endl;
			glBufferData(GL_ARRAY_BUFFER, (sizeof(SendStruct)) * particleCount, &pos[0], GL_STATIC_DRAW);
			glDrawArraysInstanced(GL_POINTS, 0, (GLsizei)particleCount, 1);
		}
	}
	glEnableVertexAttribArray(0);
	allShaders[PARTICLES]->unUse();
	return results;
}

void RenderQueue::geometryPass(std::vector<ModelInstance>* dynamicModels, std::vector<AnimatedInstance>* animatedModels)
{
	allShaders[GEOMETRY]->use();

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
			indices[j] = dynamicModels->at(i).worldIndices[j];
			if (allTransforms[indices[j]].active)
				tempMatrices[numInstance++] = worldMatrices[indices[j]];
		}
		allShaders[GEOMETRY]->setUniform4fv(tempMatrices, "worldMatrices", numInstance);
		//glUniformMatrix4fv(worldMatricesLocation, numInstance, GL_FALSE, &tempMatrices[0][0][0]);

		for (int j = 0; j < modelAsset->getHeader()->numMeshes; j++)
		{
			//0 == STATIC 1 == DYNAMIC/ANIMATEDS
			size_t size = modelAsset->getHeader()->TYPE == 0 ? sizeof(Importer::sVertex) : sizeof(Importer::sSkeletonVertex);
			glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
			glEnableVertexAttribArray(0);
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, (GLsizei)size, 0);
			glEnableVertexAttribArray(1);
			glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, (GLsizei)size, (void*)(sizeof(float) * 3));
			glEnableVertexAttribArray(2);
			glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, (GLsizei)size, (void*)(sizeof(float) * 6));
			glEnableVertexAttribArray(3);
			glVertexAttribPointer(3, 3, GL_FLOAT, GL_FALSE, (GLsizei)size, (void*)(sizeof(float) * 8));
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
			glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
			//glDrawElementsInstanced(GL_LINES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
			glBindBuffer(GL_ARRAY_BUFFER, 0);
		}
	}
	allShaders[GEOMETRY]->unUse();

	currentShader = ANIM;
	allShaders[currentShader]->use();

	//GLuint jointMatrixLocation = glGetUniformLocation(this->allShaders[currentShader]->getProgramID(), "jointMatrices");
	//worldMatricesLocation = glGetUniformLocation(allShaders[currentShader]->getProgramID(), "worldMatrices");

	for (int i = 0; i<animatedModels->size(); i++)
	{
		ModelAsset* modelAsset = animatedModels->at(i).asset;
		int meshes = modelAsset->getHeader()->numMeshes;
		int numInstance = 0;

		//animatedModels->at(i).material.bindTextures(allShaders[currentShader]->getProgramID());
		modelAsset->getMaterial()->bindTextures(allShaders[currentShader]->getProgramID());

		for (int j = 0; j< animatedModels->at(i).worldIndices.size(); j++)
		{
			int index = animatedModels->at(i).worldIndices.at(j);
			//tempMatrices[numInstance++] = worldMatrices[animatedModels->at(i).worldIndices[j]];
			glm::mat4 tempMatrix = worldMatrices[index];


	
			allShaders[ANIM]->setUniform4cfv(&tempMatrix[0][0], "worldMatrices", 1);

			//glUniformMatrix4fv(allShaders[ANIM]->getUniformLocation("jointMatrices"), MAXJOINTCOUNT, GL_FALSE, &jointMatrices[animatedModels->at(i).animations[j]->getMatrixIndex()*MAXJOINTCOUNT][0][0] );
			allShaders[ANIM]->setUniform4cfv(&jointMatrices[animatedModels->at(i).animations[j]->getMatrixIndex()*MAXJOINTCOUNT][0][0], "jointMatrices", MAXJOINTCOUNT);

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

void RenderQueue::geometryPass(std::vector<ModelInstance>* dynamicModels, std::vector<AnimatedInstance>* animatedModels, Lights::DirLight light)
{
	allShaders[GEOMETRYSHADOW]->use();
	GLuint worldMatricesLocation = glGetUniformLocation(allShaders[GEOMETRY]->getProgramID(), "worldMatrices");

	for (int i = 0; i < dynamicModels->size(); i++)
	{
		ModelAsset* modelAsset = dynamicModels->at(i).asset;
		int meshes = modelAsset->getHeader()->numMeshes;
		int numInstance = 0;

		//dynamicModels->at(i).material.bindTextures(allShaders[GEOMETRY]->getProgramID());

		// TEMP: Shouldn't have any models without material
		if (modelAsset->getMaterial())
			modelAsset->getMaterial()->bindTextures(allShaders[GEOMETRY]->getProgramID());
		for (int j = 0; j < dynamicModels->at(i).worldIndices.size(); j++)
		{
			indices[j] = dynamicModels->at(i).worldIndices[j];
			if(allTransforms[indices[j]].active)
				tempMatrices[numInstance++] = worldMatrices[indices[j]];
		}
		glUniformMatrix4fv(worldMatricesLocation, numInstance, GL_FALSE, &tempMatrices[0][0][0]);
		for (int j = 0; j < modelAsset->getHeader()->numMeshes; j++)
		{
			//0 == STATIC 1 == DYNAMIC/ANIMATEDS
			size_t size = modelAsset->getHeader()->TYPE == 0 ? sizeof(Importer::sVertex) : sizeof(Importer::sSkeletonVertex);
			glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
			glEnableVertexAttribArray(0);
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, (GLsizei)size, 0);
			glEnableVertexAttribArray(1);
			glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, (GLsizei)size, (void*)(sizeof(float) * 3));
			glEnableVertexAttribArray(2);
			glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, (GLsizei)size, (void*)(sizeof(float) * 6));
			glEnableVertexAttribArray(3);
			glVertexAttribPointer(3, 3, GL_FLOAT, GL_FALSE, (GLsizei)size, (void*)(sizeof(float) * 8));
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
			glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
			glBindBuffer(GL_ARRAY_BUFFER, 0);
		}
	}
	allShaders[GEOMETRYSHADOW]->unUse();

	currentShader = ANIMSHADOW;
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
			glUniformMatrix4fv(worldMatricesLocation, 1, GL_FALSE, &tempMatrix[0][0]);
			//glUniformMatrix4fv(jointMatrixLocation, MAXJOINTCOUNT, GL_FALSE, &animatedModels->at(i).animations[j]->getShaderMatrices()[0][0][0]);
			glUniformMatrix4fv( jointMatrixLocation, MAXJOINTCOUNT, GL_FALSE, &jointMatrices[i*MAXJOINTCOUNT][0][0] );

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
	//GLuint worldMatricesLocation = glGetUniformLocation(allShaders[GEOMETRY_PICKING]->getProgramID(), "worldMatrices");
	//GLuint colorIdLocation = glGetUniformLocation(allShaders[GEOMETRY_PICKING]->getProgramID(), "instanceColors");
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
		allShaders[GEOMETRY]->setUniform(*tempMatrices, "worldMatrices", numInstance);
		//glUniformMatrix4fv(worldMatricesLocation, numInstance, GL_FALSE, &tempMatrices[0][0][0]);

		allShaders[GEOMETRY]->setUniform(*idColors, "instanceColors", numInstance);
		//glUniform3fv(colorIdLocation, numInstance, &idColors[0][0]);//glm::value_ptr(idColors[0]));

		for (int j = 0; j < modelAsset->getHeader()->numMeshes; j++)
		{
			//0 == STATIC 1 == DYNAMIC/ANIMATEDS
			size_t size = modelAsset->getHeader()->TYPE == 0 ? sizeof(Importer::sVertex) : sizeof(Importer::sSkeletonVertex);
			glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
			glEnableVertexAttribArray(0);
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, (GLsizei)size, 0);
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
			glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
			glBindBuffer(GL_ARRAY_BUFFER, 0);
		}
	}

	delete[]idColors;
	allShaders[GEOMETRY_PICKING]->unUse();
}

void RenderQueue::setWorkQueue( WorkQueue* workQueue )
{
	work = workQueue;
}

void RenderQueue::asyncTransformUpdate( void* args )
{
	AsyncTransformData* data = (AsyncTransformData*)args;
	int last = data->last;

	glm::mat4 ident;
	for( int i=data->first; i<last; i++ )
	{
		//reset the world matrix
		/*tempMatrix = glm::mat4();
		glm::vec3 tempLook = glm::normalize(glm::vec3(data->transforms[i].lookAt.x, 0, data->transforms[i].lookAt.z));
		glm::vec3 axis = glm::cross(tempLook, { 0, 1, 0 });

		//rotate around the axis orthogonal to both the {0,1,0} vector and the lookDir vector. (makes the model roll forwards/backwards)
		rotationZ = glm::rotate(tempMatrix, data->transforms[i].rot.z, axis);
		//rotatea around Y axis, pretty simple. (makes the model look left/right)
		rotationY = glm::rotate(tempMatrix, data->transforms[i].rot.y, { 0, 1, 0 });
		//set the scale of the models
		tempMatrix[0][0] = data->transforms[i].scale.x;
		tempMatrix[1][1] = data->transforms[i].scale.y;
		tempMatrix[2][2] = data->transforms[i].scale.z;

		//rotates a scaled identity matrix
		tempMatrix = rotationZ * rotationY * tempMatrix;

		//sets the translation of objects, final world matrix
		tempMatrix[3][0] = data->transforms[i].pos.x;
		tempMatrix[3][1] = data->transforms[i].pos.y;
		tempMatrix[3][2] = data->transforms[i].pos.z;
		data->worldMatrices[i] = tempMatrix;*/

		glm::vec3 tempLook = glm::normalize(glm::vec3(data->transforms[i].lookAt.x, 0, data->transforms[i].lookAt.z));
		glm::vec3 axis = glm::cross(tempLook, { 0, 1, 0 });

		glm::mat4 tempMatrix = glm::translate( ident, data->transforms[i].pos );
		tempMatrix = glm::scale( tempMatrix, data->transforms[i].scale );
		tempMatrix = glm::rotate( tempMatrix, data->transforms[i].rot.z, axis );
		tempMatrix = glm::rotate( tempMatrix, data->transforms[i].rot.y, { 0, 1, 0 } );

		data->worldMatrices[i] = tempMatrix;
	}
}