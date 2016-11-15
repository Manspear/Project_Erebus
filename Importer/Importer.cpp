#include "Importer.h"

namespace Importer
{
	ModelImporter::ModelImporter()
		: dataptr( nullptr )
	{
		header.meshCount = header.materialCount = 0;
	}

	ModelImporter::~ModelImporter()
	{
		unload();
	}

	void ModelImporter::load( const char* path )
	{
		FILE *file = NULL;
		fopen_s( &file, path, "rb" );
		if( file )
		{
			sDataHeader dataHeader;
			fread( &dataHeader, sizeof( sDataHeader ), 1, file );

			dataptr = malloc( dataHeader.datasize + sizeof( GLuint )*dataHeader.meshes * 3 );
			void* bufferptr = malloc( dataHeader.buffersize );
			fread( dataptr, 1, dataHeader.datasize, file );
			fread( bufferptr, 1, dataHeader.buffersize, file );

			fclose( file );

			char *ptr = (char*)dataptr;
			header = *(sHeader*)ptr;
			ptr += sizeof( sHeader );

			offsets = (sOffset*)ptr;
			ptr += sizeof( sOffset )*dataHeader.meshes;

			meshes = (sMesh*)ptr;
			ptr += sizeof( sMesh )*dataHeader.meshes;

			materials = (sMaterial*)ptr;
			ptr += sizeof( sMaterial )*dataHeader.materials;

			joints = (sJoint*)ptr;
			ptr += sizeof( sJoint )*dataHeader.joints;

			keyCount = (int*)ptr;
			ptr += sizeof( int )*dataHeader.keycounts;

			keyFrames = (sKeyFrame*)ptr;
			ptr += sizeof( sKeyFrame )*dataHeader.keyframes;

			vertexBuffers = (GLuint*)ptr;
			ptr += sizeof( GLuint )*dataHeader.meshes;

			indexBuffers = (GLuint*)ptr;
			ptr += sizeof( GLuint )*dataHeader.meshes;

			bufferSizes = (int*)ptr;
			ptr += sizeof( GLuint )*dataHeader.meshes;

			ptr = (char*)bufferptr;
			sVertex* vertices = (sVertex*)ptr;
			ptr += sizeof( sVertex )*dataHeader.vertices;

			sSkeletonVertex* skeletonVertices = (sSkeletonVertex*)ptr;
			ptr += sizeof( sSkeletonVertex )*dataHeader.skeletonVertices;

			for( int curMesh = 0; curMesh < header.meshCount; curMesh++ )
			{
				glGenBuffers( 1, &vertexBuffers[curMesh] );
				glBindBuffer( GL_ARRAY_BUFFER, vertexBuffers[curMesh] );
				if( meshes[curMesh].vertexCount > 0 )
				{
					glBufferData( GL_ARRAY_BUFFER, sizeof( sVertex )*meshes[curMesh].vertexCount, vertices + offsets[curMesh].vertex, GL_STATIC_DRAW );
					bufferSizes[curMesh] = meshes[curMesh].vertexCount;
				}
				else
				{
					glBufferData( GL_ARRAY_BUFFER, sizeof( sSkeletonVertex )*meshes[curMesh].skeletonVertexCount, skeletonVertices + offsets[curMesh].skeletonVertex, GL_STATIC_DRAW );
					bufferSizes[curMesh] = meshes[curMesh].skeletonVertexCount;
				}
				glBindBuffer( GL_ARRAY_BUFFER, 0 );


				/*glGenBuffers( 1, &indexBuffer );
				glBindBuffer( GL_ARRAY_BUFFER, indexBuffer );
				glBufferData( GL_ARRAY_BUFFER, sizeof( GLuint )*meshes[0].indexCount, bufferptr, GL_STATIC_DRAW );
				glBindBuffer( GL_ARRAY_BUFFER, 0 );
				bufferptr += sizeof( GLuint )*meshes[0].indexCount;*/
			}

			free( bufferptr );
		}
	}

	void ModelImporter::unload()
	{
		free( dataptr );
	}

	sHeader* ModelImporter::getHeader()
	{
		return &header;
	}

	sMesh* ModelImporter::getMesh( int index ) const
	{
		return meshes + sizeof( sMesh )*index;
	}

	sMaterial* ModelImporter::getMaterial( int index ) const
	{
		return materials + sizeof( sMaterial )*index;
	}

	sJoint* ModelImporter::getJoints( int mesh ) const
	{
		return joints + sizeof( sJoint )*offsets[mesh].joint;
	}

	int ModelImporter::getFrameCount( int mesh, int joint, int animationState ) const
	{
		int jointOffset = offsets[mesh].joint;
		int stateOffset = sizeof( int )*animationState;
		return *(keyCount + sizeof( int )*(jointOffset + stateOffset));
	}

	sKeyFrame* ModelImporter::getKeyFrames( int mesh, int joint, int animationState ) const
	{
		int jointOffset = offsets[mesh].joint;
		int stateOffset = sizeof( int )*animationState;
		return keyFrames + sizeof( sKeyFrame )*(jointOffset + stateOffset);
	}

	/*sVertex* ModelImporter::getVertices( int mesh ) const
	{
	return vertices + sizeof( sVertex )*offsets[mesh].vertex;
	}

	sSkeletonVertex* ModelImporter::getSkeletonVertices( int mesh ) const
	{
	return skeletonVertices + sizeof( sSkeletonVertex )*offsets[mesh].skeletonVertex;
	}
	7
	unsigned int* ModelImporter::getIndices( int mesh ) const
	{
	return indices + sizeof( unsigned int )*offsets[mesh].skeletonVertex;
	}*/

	GLuint ModelImporter::getVertexBuffer( int mesh ) const
	{
		return vertexBuffers[mesh];
	}

	GLuint ModelImporter::getIndexBuffer( int mesh ) const
	{
		return indexBuffers[mesh];
	}

	int ModelImporter::getBufferSize( int mesh ) const
	{
		return bufferSizes[mesh];
	}
};