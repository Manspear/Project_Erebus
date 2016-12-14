#include "DebugHandler.h"



DebugHandler::DebugHandler()
{
	glGenBuffers(1, &tempBuffer);
	glBindBuffer(GL_ARRAY_BUFFER, tempBuffer);
	GLfloat data[] = { 0, 0, 0 };
	glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat) * 3, data, GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
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
	for (size_t i = 0; i < debuggers.size(); i++)
	{
		totalLines += debuggers.at(i)->getTotalLines();
		totalSphere += debuggers.at(i)->getTotalSpheres();
		//debuggers.at(i)->drawAll(camera->getProjectionMatrix(), camera->getViewMatrix(), tempProgram);
	}

	if(totalLines>0)
		drawAllLines(camera, renderQueRef);
	if (totalSphere>0)
		drawAllSpheres(camera, renderQueRef);
	//if (totalAABB>0)
	//	drawAllLines(camera, renderQueRef, totalLines);

	for (size_t i = 0; i < debuggers.size(); i++)
	{
		debuggers.at(i)->clear();
		//debuggers.at(i)->drawAll(camera->getProjectionMatrix(), camera->getViewMatrix(), tempProgram);
	}
}

void DebugHandler::drawAllSpheres(Camera* camera, RenderQueue* renderQueRef) {
	ShaderProgram* tempProgram = renderQueRef->getShaderProgram(DEBUG_SPHERE);
	tempProgram->use();
	tempProgram->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	tempProgram->addUniform(camera->getViewMatrix(), "viewMatrix");

	GLuint startLocation = glGetUniformLocation(tempProgram->getProgramID(), "pos1");
	GLuint endLocation = glGetUniformLocation(tempProgram->getProgramID(), "rad");
	GLuint colorIdLocation = glGetUniformLocation(tempProgram->getProgramID(), "colors");
	glm::vec3* start = new glm::vec3[totalToIntance];
	float* radius = new float[totalToIntance];
	glm::vec3* colors = new glm::vec3[totalToIntance];

	size_t i = 0;
	size_t k = 0;

	int numInstance = 0;
	for (i; i < debuggers.size(); i++) {
		debugSphereStruct* lineRefVec = debuggers.at(i)->getDebugSpheres();
		for (k; k < debuggers.at(i)->getTotalSpheres(); k++)
		{
			debugSphereStruct*temp = &lineRefVec[k];
			start[numInstance] = temp->start;
			radius[numInstance] = temp->radius;
			colors[numInstance] = temp->color;
			numInstance++;

			if (numInstance == totalToIntance) {
				glUniform3fv(startLocation, numInstance, &start[0][0]);//glm::value_ptr(idColors[0]));
				glUniform1fv(endLocation, numInstance, &radius[0]);//glm::value_ptr(idColors[0]));
				glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);//glm::value_ptr(idColors[0]));

				glBindBuffer(GL_ARRAY_BUFFER, tempBuffer);
				glEnableVertexAttribArray(0);
				glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, 0);
				glDrawArraysInstanced(GL_POINTS, 0, 1, numInstance);
				glBindBuffer(GL_ARRAY_BUFFER, 0);
				numInstance = 0;
			}
		}
	}

	if (numInstance > 0) {
		glUniform3fv(startLocation, numInstance, &start[0][0]);//glm::value_ptr(idColors[0]));
		glUniform1fv(endLocation, numInstance, &radius[0]);//glm::value_ptr(idColors[0]));
		glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);//glm::value_ptr(idColors[0]));

		glBindBuffer(GL_ARRAY_BUFFER, tempBuffer);
		glEnableVertexAttribArray(0);
		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, 0);
		glDrawArraysInstanced(GL_POINTS, 0, 1, numInstance);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
		numInstance = 0;
	}






	//		//0 == STATIC 1 == DYNAMIC/ANIMATEDS
	//		size_t size = modelAsset->getHeader()->TYPE == 0 ? sizeof(Importer::sVertex) : sizeof(Importer::sSkeletonVertex);
	//		glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
	//		glEnableVertexAttribArray(0);
	//		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, size, 0);
	//		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
	//		glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
	//		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	//		glBindBuffer(GL_ARRAY_BUFFER, 0);

	delete[]start;
	delete[]radius;
	delete[]colors;
	tempProgram->unUse();
}

void DebugHandler::drawAllLines(Camera* camera, RenderQueue* renderQueRef) {
	ShaderProgram* tempProgram = renderQueRef->getShaderProgram(DEBUG_LINE);
	tempProgram->use();
	tempProgram->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	tempProgram->addUniform(camera->getViewMatrix(), "viewMatrix");

	GLuint startLocation = glGetUniformLocation(tempProgram->getProgramID(), "pos1");
	GLuint endLocation = glGetUniformLocation(tempProgram->getProgramID(), "pos2");
	GLuint colorIdLocation = glGetUniformLocation(tempProgram->getProgramID(), "colors");
	glm::vec3* start = new glm::vec3[totalToIntance];
	glm::vec3* end = new glm::vec3[totalToIntance];
	glm::vec3* colors = new glm::vec3[totalToIntance];

	size_t i = 0;
	size_t k = 0;

	int numInstance = 0;
	for (i; i < debuggers.size(); i++) {
		debugLineStruct* lineRefVec = debuggers.at(i)->getDebugLines();
		for (k; k < debuggers.at(i)->getTotalLines(); k++)
		{
			debugLineStruct*temp = &lineRefVec[k];
			start[numInstance] = temp->start;
			end[numInstance] = temp->end;
			colors[numInstance] = temp->color;
			numInstance++;

			if (numInstance == totalToIntance) {
				glUniform3fv(startLocation, numInstance, &start[0][0]);//glm::value_ptr(idColors[0]));
				glUniform3fv(endLocation, numInstance, &end[0][0]);//glm::value_ptr(idColors[0]));
				glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);//glm::value_ptr(idColors[0]));

				glBindBuffer(GL_ARRAY_BUFFER, tempBuffer);
				glEnableVertexAttribArray(0);
				glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, 0);
				glDrawArraysInstanced(GL_POINTS, 0, 1, numInstance);
				glBindBuffer(GL_ARRAY_BUFFER, 0);
				numInstance = 0;
			}
		}
	}

	if (numInstance > 0) {
		glUniform3fv(startLocation, numInstance, &start[0][0]);//glm::value_ptr(idColors[0]));
		glUniform3fv(endLocation, numInstance, &end[0][0]);//glm::value_ptr(idColors[0]));
		glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);//glm::value_ptr(idColors[0]));

		glBindBuffer(GL_ARRAY_BUFFER, tempBuffer);
		glEnableVertexAttribArray(0);
		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, 0);
		glDrawArraysInstanced(GL_POINTS, 0, 1, numInstance);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
		numInstance = 0;
	}





	//		//0 == STATIC 1 == DYNAMIC/ANIMATEDS
	//		size_t size = modelAsset->getHeader()->TYPE == 0 ? sizeof(Importer::sVertex) : sizeof(Importer::sSkeletonVertex);
	//		glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(j));
	//		glEnableVertexAttribArray(0);
	//		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, size, 0);
	//		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(j));
	//		glDrawElementsInstanced(GL_TRIANGLES, modelAsset->getBufferSize(j), GL_UNSIGNED_INT, 0, numInstance);
	//		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	//		glBindBuffer(GL_ARRAY_BUFFER, 0);

	delete[]start;
	delete[]end;
	delete[]colors;
	tempProgram->unUse();
}