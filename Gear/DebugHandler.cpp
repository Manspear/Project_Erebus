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
		if(debuggers[i])
			delete debuggers[i];
	}
}

void DebugHandler::addDebuger(Debug* bugref)
{
	bool unique = true;
	for (size_t i = 0; i < debuggers.size(); i++)
	{
		if (debuggers[i] == bugref)
			unique = false;
	}

	if(unique)
		this->debuggers.push_back(bugref);
}

void DebugHandler::update(Camera* camera, RenderQueue* renderQueRef)
{
	ShaderProgram* tempProgram;
	int totalLines = 0,
		totalSphere = 0,
		totalAABB = 0,
		totalOBB = 0;
	for (size_t i = 0; i < debuggers.size(); i++)
	{
		totalLines += debuggers.at(i)->getTotalLines();
		totalSphere += debuggers.at(i)->getTotalSpheres();
		totalAABB += debuggers.at(i)->getTotalAABBs();
		totalOBB += debuggers.at(i)->getTotalOBBs();
	}

	if(totalLines>0)
		drawAllLines(camera, renderQueRef);
	if (totalSphere>0)
		drawAllSpheres(camera, renderQueRef);
	if (totalAABB>0)
		drawAllAABBs(camera, renderQueRef);
	if (totalOBB > 0)
		drawAllOBBs(camera, renderQueRef);

	for (size_t i = 0; i < debuggers.size(); i++)
	{
		debuggers.at(i)->clear();
	}
}

void DebugHandler::drawAllOBBs(Camera* camera, RenderQueue* renderQueRef)
{
	ShaderProgram* tempProgram = renderQueRef->getShaderProgram(DEBUG_OBB);
	tempProgram->use();
	tempProgram->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	tempProgram->addUniform(camera->getViewMatrix(), "viewMatrix");
	int obbInstances = totalToIntance / 4;
	GLuint positionLocation = glGetUniformLocation(tempProgram->getProgramID(), "pos");
	GLuint xAxisLocation = glGetUniformLocation(tempProgram->getProgramID(), "xAxis");
	GLuint yAxisLocation = glGetUniformLocation(tempProgram->getProgramID(), "yAxis");
	GLuint zAxisLocation = glGetUniformLocation(tempProgram->getProgramID(), "zAxis");
	GLuint halfLengthsLocation = glGetUniformLocation(tempProgram->getProgramID(), "halfLengths");
	GLuint colorIdLocation = glGetUniformLocation(tempProgram->getProgramID(), "colors");
	glm::vec3* pos = new glm::vec3[obbInstances];
	glm::vec3* xAxis = new glm::vec3[obbInstances];
	glm::vec3* yAxis = new glm::vec3[obbInstances];
	glm::vec3* zAxis = new glm::vec3[obbInstances];
	glm::vec3* halfLengths = new glm::vec3[obbInstances];
	glm::vec3* colors = new glm::vec3[obbInstances];


	int numInstance = 0;
	for (size_t i = 0; i < debuggers.size(); i++)
	{
		debugOBBStruct* debugRefVec = debuggers.at(i)->getDebugOBBs();
		for (size_t k = 0; k < debuggers.at(i)->getTotalOBBs(); k++)
		{
			debugOBBStruct*temp = &debugRefVec[k];
			pos[numInstance] = temp->pos;
			xAxis[numInstance] = temp->xAxis;
			yAxis[numInstance] = temp->yAxis;
			zAxis[numInstance] = temp->zAxis;
			halfLengths[numInstance] = temp->halfLengths;
			colors[numInstance] = temp->color;
			numInstance++;

			if (numInstance == obbInstances)
			{
				glUniform3fv(positionLocation, numInstance, &pos[0][0]);
				glUniform3fv(xAxisLocation, numInstance, &xAxis[0][0]);
				glUniform3fv(yAxisLocation, numInstance, &yAxis[0][0]);
				glUniform3fv(zAxisLocation, numInstance, &zAxis[0][0]);
				glUniform3fv(halfLengthsLocation, numInstance, &halfLengths[0][0]);
				glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);

				draw(numInstance);
			}
		}
	}

	if (numInstance > 0) {
		glUniform3fv(positionLocation, numInstance, &pos[0][0]);
		glUniform3fv(xAxisLocation, numInstance, &xAxis[0][0]);
		glUniform3fv(yAxisLocation, numInstance, &yAxis[0][0]);
		glUniform3fv(zAxisLocation, numInstance, &zAxis[0][0]);
		glUniform3fv(halfLengthsLocation, numInstance, &halfLengths[0][0]);
		glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);

		draw(numInstance);
	}

	delete[]pos;
	delete[]xAxis;
	delete[]yAxis;
	delete[]zAxis;
	delete[]halfLengths;
	delete[]colors;
	tempProgram->unUse();
}

void DebugHandler::drawAllSpheres(Camera* camera, RenderQueue* renderQueRef)
{
	ShaderProgram* tempProgram = renderQueRef->getShaderProgram(DEBUG_SPHERE);
	tempProgram->use();
	tempProgram->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	tempProgram->addUniform(camera->getViewMatrix(), "viewMatrix");

	GLuint positionLocation = glGetUniformLocation(tempProgram->getProgramID(), "pos1");
	GLuint radiusLocation = glGetUniformLocation(tempProgram->getProgramID(), "rad");
	GLuint colorIdLocation = glGetUniformLocation(tempProgram->getProgramID(), "colors");
	glm::vec3* start = new glm::vec3[totalToIntance];
	float* radius = new float[totalToIntance];
	glm::vec3* colors = new glm::vec3[totalToIntance];


	int numInstance = 0;
	for (size_t i = 0; i < debuggers.size(); i++)
	{
		debugSphereStruct* lineRefVec = debuggers.at(i)->getDebugSpheres();
		for (size_t k = 0; k < debuggers.at(i)->getTotalSpheres(); k++)
		{
			debugSphereStruct*temp = &lineRefVec[k];
			start[numInstance] = temp->start;
			radius[numInstance] = temp->radius;
			colors[numInstance] = temp->color;
			numInstance++;

			if (numInstance == totalToIntance)
			{
				glUniform3fv(positionLocation, numInstance, &start[0][0]);
				glUniform1fv(radiusLocation, numInstance, &radius[0]);
				glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);

				draw(numInstance);
			}
		}
	}

	if (numInstance > 0) 
	{
		glUniform3fv(positionLocation, numInstance, &start[0][0]);
		glUniform1fv(radiusLocation, numInstance, &radius[0]);
		glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);

		draw(numInstance);
	}

	delete[]start;
	delete[]radius;
	delete[]colors;
	tempProgram->unUse();
}

void DebugHandler::drawAllAABBs(Camera * camera, RenderQueue * renderQueRef)
{
	ShaderProgram* tempProgram = renderQueRef->getShaderProgram(DEBUG_AABB);
	tempProgram->use();
	tempProgram->addUniform(camera->getProjectionMatrix(), "projectionMatrix");
	tempProgram->addUniform(camera->getViewMatrix(), "viewMatrix");

	GLuint minLocation = glGetUniformLocation(tempProgram->getProgramID(), "minPos");
	GLuint maxLocation = glGetUniformLocation(tempProgram->getProgramID(), "maxPos");
	GLuint colorIdLocation = glGetUniformLocation(tempProgram->getProgramID(), "colors");
	glm::vec3* min = new glm::vec3[totalToIntance];
	glm::vec3* max = new glm::vec3[totalToIntance];
	glm::vec3* colors = new glm::vec3[totalToIntance];

	int numInstance = 0;
	for (size_t i = 0; i < debuggers.size(); i++)
	{
		debugAABBStruct* aabbRefVec = debuggers.at(i)->getDebugAABBs();
		for (size_t k = 0; k < debuggers.at(i)->getTotalAABBs(); k++)
		{
			debugAABBStruct*temp = &aabbRefVec[k];
			min[numInstance] = temp->minPos;
			max[numInstance] = temp->maxPos;
			colors[numInstance] = temp->color;
			numInstance++;

			if (numInstance == totalToIntance) 
			{
				glUniform3fv(minLocation, numInstance, &min[0][0]);
				glUniform3fv(maxLocation, numInstance, &max[0][0]);
				glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);

				draw(numInstance);
			}
		}
	}

	if (numInstance > 0)
	{
		glUniform3fv(minLocation, numInstance, &min[0][0]);
		glUniform3fv(maxLocation, numInstance, &max[0][0]);
		glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);

		draw(numInstance);
	}

	delete[]min;
	delete[]max;
	delete[]colors;
	tempProgram->unUse();
}

void DebugHandler::drawAllLines(Camera* camera, RenderQueue* renderQueRef) 
{
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

	int numInstance = 0;
	for (size_t i = 0; i < debuggers.size(); i++)
	{
		debugLineStruct* lineRefVec = debuggers.at(i)->getDebugLines();
		for (size_t k = 0; k < debuggers.at(i)->getTotalLines(); k++)
		{
			debugLineStruct*temp = &lineRefVec[k];
			start[numInstance] = temp->start;
			end[numInstance] = temp->end;
			colors[numInstance] = temp->color;
			numInstance++;

			if (numInstance == totalToIntance) 
			{
				glUniform3fv(startLocation, numInstance, &start[0][0]);
				glUniform3fv(endLocation, numInstance, &end[0][0]);
				glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);

				draw(numInstance);
			}
		}
	}

	if (numInstance > 0)
	{
		glUniform3fv(startLocation, numInstance, &start[0][0]);
		glUniform3fv(endLocation, numInstance, &end[0][0]);
		glUniform3fv(colorIdLocation, numInstance, &colors[0][0]);

		draw(numInstance);
	}

	delete[]start;
	delete[]end;
	delete[]colors;
	tempProgram->unUse();
}

void DebugHandler::draw(int &numInstances)
{
	glBindBuffer(GL_ARRAY_BUFFER, tempBuffer);
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, 0);
	glDrawArraysInstanced(GL_POINTS, 0, 1, numInstances);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	numInstances = 0;
}