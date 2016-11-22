#include "Model.h"
using namespace Importer;

namespace Gear
{
	Model::Model()
		: modelAsset( nullptr )
	{
	}

	Model::~Model()
	{
	}

	void Model::draw()
	{
		//GLuint worldMatrixLocation = glGetUniformLocation( shader->getProgramID(), "worldMatrix" );
		//glUniformMatrix4fv( worldMatrixLocation, 1, GL_FALSE, &worldMatrix[0][0] );

		//int meshes = modelAsset->getHeader()->meshCount;
		//for( int curMesh = 0; curMesh < meshes; curMesh++ )
		//{
		//	glBindBuffer( GL_ARRAY_BUFFER, modelAsset->getVertexBuffer(curMesh) );
		//	glVertexAttribPointer( 0, 3, GL_FLOAT, GL_FALSE, sizeof( sSkeletonVertex ), 0 );
		//	glVertexAttribPointer( 1, 3, GL_FLOAT, GL_FALSE, sizeof( sSkeletonVertex ), (void*)(sizeof( float ) * 3) );
		//	glDrawArrays( GL_TRIANGLES, 0, modelAsset->getBufferSize(curMesh) );
		//	glBindBuffer( GL_ARRAY_BUFFER, 0 );
		//}
	}

	void Model::setModelAsset( ModelAsset* asset )
	{
		modelAsset = asset;
	}

	ModelAsset* Model::getModelAsset() const
	{
		return modelAsset;
	}
};