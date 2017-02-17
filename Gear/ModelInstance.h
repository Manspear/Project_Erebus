#pragma once
#include "ModelAsset.h"
#include "Animation.h"
#include <vector>

using namespace Importer;

namespace Gear
{
	class ModelInstance
	{
	public:
		GEAR_API ModelInstance();
		GEAR_API ~ModelInstance();
		 
		GEAR_API void init();
		GEAR_API void allocateBuffer();
		GEAR_API void bindBuffers();
		GEAR_API void bufferData();
		 
		GEAR_API void updateWorldMatrices();
		 
		GEAR_API int addStaticInstance(TransformStruct trans, glm::mat4 world);
		GEAR_API int addAnimatedInstance(TransformStruct trans, glm::mat4 world, Animation* anim);
		 
		GEAR_API void incrActiveTransforms();
		GEAR_API void decrActiveTransforms();
		 
		GEAR_API void setAsset(ModelAsset* a);
		GEAR_API void setActiveTransforms(int n);
		GEAR_API void setTransform(int index, TransformStruct trans);
		GEAR_API void setWorldMatrix(int index, glm::mat4 world);
		 
		GEAR_API ModelAsset* getAsset() const;
		GEAR_API int getWorldMatrixCount() const;
		GEAR_API int getActiveTransforms() const;
		GEAR_API int getAnimationMatrixIndex(int index) const;
		GEAR_API GLuint getVBO() const;
		GEAR_API GLuint getVAO() const;
		GEAR_API TransformStruct* getTransform(int index);
		GEAR_API glm::mat4& getWorldMatrix(int index);
		
	private:
		ModelAsset* asset;
		//std::vector<int> worldIndices;
		std::vector<TransformStruct> transforms;
		int activeTransforms;
		std::vector<glm::mat4> worldMatrices;
		std::vector<Animation*> animations; // only used for animated instances
		GLuint instanceVBO;
		GLuint instanceVAO;
	};
}