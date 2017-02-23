#include "TransformHandler.h"

static const TransformStruct DEFAULT_TRANSFORM = 
{
	glm::vec3( 0.0f ),
	glm::vec3( 0.0f ),
	glm::vec3( 1.0f ),
	glm::vec3( 0.0f, 0.0f, 1.0f ),
	true
};

TransformHandler::TransformHandler
(
	Gear::GearEngine* engine,
	std::vector<ModelInstance>* models,
	std::vector<ModelInstance>* animatedModels,
	std::vector<ModelInstance>* forwardModels,
	std::vector<ModelInstance>* blendingModels
)
{
	gearEngine = engine;

	instances[INSTANCE_DYNAMIC] = models;
	instances[INSTANCE_ANIMATED] = animatedModels;
	instances[INSTANCE_FORWARD] = forwardModels;
	instances[INSTANCE_BLENDING] = blendingModels;
}

TransformHandler::~TransformHandler()
{
}

int TransformHandler::bindStaticInstance( ModelAsset* asset )
{
	std::vector<ModelInstance>* models = instances[INSTANCE_DYNAMIC];

	int modelIndex = findModelIndex( INSTANCE_DYNAMIC, asset );
	if( modelIndex < 0 )
	{
		ModelInstance instance;
		instance.setAsset(asset);

		modelIndex = models->size();
		models->push_back( instance );
	}

	int transformIndex = instances[INSTANCE_DYNAMIC]->at(modelIndex).pushStaticInstance(DEFAULT_TRANSFORM, glm::mat4());

	int result = handles.size();
	TransformHandle handle =
	{
		INSTANCE_DYNAMIC,
		modelIndex,
		transformIndex,
		false,
		false
	};

	handles.push_back(handle);

	activateTransform( result );
	handles.at(result).active = true;

	return result;
}

int TransformHandler::bindAnimatedInstance( ModelAsset* asset, Animation* animation )
{
	std::vector<ModelInstance>* models = instances[INSTANCE_ANIMATED];

	int modelIndex = findModelIndex( INSTANCE_ANIMATED, asset );
	if( modelIndex < 0 )
	{
		ModelInstance instance;
		instance.setAsset(asset);

		modelIndex = models->size();
		models->push_back( instance );
	}

	animation->setAsset( asset );
	int transformIndex = instances[INSTANCE_ANIMATED]->at(modelIndex).pushAnimatedInstance( DEFAULT_TRANSFORM, glm::mat4(), animation );

	int result = handles.size();
	TransformHandle handle =
	{
		INSTANCE_ANIMATED,
		modelIndex,
		transformIndex,
		false,
		false
	};

	handles.push_back(handle);

	activateTransform( result );
	handles.at(result).active = true;

	return result;
}

int TransformHandler::bindForwardInstance( ModelAsset* asset )
{
	std::vector<ModelInstance>* models = instances[INSTANCE_FORWARD];

	int modelIndex = findModelIndex( INSTANCE_FORWARD, asset );
	if( modelIndex < 0 )
	{
		ModelInstance instance;
		instance.setAsset(asset);
	
		modelIndex = models->size();
		models->push_back( instance );
		gearEngine->uniValues.push_back( { "NULL", {0,0} } );
	}

	int transformIndex = instances[INSTANCE_FORWARD]->at(modelIndex).pushStaticInstance( DEFAULT_TRANSFORM, glm::mat4() );

	int result = handles.size();
	TransformHandle handle =
	{
		INSTANCE_FORWARD,
		modelIndex,
		transformIndex,
		false,
		false
	};

	handles.push_back(handle);

	activateTransform( result );
	handles.at(result).active = true;

	return result;
}

int TransformHandler::bindBlendingInstance( ModelAsset* asset )
{
	std::vector<ModelInstance>* models = instances[INSTANCE_BLENDING];

	int modelIndex = findModelIndex( INSTANCE_BLENDING, asset );
	if( modelIndex < 0 )
	{
		ModelInstance instance;
		instance.setAsset(asset);

		modelIndex = models->size();
		models->push_back( instance );

		TextureBlendings tBlend;
		gearEngine->textureBlend.push_back( tBlend );
	}

	gearEngine->textureBlend.at(modelIndex).modelIndex = modelIndex;

	int transformIndex = instances[INSTANCE_BLENDING]->at(modelIndex).pushStaticInstance( DEFAULT_TRANSFORM, glm::mat4() );

	int result = handles.size();
	TransformHandle handle =
	{
		INSTANCE_BLENDING,
		modelIndex,
		transformIndex,
		false,
		false
	};

	handles.push_back(handle);

	activateTransform( result );
	handles.at(result).active = true;

	return result;
}

void TransformHandler::unbindInstance( int index )
{
	TransformHandle& handle = handles.at(index);
	if( !handle.vacant )
	{
		instances[handle.instanceIndex]->at(handle.modelIndex).popInstance( handle.transformIndex );
		handle.vacant = true;
	}
}

void TransformHandler::activateTransform( int index )
{
	assert( index >= 0 && index < handles.size() );

	TransformHandle& handle = handles.at(index);
	std::vector<ModelInstance>* models = instances[handle.instanceIndex];

	if( !handle.active )
	{
		instances[handle.instanceIndex]->at(handle.modelIndex).setActive(handle.transformIndex,true);
		//instances[handle.instanceIndex]->at(handle.modelIndex).incrActiveTransforms();
		handle.active = true;
	}
}

void TransformHandler::deactivateTransform( int index )
{
	assert( index >= 0 && index < handles.size() );

	TransformHandle& handle = handles.at(index);
	std::vector<ModelInstance>* models = instances[handle.instanceIndex];

	if( handle.active )
	{
		instances[handle.instanceIndex]->at(handle.modelIndex).setActive(handle.transformIndex,false);
		//instances[handle.instanceIndex]->at(handle.modelIndex).decrActiveTransforms();
		handle.active = false;
	}
}

TransformHandle TransformHandler::getHandle( int index )
{
	assert( index >= 0 && index < handles.size() );
	return handles[index];
}

TransformStruct* TransformHandler::getTransform( int index )
{
	assert( index >= 0 && index < handles.size() );
	TransformHandle& handle = handles.at(index);

	assert( handle.instanceIndex >= INSTANCE_DYNAMIC && handle.instanceIndex < MAX_INSTANCE_TYPES );

	return instances[handle.instanceIndex]->at(handle.modelIndex).getTransform(handle.transformIndex);
}

int TransformHandler::findVacantIndex( int modelIndex )
{
	int result = -1;
	for( int i=0; i<handles.size() && result < 0; i++ )
		if( handles[i].vacant && handles[i].modelIndex == modelIndex )
			result = i;
	return result;
}

int TransformHandler::findModelIndex( int instanceIndex, ModelAsset* asset )
{
	int result = -1;
	for( int i=0; i<instances[instanceIndex]->size() && result < 0; i++ )
		if( instances[instanceIndex]->at(i).getAsset() == asset )
			result = i;
	return result;
}