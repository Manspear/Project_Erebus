#pragma once

#include "Gear.h"

struct TransformHandle
{
	int instanceIndex;
	int modelIndex;
	int transformIndex;
	bool active, vacant;
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

	void reset();
	void checkReset();
	void checkRemove();

	int bindStaticInstance( ModelAsset* asset );
	int bindAnimatedInstance( ModelAsset* asset, Animation* animation );
	int bindForwardInstance( ModelAsset* asset );
	int bindBlendingInstance( ModelAsset* asset );
	void unbindInstance( int index );

	void activateTransform( int index );
	void deactivateTransform( int index );

	TransformHandle getHandle( int index );
	TransformStruct* getTransform( int index );

private:
	//int findVacantIndex( int modelIndex );
	int findVacantIndex();
	int findModelIndex( int instanceIndex, ModelAsset* asset );
	int findVacantModelIndex( int instanceIndex );

	Gear::GearEngine* gearEngine;
	std::vector<ModelInstance>* instances[MAX_INSTANCE_TYPES];
	//std::vector<int> uses[MAX_INSTANCE_TYPES];
	std::vector<ModelInstance> removables;

	std::vector<TransformHandle> handles;
	bool shouldReset;
};