#pragma once
#pragma once

#include "BaseIncludes.h"
#ifdef IMPORTER_EXPORT
#define IMPORTER_API __declspec(dllexport)   
#else  
#define IMPORTER_API __declspec(dllimport)   
#endif

namespace Importer
{
	struct sHeader
	{
		unsigned int meshCount;
		unsigned int materialCount;
	};

	struct sDataHeader
	{
		int datasize;
		int buffersize;
		int meshes;
		int materials;
		int joints;
		int keycounts;
		int keyframes;
		int vertices;
		int skeletonVertices;
	};

	struct sMesh
	{
		unsigned int materialID;
		int parentMeshID, parentJointID;
		float translation[3], rotation[3], scale[3];
		bool isBoundingBox, isAnimated;

		unsigned int meshChildCount;
		unsigned int vertexCount;
		unsigned int skeletonVertexCount;
		unsigned int jointCount;
	};

	struct sVertex
	{
		float vertexPos[3];
		float vertexNormal[3];
		float vertexUV[2];
		float tangentNormal[3];
		float biTangentNormal[3];
	};

	struct sSkeletonVertex
	{
		float vertexPos[3];
		float vertexNormal[3];
		float vertexUV[2];
		float tangentNormal[3];
		float biTangentNormal[3];
		float influences[4];
		float weights[4];
	};

	struct sJoint
	{
		int ID, parentID;
		float position[3], rotation[3], scale[3];
		float bindPoseInverse[16], globalBindPoseInverse[16];
		int meshChildCount; // TODO: Remove. We don't need.
		int animationStateCount;
	};

	struct sKeyFrame
	{
		float time, position[3], rotation[3], scale[3];
	};

	struct sMaterial
	{
		float ambientColor[3];
		float diffuseColor[3];
		float specularColor[3];
		float shinyFactor;

		char diffuseTexture[256];
		char specularTexture[256];
		char normalTexture[256];
	};

	struct sOffset
	{
		int joint, vertex, skeletonVertex;
	};

	class ModelImporter
	{
	public:
		IMPORTER_API ModelImporter();
		IMPORTER_API ~ModelImporter();

		IMPORTER_API void load( const char* path );
		IMPORTER_API void unload();

		IMPORTER_API sHeader* getHeader();
		IMPORTER_API sMesh* getMesh( int index ) const;
		IMPORTER_API sMaterial* getMaterial( int index ) const;
		IMPORTER_API sJoint* getJoints( int mesh ) const;
		IMPORTER_API int getFrameCount( int mesh, int joint, int animationState ) const;
		IMPORTER_API sKeyFrame* getKeyFrames( int mesh, int joint, int animationState ) const;
		//IMPORTER_API sVertex* getVertices( int mesh ) const;
		//IMPORTER_API sSkeletonVertex* getSkeletonVertices( int mesh ) const;
		//IMPORTER_API unsigned int* getIndices( int mesh ) const;
		IMPORTER_API GLuint getVertexBuffer( int mesh ) const;
		IMPORTER_API GLuint getIndexBuffer( int mesh ) const;
		IMPORTER_API int getBufferSize( int mesh ) const;

	private:
		sHeader header;
		sOffset* offsets;
		sMesh* meshes;
		sMaterial* materials;
		sJoint* joints;
		int* keyCount;
		sKeyFrame* keyFrames;

		GLuint* vertexBuffers;
		GLuint* indexBuffers;
		int* bufferSizes;

		//sVertex* vertices;
		//sSkeletonVertex* skeletonVertices;
		//unsigned int* indices;
		void* dataptr;
	};
};