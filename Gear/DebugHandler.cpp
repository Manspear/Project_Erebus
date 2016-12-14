#include "DebugHandler.h"



DebugHandler::DebugHandler()
{
}


DebugHandler::~DebugHandler()
{
	for (size_t i = 0; i < debuggers.size(); i++)
	{
		delete debuggers[i];
	}
}

void DebugHandler::addDebuger(Debug* bugref) {
	this->debuggers.push_back(bugref);
}

void DebugHandler::update(Camera* camera, RenderQueue* renderQueRef) {
	ShaderProgram* tempProgram;
	int totalLines=0,
		totalSphere=0,
		totalAABB=0;
	tempProgram = renderQueRef->getShaderProgram(ShaderType::DEBUG_LINE);
	for (size_t i = 0; i < debuggers.size(); i++)
	{
		totalLines += debuggers.at(i)->getTotalLines();
		//debuggers.at(i)->drawAll(camera->getProjectionMatrix(), camera->getViewMatrix(), tempProgram);
	}

	if(totalLines>0)
		drawAllLines(camera, renderQueRef, totalLines);
	//if (totalSphere>0)
	//	drawAllLines(camera, renderQueRef, totalLines);
	//if (totalAABB>0)
	//	drawAllLines(camera, renderQueRef, totalLines);
}

void DebugHandler::drawAllLines(Camera* camera, RenderQueue* renderQueRef, const int &totalLines) {
	ShaderProgram* tempProgram = renderQueRef->getShaderProgram(DEBUG_LINE);
	tempProgram->use();
	tempProgram->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	tempProgram->addUniform(camera->getViewMatrix(), "viewMatrix");
	
	GLuint startLocation = glGetUniformLocation(tempProgram->getProgramID(), "pos1");
	GLuint endLocation = glGetUniformLocation(tempProgram->getProgramID(), "pos2");
	GLuint colorIdLocation = glGetUniformLocation(tempProgram->getProgramID(), "colors");
	glm::vec3* start = new glm::vec3[totalLines];
	glm::vec3* end = new glm::vec3[totalLines];
	glm::vec3* colors = new glm::vec3[totalLines];
	int numInstance = 0;
	for (size_t i = 0; i < debuggers.size(); i++){
		std::vector<debugLineStruct>* lineRefVec = debuggers.at(i)->getDebugLines();
		for (size_t k = 0; k < lineRefVec->size(); k++)
		{
			start[numInstance] = lineRefVec->at(k).start;
			end[numInstance] = lineRefVec->at(k).end;
			colors[numInstance] = lineRefVec->at(k).color;
			numInstance++;
		}
	}

	glUniform3fv(startLocation, numInstance, &start[0][0]);//glm::value_ptr(idColors[0]));
	glUniform3fv(endLocation, numInstance, &end[0][0]);//glm::value_ptr(idColors[0]));
	glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);//glm::value_ptr(idColors[0]));

	//glDrawElementsInstanced(GL_POINTS, 0, GL_UNSIGNED_INT, 0, numInstance);
	//glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
	//glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
	//glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	delete[]start;
	delete[]end;
	delete[]colors;
	tempProgram->unUse();
	//{
	//	ModelAsset* modelAsset = dynamicModels->at(i).asset;
	//	int meshes = modelAsset->getHeader()->numMeshes;
	//	int numInstance = 0;

	//	dynamicModels->at(i).material.bindTextures(tempProgram->getProgramID());

	//	for (int j = 0; j < dynamicModels->at(i).worldIndices.size(); j++)
	//	{
	//		int index = dynamicModels->at(i).worldIndices[j];
	//		tempMatrices[numInstance++] = worldMatrices[index];
	//		int r = 255;// (j & 0x000000FF) >> 0;
	//		int g = 0;// (j & 0x0000FF00) >> 8;
	//		int b = 0;// (j & 0x00FF0000) >> 16;
	//		idColors[numInstance - 1] = glm::vec3((float)r / 255.f, (float)g / 255.f, (float)b / 255.f);
	//	}

	//	glUniformMatrix4fv(worldMatricesLocation, numInstance, GL_FALSE, &tempMatrices[0][0][0]);

	//	glUniform3fv(colorIdLocation, numInstance, &idColors[0][0]);//glm::value_ptr(idColors[0]));

	//	for (int j = 0; j < modelAsset->getHeader()->numMeshes; j++)
	//	{
	//		//0 == STATIC 1 == DYNAMIC/ANIMATEDS
	//		size_t size = modelAsset->getHeader()->TYPE == 0 ? sizeof(Importer::sVertex) : sizeof(Importer::sSkeletonVertex);
	//		glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
	//		glEnableVertexAttribArray(0);
	//		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, size, 0);
	//		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
	//		glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
	//		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	//		glBindBuffer(GL_ARRAY_BUFFER, 0);
	//	}
	//}

	//delete[]idColors;
	//allShaders[GEOMETRY_PICKING]->unUse();
}