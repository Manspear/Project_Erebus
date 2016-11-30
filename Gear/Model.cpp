#include "Model.h"
using namespace Importer;


Model::Model()
	: modelAsset( nullptr )
{
}

Model::~Model()
{
}

void Model::draw(const GLuint &shaderProgramId)
{
	GLuint worldMatrixLocation = glGetUniformLocation(shaderProgramId, "worldMatrix");
	glUniformMatrix4fv(worldMatrixLocation, 1, GL_FALSE, &worldMatrix[0][0]);

	int meshes = modelAsset->getHeader()->numMeshes;
		for (int curMesh = 0; curMesh < meshes; curMesh++)
	{
			glBindBuffer(GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(curMesh));
			glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(sVertex), 0);
			glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(sVertex), (void*)(sizeof(float) * 3));
			glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, sizeof(sVertex), (void*)(sizeof(float) * 6));
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, modelAsset->getIndexBuffer(curMesh));
		glDrawElements(GL_TRIANGLES, modelAsset->getBufferSize(curMesh), GL_UNSIGNED_INT, 0);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
	}
		
}

void Model::setModelAsset( ModelAsset* asset )
{
	modelAsset = asset;
}

void Model::setModelAsset(ModelAsset* asset, int n)
{
	modelAsset = asset;
	matrixIndices.push_back(n);
}

ModelAsset* Model::getModelAsset() const
{
	return modelAsset;
}
