#pragma once

#include "Assets.h"
#include "Importer.h"

namespace Importer
{
	class ModelAsset : public Asset
	{
		friend class HeightMap;

	public:
		IMPORTER_API ModelAsset();
		IMPORTER_API ~ModelAsset();

		IMPORTER_API bool load( std::string path, Assets* assets ) override;
		IMPORTER_API void unload() override;

		IMPORTER_API hModel* getHeader();
		IMPORTER_API hMesh* getMesh( int index ) const;
		IMPORTER_API sBBox* getBoundingBox( int joint ) const;
		IMPORTER_API hSkeleton* getSkeletons( int index ) const;
		IMPORTER_API hJoint* getJoints( int mesh ) const;
		IMPORTER_API hAnimationState* getAnimationStates( int mesh, int joint ) const;
		IMPORTER_API sKeyFrame* getKeyFrames( int mesh, int joint, int animationState ) const;
		IMPORTER_API GLuint getVertexBuffer( int mesh ) const;
		IMPORTER_API GLuint getIndexBuffer( int mesh ) const;
		IMPORTER_API int getBufferSize( int mesh ) const;

	private:
		hModel header;
		sOffset* offsets;
		hMesh* meshes;
		sBBox* boundingBoxes;
		hSkeleton* skeletons;
		hJoint* joints;
		hAnimationState* animationStates;
		sKeyFrame* keyFrames;

		GLuint* vertexBuffers;
		GLuint* indexBuffers;
		int* bufferSizes;

		void* dataptr;
	};
};