#pragma once

#include "Assets.h"
#include "Importer.h"
#include "MaterialAsset.h"

namespace Importer
{
#define MAXJOINTCOUNT 64 
	class ModelAsset : public Asset
	{
	public:
		IMPORTER_API ModelAsset();
		IMPORTER_API ~ModelAsset();

		IMPORTER_API bool load(std::string path, Assets* assets) override;
		IMPORTER_API void unload() override;
		IMPORTER_API void upload() override;

		IMPORTER_API void incrementReferenceCount() override;
		IMPORTER_API void decrementReferenceCount() override;

		IMPORTER_API hModel* getHeader();
		IMPORTER_API hMesh* getMesh(int index) const;
		IMPORTER_API sBBox* getBoundingBox(int joint) const;
		IMPORTER_API hSkeleton* getSkeleton(int index) const;
		IMPORTER_API hJoint* getJoints(int model) const;
		IMPORTER_API hJoint* getJointsStart() const;
		IMPORTER_API hAnimationState* getAnimationState(int skeleton, int joint, int animState) const;
		IMPORTER_API sKeyFrame* getKeyFrames(int skeleton, int joint, int animationState) const;
		IMPORTER_API sKeyFrame* getKeyFrameStart() const;
		IMPORTER_API GLuint getVertexBuffer(int mesh) const;
		IMPORTER_API GLuint getIndexBuffer(int mesh) const;
		IMPORTER_API int getBufferSize(int mesh) const;
		IMPORTER_API MaterialAsset* getMaterial() const;

		IMPORTER_API const glm::vec3& getMinPosition() const;
		IMPORTER_API const glm::vec3& getMaxPosition() const;

	private:
		hModel header;
		sOffset* offsets;
		hMesh* meshes;
		sBBox* boundingBoxes;
		hSkeleton* skeletons;
		hJoint* joints;
		hAnimationState* animationStates;
		sKeyFrame* keyFrames;
		MaterialAsset* material;

		glm::vec3 minPosition, maxPosition;

		GLuint* vertexBuffers;
		GLuint* indexBuffers;
		int* bufferSizes;

		void* dataptr;
		void* bufferptr;
	};
};