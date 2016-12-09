#pragma once
#include "BaseIncludes.h"
#include "ShaderProgram.h"
#include "TextureAsset.h"
class staticNonModels {
	GLuint VBO, iVBO;
	int nrDiffValues;
	int* dataSizes;
	int dataStride;
	int iVBOsize;
	ShaderType shader;
	ShaderProgram* programRef;
	glm::mat4* worldMatRef;
public:
	/*
	VBO = Vertex Buffer Object
	iVBO = index Vertex Buffer Object
	nrDiffValues = Diffrent in values ex: (1=Positions, 2= Positions, UV)
	dataSizes = Array with sizes of the nrDiffValues, ex: (for position an normal:
	[0]=3, [1] = 2
	//iVBOsize = index Buffer Size / data type
	//What shader u want to draw this model in
	*/
	GEAR_API staticNonModels(GLuint VBO, GLuint iVBO,
		int nrDiffValues, int* dataSizes,
		int iVBOsize, ShaderType shader,
		glm::mat4 *worldMat) {
		this->VBO = VBO;
		this->iVBO = iVBO;
		this->nrDiffValues = nrDiffValues;
		this->dataSizes = dataSizes;
		this->iVBOsize = iVBOsize;
		this->shader = shader;
		this->worldMatRef = worldMat;
		this->dataStride = 0;
		for (size_t i = 0; i < nrDiffValues; i++)
		{
			this->dataStride += dataSizes[i];
		}
	}

	GEAR_API staticNonModels(GLuint VBO, GLuint iVBO,
		int nrDiffValues, int* dataSizes,
		int iVBOsize, ShaderType shader) {
		this->VBO = VBO;
		this->iVBO = iVBO;
		this->nrDiffValues = nrDiffValues;
		this->dataSizes = dataSizes;
		this->iVBOsize = iVBOsize;
		this->shader = shader;
		this->dataStride = 0;
		for (size_t i = 0; i < nrDiffValues; i++)
		{
			this->dataStride += dataSizes[i];
		}
	}

	GEAR_API ~staticNonModels() {
		delete dataSizes;
		glDeleteBuffers(1, &VBO);
		glDeleteBuffers(1, &iVBO);
	}

	GEAR_API ShaderType getShaderType() {
		return this->shader;
	}

	GEAR_API glm::mat4 getWorldMat() {
		return *this->worldMatRef;
	}

	GEAR_API void addShaderProgramRef(ShaderProgram* refProg) {
		this->programRef = refProg;
	}

	GEAR_API ShaderProgram* getShaderProgram() {
		return this->programRef;
	}

	GEAR_API void drawAsLines() {
		//programRef->use();
		glBindBuffer(GL_ARRAY_BUFFER, VBO);
		for (size_t i = 0; i < nrDiffValues; i++)
		{
			glEnableVertexAttribArray(i);
			int dataSize = dataSizes[i];
			int offset = ((i > 0) ? dataSizes[i - 1] : 0);
			glVertexAttribPointer(i, dataSize, GL_FLOAT, GL_FALSE, sizeof(float) * dataStride, (void*)(sizeof(float) *offset));
		}
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, iVBO);
		glDrawElements(GL_LINES, iVBOsize, GL_UNSIGNED_INT, 0);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
		//programRef->unUse();
		//glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 5, 0);
		//glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, sizeof(float) * 5, (void*)(sizeof(float) * 3));
		//glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, iVBO);
		//glDrawElements(GL_TRIANGLES, iVBOsize / sizeof(unsigned int), GL_UNSIGNED_INT, 0);

		//glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	}

	GEAR_API void draw() {
		//programRef->use();
		glBindBuffer(GL_ARRAY_BUFFER, VBO);
		for (size_t i = 0; i < nrDiffValues; i++)
		{
			glEnableVertexAttribArray(i);
			int dataSize = dataSizes[i];
			int offset = ((i > 0) ? dataSizes[i - 1] : 0);
			glVertexAttribPointer(i, dataSize, GL_FLOAT, GL_FALSE, sizeof(float) * dataStride, (void*)(sizeof(float) *offset));
		}
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, iVBO);
		glDrawElements(GL_TRIANGLES, iVBOsize, GL_UNSIGNED_INT, 0);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
		//programRef->unUse();
		//glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 5, 0);
		//glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, sizeof(float) * 5, (void*)(sizeof(float) * 3));
		//glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, iVBO);
		//glDrawElements(GL_TRIANGLES, iVBOsize / sizeof(unsigned int), GL_UNSIGNED_INT, 0);

		//glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	}

};