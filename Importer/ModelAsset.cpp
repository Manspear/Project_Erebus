#include "ModelAsset.h"

namespace Importer
{
	ModelAsset::ModelAsset()
		: dataptr( nullptr )
	{
		//header.meshCount = header.materialCount = 0;
		header.numMeshes = header.numSkeletons = header.numBBoxes = 0;
	}

	ModelAsset::~ModelAsset()
	{
		unload();
	}

	/*bool ModelAsset::load( std::string path, Assets* assets )
	{
		bool result = false;

		FILE *file = NULL;
		fopen_s( &file, path.c_str(), "rb" );
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

 			//ptr = (char*)bufferptr;
			unsigned int* indexes = (unsigned int*)ptr;
			ptr += sizeof(unsigned int)*dataHeader.indexes;

			sSkeletonVertex* skeletonVertices = (sSkeletonVertex*)ptr;
			ptr += sizeof( sSkeletonVertex )*dataHeader.skeletonVertices;

			for( unsigned int curMesh = 0; curMesh < header.meshCount; curMesh++ )
			{
				glGenBuffers( 1, &vertexBuffers[curMesh] );
				glBindBuffer( GL_ARRAY_BUFFER, vertexBuffers[curMesh] );
				if( meshes[curMesh].vertexCount > 0 )
				{
					glBufferData( GL_ARRAY_BUFFER, sizeof( sVertex )*meshes[curMesh].vertexCount, vertices + offsets[curMesh].vertex, GL_STATIC_DRAW );
					//bufferSizes[curMesh] = meshes[curMesh].vertexCount;
				}
				else
				{
					glBufferData( GL_ARRAY_BUFFER, sizeof( sSkeletonVertex )*meshes[curMesh].skeletonVertexCount, skeletonVertices + offsets[curMesh].skeletonVertex, GL_STATIC_DRAW );
					//bufferSizes[curMesh] = meshes[curMesh].skeletonVertexCount;
				}
				glBindBuffer( GL_ARRAY_BUFFER, 0 );


				glGenBuffers( 1, &indexBuffers[curMesh] );
				glBindBuffer( GL_ARRAY_BUFFER, indexBuffers[curMesh] );
				glBufferData( GL_ARRAY_BUFFER, sizeof( GLuint )*meshes[0].indexCount, indexes, GL_STATIC_DRAW );
				glBindBuffer( GL_ARRAY_BUFFER, 0 );
				bufferSizes[curMesh] = meshes[curMesh].indexCount;
			}

			free( bufferptr );

			result = true;
		}

		return result;
	}*/

	bool ModelAsset::load( std::string path, Assets* assets )
	{
		bool result = false;

		FILE* file;
		fopen_s( &file, path.c_str(), "rb" );
		if( file )
		{
			int datasize, buffersize;
			fread( &datasize, sizeof( int ), 1, file );
			fread( &buffersize, sizeof( int ), 1, file );

			fread( &header, sizeof( hModel ), 1, file );

			//datasize -= sizeof( hModel );
			dataptr = malloc( datasize + sizeof( GLuint )*header.numMeshes * 3 );
			void* bufferptr = malloc( buffersize );
			
			fread( dataptr, 1, datasize, file );
			fread( bufferptr, 1, buffersize, file );

			fclose( file );

			char* ptr = (char*)dataptr;
			offsets = (sOffset*)ptr;
			ptr += sizeof( sOffset )*header.numMeshes;

			meshes = (hMesh*)ptr;
			ptr += sizeof( hMesh )*header.numMeshes;

			boundingBoxes = (sBBox*)ptr;
			ptr += sizeof( sBBox )*header.numBBoxes;

			skeletons = (hSkeleton*)ptr;
			ptr += sizeof( hSkeleton )*header.numSkeletons;

			joints = (hJoint*)ptr;
			ptr += sizeof( hJoint )*header.numJoints;

			animationStates = (hAnimationState*)ptr;
			ptr += sizeof( hAnimationState )*header.numAnimationStates;

			keyFrames = (sKeyFrame*)ptr;
			ptr += sizeof( sKeyFrame )*header.numKeyframes;

			vertexBuffers = (GLuint*)ptr;
			ptr += sizeof( GLuint )*header.numMeshes;

			indexBuffers = (GLuint*)ptr;
			ptr += sizeof( GLuint )*header.numMeshes;

			bufferSizes = (int*)ptr;
			ptr += sizeof( int )*header.numMeshes;

			ptr = (char*)bufferptr;
			sVertex* vertices = (sVertex*)ptr;
			ptr += sizeof( sVertex )*header.numVertices;

			sSkeletonVertex* skeletonVertices = (sSkeletonVertex*)ptr;
			ptr += sizeof( sSkeletonVertex )*header.numSkeletonVertices;

			GLuint* indices = (GLuint*)ptr;
			ptr += sizeof( GLuint )*header.numIndices;

			for( int curMesh = 0; curMesh < header.numMeshes; curMesh++ )
			{
				glGenBuffers( 1, &vertexBuffers[curMesh] );
				glBindBuffer( GL_ARRAY_BUFFER, vertexBuffers[curMesh] );
				if( meshes[curMesh].numVertices > 0 )
				{
					glBufferData( GL_ARRAY_BUFFER, sizeof( sVertex )*meshes[curMesh].numVertices, vertices + offsets[curMesh].vertex, GL_STATIC_DRAW );
					//bufferSizes[curMesh] = meshes[curMesh].vertexCount;
				}
				else
				{
					glBufferData( GL_ARRAY_BUFFER, sizeof( sSkeletonVertex )*meshes[curMesh].numAnimVertices, skeletonVertices + offsets[curMesh].skeletonVertex, GL_STATIC_DRAW );
					//bufferSizes[curMesh] = meshes[curMesh].skeletonVertexCount;
				}
				glBindBuffer( GL_ARRAY_BUFFER, 0 );


				glGenBuffers( 1, &indexBuffers[curMesh] );
				glBindBuffer( GL_ARRAY_BUFFER, indexBuffers[curMesh] );
				glBufferData( GL_ARRAY_BUFFER, sizeof( GLuint )*meshes[0].numIndices, indices, GL_STATIC_DRAW );
				glBindBuffer( GL_ARRAY_BUFFER, 0 );
				bufferSizes[curMesh] = meshes[curMesh].numIndices;
			}

			free( bufferptr );
			result = true;
		}

		return result;
	}

	void ModelAsset::unload()
	{
		free( dataptr );
		dataptr = nullptr;
	}

	/*sHeader* ModelAsset::getHeader()
	{
		return &header;
	}

	sMesh* ModelAsset::getMesh( int index ) const
	{
		return meshes + sizeof( sMesh )*index;
	}

	sMaterial* ModelAsset::getMaterial( int index ) const
	{
		return materials + sizeof( sMaterial )*index;
	}

	sJoint* ModelAsset::getJoints( int mesh ) const
	{
		return joints + sizeof( sJoint )*offsets[mesh].joint;
	}

	int ModelAsset::getFrameCount( int mesh, int joint, int animationState ) const
	{
		int jointOffset = offsets[mesh].joint;
		int stateOffset = sizeof( int )*animationState;
		return *(keyCount + sizeof( int )*(jointOffset + stateOffset));
	}

	sKeyFrame* ModelAsset::getKeyFrames( int mesh, int joint, int animationState ) const
	{
		int jointOffset = offsets[mesh].joint;
		int stateOffset = sizeof( int )*animationState;
		return keyFrames + sizeof( sKeyFrame )*(jointOffset + stateOffset);
	}

	GLuint ModelAsset::getVertexBuffer( int mesh ) const
	{
		return vertexBuffers[mesh];
	}

	GLuint ModelAsset::getIndexBuffer( int mesh ) const
	{
		return indexBuffers[mesh];
	}

	int ModelAsset::getBufferSize( int mesh ) const
	{
		return bufferSizes[mesh];
	}*/

	hModel* ModelAsset::getHeader()
	{
		return &header;
	}

	hMesh* ModelAsset::getMesh( int index ) const
	{
		return meshes + sizeof( hMesh )*index;
	}

	sBBox* ModelAsset::getBoundingBox( int joint ) const
	{
		return nullptr;
	}

	hSkeleton* ModelAsset::getSkeletons( int index ) const
	{
		return skeletons + sizeof(hSkeleton)*index;
	}

	hJoint* ModelAsset::getJoints( int mesh ) const
	{
		return joints + sizeof( hJoint )*offsets[mesh].joint;
	}

	hAnimationState* ModelAsset::getAnimationStates( int mesh, int joint ) const
	{
		return animationStates + sizeof( hAnimationState )*offsets[mesh].joint;
	}

	sKeyFrame* ModelAsset::getKeyFrames( int mesh, int joint, int animationState ) const
	{
		int jointOffset = offsets[mesh].joint;
		int stateOffset = sizeof( int )*animationState;
		return keyFrames + sizeof( sKeyFrame )*(jointOffset + stateOffset);
	}

	GLuint ModelAsset::getVertexBuffer( int mesh ) const
	{
		return vertexBuffers[mesh];
	}

	GLuint ModelAsset::getIndexBuffer( int mesh ) const
	{
		return indexBuffers[mesh];
	}

	int ModelAsset::getBufferSize( int mesh ) const
	{
		return bufferSizes[mesh];
	}
};