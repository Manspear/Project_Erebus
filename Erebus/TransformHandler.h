#pragma once

#include "Gear.h"

struct TransformHandle
{
	int instanceIndex;
	int modelIndex;
	int transformIndex;
	bool active;

	int prev, next;
};

class TransformHandler
{
public:
	TransformHandler
	(
		Gear::GearEngine* gearEngine,
		std::vector<ModelInstance>* models,
		std::vector<ModelInstance>* animatedModels,
		std::vector<ModelInstance>* forwardModels,
		std::vector<ModelInstance>* blendingModels
	);
	~TransformHandler();

	int bindStaticInstance( ModelAsset* asset );
	int bindAnimatedInstance( ModelAsset* asset, Animation* animation );
	int bindForwardInstance( ModelAsset* asset );
	int bindBlendingInstance( ModelAsset* asset );

	void activateTransform( int index );
	void deactivateTransform( int index );

	TransformHandle getHandle( int index );
	TransformStruct* getTransform( int index );

private:
	int findModelIndex( int instanceIndex, ModelAsset* asset );

	Gear::GearEngine* gearEngine;
	std::vector<ModelInstance>* instances[MAX_INSTANCE_TYPES];

	std::vector<TransformHandle> handles;
	//int lastIndices[MAX_INSTANCE_TYPES];
	std::vector<int> lastIndices[MAX_INSTANCE_TYPES];
};