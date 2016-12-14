#include "Debug.h"
#include <cmath>
#include <glm/gtc/quaternion.hpp>
#include <glm/gtx/quaternion.hpp>


Debug::Debug()
{
	
//{
//	glGenBuffers(1, &this->VBO);
//	glGenVertexArrays(1, &VAO);
//	update = true;
//	baseLine = createLine(glm::vec3(0, 0, 0), glm::vec3(1.f, 0, 0), .1f);
//	
//	glm::vec3 test = glm::normalize(glm::vec3(1.f, 0, 0));
//	glm::vec3 origLine = glm::normalize(glm::vec3(1.f, 0,0) - glm::vec3(0));
//
//	glm::vec3 start = glm::vec3(0, 2, 0);
//	glm::vec3 end = glm::vec3(-1.f, 2, 0);
//	glm::vec3 standard = glm::vec3(1);
//	glm::vec3 lineBetween = glm::normalize(end - start);
//
//	glm::vec3 cross = glm::cross(glm::vec3(0, 1, 0), lineBetween);
//
//	glm::mat4 rotMat;
//	glm::rotate(rotMat, 45.f, cross);
//
//	//glm::vec3 rotationVec = glm::vec3(1, 0, 0);
//	//glm::vec3 eular(0, 0, glm::pi<float>());
//	//myQuaternion = glm::quat(eular);
//	float amount = glm::dot(lineBetween, origLine);
//	glm::vec3 testCross = glm::cross(lineBetween, origLine);
//	glm::vec3 testCross2 = glm::cross(origLine, lineBetween);
//	glm::mat4 rotationMat = glm::rotate(glm::mat4(), amount * glm::radians(90.f),testCross);
//	//glm::mat4 rotationMat = glm::rotate(20.f, rotationVec);
//	//glm::mat4 scaleMat = glm::scale(lineBetween);
//	glm::mat4 transformMat = glm::translate(start);
//	worldMatrices.push_back(transformMat  *rotationMat); // Draws line from 0,0,0 to 1,0,0 (Start position)
//	
//
	//glm::rotate()
	
}


Debug::~Debug()
{
	for (size_t i = 0; i < objectsToDraw.size(); i++)
	{
		delete objectsToDraw[i];
	}
}


void Debug::drawAll(glm::mat4 &projectionMatrix, glm::mat4 &viewMatrix, ShaderProgram* program)
{
	program->use();
	program->addUniform(projectionMatrix, "projectionMatrix");
	program->addUniform(viewMatrix, "viewMatrix");
	

	for (size_t i = 0; i < objectsToDraw.size(); i++)
	{
		program->addUniform(objectsToDraw[i]->getColor(), "color");
		objectsToDraw[i]->drawAllLines();
	}
	
	//for (size_t i = 0; i < this->worldMatrices.size(); i++)
	//{
	//	//program->addUniform(worldMatrices.at(i), "worldMatrix");
	//	baseLine->draw();
	//}
	program->unUse();

	this->clear();
}

void Debug::drawLine(glm::vec3 start, glm::vec3 dest, glm::vec3 color)
{
	debugLines.push_back(debugLineStruct(start, dest, color));
	//std::vector<staticNonModels*> objectToDrawTemp;
	//
	//objectToDrawTemp.push_back(createLine(start, dest));
	//this->objectsToDraw.push_back(new ObjectsToDraw(objectToDrawTemp, color));
}

void Debug::drawCube(const glm::vec3 minPos, const glm::vec3 maxPos, glm::vec3 color)
{
	//std::vector<staticNonModels*> objectToDrawTemp;
	//glm::vec3 nearBotRight = glm::vec3(maxPos.x, minPos.y, minPos.z);
	//glm::vec3 nearBotLeft = minPos;
	//glm::vec3 nearTopRight = glm::vec3(maxPos.x, maxPos.y, minPos.z);
	//glm::vec3 nearTopLeft = glm::vec3(minPos.x, maxPos.y, minPos.z);

	//glm::vec3 farBotRight = glm::vec3(maxPos.x, minPos.y, maxPos.z);
	//glm::vec3 farBotLeft = glm::vec3(minPos.x, minPos.y, maxPos.z);
	//glm::vec3 farTopRight = maxPos;
	//glm::vec3 farTopLeft = glm::vec3(minPos.x, maxPos.y, maxPos.z);


	////Front face
	//objectToDrawTemp.push_back(createLine(nearBotLeft, nearBotRight));
	//objectToDrawTemp.push_back(createLine(nearBotLeft, nearTopLeft));
	//objectToDrawTemp.push_back(createLine(nearBotRight, nearTopRight));
	//objectToDrawTemp.push_back(createLine(nearTopLeft, nearTopRight));

	////Far Face
	//objectToDrawTemp.push_back(createLine(farBotLeft, farBotRight));
	//objectToDrawTemp.push_back(createLine(farBotLeft, farTopLeft));
	//objectToDrawTemp.push_back(createLine(farBotRight, farTopRight));
	//objectToDrawTemp.push_back(createLine(farTopLeft, farTopRight));

	//objectToDrawTemp.push_back(createLine(farBotLeft, nearBotLeft));
	//objectToDrawTemp.push_back(createLine(farTopLeft, nearTopLeft));
	//objectToDrawTemp.push_back(createLine(farBotRight, nearBotRight));
	//objectToDrawTemp.push_back(createLine(farTopRight, nearTopRight));

	//this->objectsToDraw.push_back(new ObjectsToDraw(objectToDrawTemp, color));

}

void Debug::drawSphere(const glm::vec3 position, const float radius, glm::vec3 color)
{
	/*std::vector<staticNonModels*> objectToDrawTemp;
	const int totalDegree = 360, linesPerSphere = 16;


	int incremention = totalDegree / linesPerSphere;
	float rad = 0;
	glm::vec3 circle1[totalDegree / linesPerSphere];
	glm::vec3 circle2[totalDegree / linesPerSphere];
	glm::vec3 circle3[totalDegree / linesPerSphere];
	for (float i = 0; i < totalDegree; i+= incremention)
	{
		float rad = 2 * glm::pi<float>() * i / totalDegree;
		circle1[(int)i/ incremention] = glm::vec3(glm::cos(rad)*radius, 0, glm::sin(rad)*radius) + position;
		circle2[(int)i / incremention] = glm::vec3(0, glm::cos(rad)*radius, glm::sin(rad)*radius) + position;
		circle3[(int)i / incremention] = glm::vec3(glm::cos(rad)*radius, glm::sin(rad)*radius, 0) + position;
		
		
	}

	for (size_t i = 0; i < totalDegree; i+= incremention)
	{
		objectToDrawTemp.push_back(createLine(circle1[(int)i / incremention],
			circle1[(i+ incremention >=totalDegree? 0 :((int)i / incremention)+1)]));
		objectToDrawTemp.push_back(createLine(circle2[(int)i / incremention],
			circle2[(i + incremention >= totalDegree ? 0 : ((int)i / incremention) + 1)]));
		objectToDrawTemp.push_back(createLine(circle3[(int)i / incremention],
			circle3[(i + incremention >= totalDegree ? 0 : ((int)i / incremention) + 1)]));
	}

	this->objectsToDraw.push_back(new ObjectsToDraw(objectToDrawTemp, color));*/
}

int Debug::getTotalLines()
{
	return this->debugLines.size();
}

std::vector<debugLineStruct> *Debug::getDebugLines() {
	return &this->debugLines;
}

staticNonModels* Debug::createLine(const glm::vec3 &start, const glm::vec3 &end)
{
		GLuint iVBO, VBO;
		int iVBOsize;
		glGenBuffers(1, &VBO);
		glBindBuffer(GL_ARRAY_BUFFER, VBO);
		int nrPoints = 2;
		int pointSize = 3;


		float* lineData = new float[nrPoints*pointSize];


		glm::vec3 data[2] = { start, end };

		for (size_t i = 0; i < nrPoints; i++)
		{
			for (size_t k = 0; k < pointSize; k++)
			{
				lineData[(i * 3) + k] = data[i][k];

			}
		}

		glBufferData(GL_ARRAY_BUFFER, sizeof(float) * pointSize * nrPoints, lineData, GL_STATIC_DRAW);

		int numIndices = 2;
		GLuint* indices = new GLuint[numIndices];
		int indiceIndex = 0;



		indices[0] = 0;
		indices[1] = 1;


		glGenBuffers(1, &iVBO);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, iVBO);
		glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(GLuint)*numIndices, indices, GL_STATIC_DRAW);

		glGetBufferParameteriv(GL_ELEMENT_ARRAY_BUFFER, GL_BUFFER_SIZE, &iVBOsize);

		delete indices;
		delete lineData;

		int* dataSizes = new int[1];
		dataSizes[0] = 3;

		return new staticNonModels(VBO, iVBO, 1, dataSizes, iVBOsize / sizeof(unsigned int), ShaderType::DEBUG_LINE);
}
//This is for drawing cubes instead of lines, dont delete plz :)
//staticNonModels* Debug::createLine(const glm::vec3 &start, const glm::vec3 &end, float thickness)
//{
//	GLuint iVBO, VBO;
//	int iVBOsize;
//	glGenBuffers(1, &VBO);
//	glBindBuffer(GL_ARRAY_BUFFER, VBO);
//	int nrPoints = 8;
//	int pointSize = 3;
//
//	float* lineData = new float[nrPoints*pointSize];
//
//	
//	glm::vec3* data = getQuads(start, end, thickness);
//	//data = getQuads(start, end, thickness);
//
//	//data[0] = end -(glm::normalize(glm::vec3(1,0,1))*(thickness/2));		//Top left
//	//data[1] = start - (glm::normalize(glm::vec3(1, 0, 1))*(thickness / 2));	//Bot left
//	//data[2] = end + (glm::normalize(glm::vec3(1, 0, 1))*(thickness / 2));		//Top Right
//	//data[3] = start + (glm::normalize(glm::vec3(1, 0, 1))*(thickness / 2));	//Bot Right
//
//	//data[0] = glm::vec3(5, 5, -2);
//	//data[1] = glm::vec3(5, 5, -4);
//	//data[2] = glm::vec3(2, 5, -2);
//	//data[3] = glm::vec3(2, 5, -4);
//
//	for (size_t i = 0; i < nrPoints; i++)
//	{
//		for (size_t k = 0; k < pointSize; k++)
//		{
//			lineData[(i * 3) + k] = data[i][k];
//
//		}
//	}
//
//	glBufferData(GL_ARRAY_BUFFER, sizeof(float) * pointSize * nrPoints, lineData, GL_STATIC_DRAW);
//
//	int numIndices =  36;
//	GLuint* indices = new GLuint[numIndices];
//	int indiceIndex = 0;
//
//
//
//	indices[0] = 0;
//	indices[1] = 1;
//	indices[2] = 3;
//	indices[3] = 0;
//	indices[4] = 3;
//	indices[5] = 2;
//
//	indices[6] = 0+4;
//	indices[7] = 1+4;
//	indices[8] = 3+4;
//	indices[9] = 0+4;
//	indices[10] = 3+4;
//	indices[11] = 2+4;
//
//	indices[12] = 0;
//	indices[13] = 1;
//	indices[14] = 5;
//	indices[15] = 0;
//	indices[16] = 5;
//	indices[17] = 4;
//
//	indices[18] = 0+2;
//	indices[19] = 1+2;
//	indices[20] = 5+2;
//	indices[21] = 0+2;
//	indices[22] = 5+2;
//	indices[23] = 4+2;
//
//	indices[24] = 0;
//	indices[25] = 4;
//	indices[26] = 6;
//	indices[27] = 0;
//	indices[28] = 6;
//	indices[29] = 2;
//
//	indices[30] = 0+1;
//	indices[31] = 4+1;
//	indices[32] = 6+1;
//	indices[33] = 0+1;
//	indices[34] = 6+1;
//	indices[35] = 2+1;
//
//
//	glGenBuffers(1, &iVBO);
//	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, iVBO);
//	glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(GLuint)*numIndices, indices, GL_STATIC_DRAW);
//
//	glGetBufferParameteriv(GL_ELEMENT_ARRAY_BUFFER, GL_BUFFER_SIZE, &iVBOsize);
//
//	delete indices;
//	delete lineData;
//
//	int* dataSizes = new int[1];
//	dataSizes[0] = 3;
//
//	return new staticNonModels(VBO, iVBO, 1, dataSizes, iVBOsize / sizeof(unsigned int), ShaderType::DEBUG);
//}

glm::vec3* Debug::getQuads(glm::vec3 start, glm::vec3 end, float size)
{
	glm::vec3 returnVec[8];
	glm::vec3 dirVec = glm::normalize(end - start);
	glm::vec3 right;
	if(dirVec == glm::vec3(0,1,0))
		right = glm::normalize(glm::cross(dirVec, glm::vec3(0, 1, .01f)));
	else
		right = glm::normalize(glm::cross(dirVec, glm::vec3(0, 1, 0)));

	glm::vec3 up = glm::normalize(glm::cross(dirVec, right));
	
	returnVec[0] = start - (right*(size / 2)) + (up*(size / 2));
	returnVec[1] = start + (right*(size / 2)) + (up*(size / 2));
	returnVec[2] = start - (right*(size / 2)) - (up*(size / 2));
	returnVec[3] = start + (right*(size / 2)) - (up*(size / 2));

	returnVec[4] = end - (right*(size / 2)) + (up*(size / 2));
	returnVec[5] = end + (right*(size / 2)) + (up*(size / 2));
	returnVec[6] = end - (right*(size / 2)) - (up*(size / 2));
	returnVec[7] = end + (right*(size / 2)) - (up*(size / 2));
	return returnVec;
}

void Debug::clear()
{
	for (size_t i = 0; i < objectsToDraw.size(); i++)
	{
		delete objectsToDraw[i];
	}
	this->objectsToDraw.clear();
}