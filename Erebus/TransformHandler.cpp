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

	shouldReset = false;
}

TransformHandler::~TransformHandler()
{
}

void TransformHandler::reset()
{
	/*instances[INSTANCE_DYNAMIC]->clear();
	instances[INSTANCE_ANIMATED]->clear();

	instances[INSTANCE_FORWARD]->clear();
	gearEngine->uniValues.clear();

	instances[INSTANCE_BLENDING]->clear();
	gearEngine->textureBlend.clear();*/

	shouldReset = true;
}

void TransformHandler::checkReset()
{
	if( shouldReset )
	{
		/*for( int i=0; i<instances[INSTANCE_DYNAMIC]->size(); i++ )
			removables.push_back( instances[INSTANCE_DYNAMIC]->at(i) );
		for( int i=0; i<instances[INSTANCE_ANIMATED]->size(); i++ )
			removables.push_back( instances[INSTANCE_ANIMATED]->at(i) );
		for( int i=0; i<instances[INSTANCE_FORWARD]->size(); i++ )
			removables.push_back( instances[INSTANCE_DYNAMIC]->at(i) );
		for( int i=0; i<instances[INSTANCE_BLENDING]->size(); i++ )
			removables.push_back( instances[INSTANCE_BLENDING]->at(i) );

		instances[INSTANCE_DYNAMIC]->clear();
		instances[INSTANCE_ANIMATED]->clear();

		instances[INSTANCE_FORWARD]->clear();
		gearEngine->uniValues.clear();

		instances[INSTANCE_BLENDING]->clear();
		gearEngine->textureBlend.clear();

		uses[INSTANCE_DYNAMIC].clear();
		uses[INSTANCE_ANIMATED].clear();
		uses[INSTANCE_FORWARD].clear();
		uses[INSTANCE_BLENDING].clear();

		handles.clear();*/

		for( int i=0; i<MAX_INSTANCE_TYPES; i++ )
		{
			for( int j=0; j<instances[i]->size(); j++ )
				removables.push_back( instances[i]->at(j) );
			instances[i]->clear();
			//uses[i].clear();
		}

		gearEngine->uniValues.clear();
		gearEngine->textureBlend.clear();
		handles.clear();

		shouldReset = false;
	}
}

void TransformHandler::checkRemove()
{
	for( int i=0; i<removables.size(); i++ )
	{
		removables[i].unloadBuffers();
	}

	removables.clear();
}

int TransformHandler::bindStaticInstance( ModelAsset* asset )
{
	std::vector<ModelInstance>* models = instances[INSTANCE_DYNAMIC];

	int modelIndex = findModelIndex( INSTANCE_DYNAMIC, asset );
	if( modelIndex < 0 )
	{
		ModelInstance instance;
		instance.setAsset(asset);

		modelIndex = findVacantModelIndex( INSTANCE_DYNAMIC );
		if( modelIndex >= 0 )
		{
			removables.push_back( models->at(modelIndex) );
			models->at(modelIndex) = instance;
			//uses[INSTANCE_DYNAMIC].at(modelIndex) = 1;
		}
		else
		{
			modelIndex = models->size();
			models->push_back( instance );
			//uses[INSTANCE_DYNAMIC].push_back( 1 );
		}
	}
	else
	{
		/*if( uses[INSTANCE_DYNAMIC].at(modelIndex) <= 0 )
			uses[INSTANCE_DYNAMIC].at(modelIndex) = 1;*/
	}

	int transformIndex = instances[INSTANCE_DYNAMIC]->at(modelIndex).pushStaticInstance(DEFAULT_TRANSFORM, glm::mat4());

	TransformHandle handle =
	{
		INSTANCE_DYNAMIC,
		modelIndex,
		transformIndex,
		false,
		false
	};

	int result = findVacantIndex();
	if( result < 0 )
	{
		result = handles.size();
		handles.push_back(handle);
	}
	else
		handles[result] = handle;

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

		modelIndex = findVacantModelIndex( INSTANCE_ANIMATED );
		if( modelIndex >= 0 )
		{
			removables.push_back( models->at(modelIndex) );
			models->at(modelIndex) = instance;
			//uses[INSTANCE_ANIMATED].at(modelIndex) = 1;
		}
		else
		{
			modelIndex = models->size();
			models->push_back( instance );
			//uses[INSTANCE_ANIMATED].push_back(1);
		}
	}
	else
	{
		/*if( uses[INSTANCE_ANIMATED].at(modelIndex) <= 0 )
			uses[INSTANCE_ANIMATED].at(modelIndex) = 1;*/
	}

	animation->setAsset( asset );
	int transformIndex = instances[INSTANCE_ANIMATED]->at(modelIndex).pushAnimatedInstance( DEFAULT_TRANSFORM, glm::mat4(), animation );

	TransformHandle handle =
	{
		INSTANCE_ANIMATED,
		modelIndex,
		transformIndex,
		false,
		false
	};

	int result = findVacantIndex();
	if( result < 0 )
	{
		result = handles.size();
		handles.push_back(handle);
	}
	else
		handles[result] = handle;

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

		modelIndex = findVacantModelIndex( INSTANCE_FORWARD );
		if( modelIndex >= 0 )
		{
			removables.push_back( models->at(modelIndex) );
			models->at(modelIndex) = instance;
			//uses[INSTANCE_FORWARD].at(modelIndex) = 1;
			gearEngine->uniValues.at( modelIndex ) = { "NULL", {0,0} };
		}
		else
		{
			modelIndex = models->size();
			models->push_back( instance );
			//uses[INSTANCE_FORWARD].push_back(1);
			gearEngine->uniValues.push_back( { "NULL", {0,0} } );
		}
	}
	else
	{
		/*if( uses[INSTANCE_FORWARD].at(modelIndex) <= 0 )
			uses[INSTANCE_FORWARD].at(modelIndex) = 1;*/
	}

	int transformIndex = instances[INSTANCE_FORWARD]->at(modelIndex).pushStaticInstance( DEFAULT_TRANSFORM, glm::mat4() );

	TransformHandle handle =
	{
		INSTANCE_FORWARD,
		modelIndex,
		transformIndex,
		false,
		false
	};

	int result = findVacantIndex();
	if( result < 0 )
	{
		result = handles.size();
		handles.push_back(handle);
	}
	else
		handles[result] = handle;

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

		modelIndex = findVacantModelIndex( INSTANCE_BLENDING );
		if( modelIndex >= 0 )
		{
			removables.push_back( models->at(modelIndex) );
			models->at(modelIndex) = instance;
			//uses[INSTANCE_BLENDING].at(modelIndex) = 1;
		}
		else
		{
			modelIndex = models->size();
			models->push_back( instance );
			//uses[INSTANCE_BLENDING].push_back(1);
		}
	}
	else
	{
		/*if( uses[INSTANCE_BLENDING].at(modelIndex) <= 0 )
			uses[INSTANCE_BLENDING].at(modelIndex) = 1;*/
	}

	TextureBlendings tBlend;
	gearEngine->textureBlend.push_back(tBlend);
	gearEngine->textureBlend.at(gearEngine->textureBlend.size()-1).modelIndex = modelIndex;
	gearEngine->textureBlend.at(gearEngine->textureBlend.size() - 1).active = false;

	int transformIndex = instances[INSTANCE_BLENDING]->at(modelIndex).pushStaticInstance( DEFAULT_TRANSFORM, glm::mat4() );

	TransformHandle handle =
	{
		INSTANCE_BLENDING,
		modelIndex,
		transformIndex,
		false,
		false
	};

	int result = findVacantIndex();
	if( result < 0 )
	{
		result = handles.size();
		handles.push_back(handle);
	}
	else
		handles[result] = handle;

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

		//uses[handle.instanceIndex].at(handle.modelIndex)--;
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
		instances[handle.instanceIndex]->at(handle.modelIndex).setWorldMatrix( handle.transformIndex, glm::mat4() );
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

	//return instances[handle.instanceIndex]->at(handle.modelIndex).getTransform(handle.transformIndex);
	return instances[handle.instanceIndex]->operator[](handle.modelIndex).getTransform(handle.transformIndex);
}

/*int TransformHandler::findVacantIndex( int modelIndex )
{
	int result = -1;
	for( int i=0; i<handles.size() && result < 0; i++ )
		if( handles[i].vacant && handles[i].modelIndex == modelIndex )
			result = i;
	return result;
}*/

int TransformHandler::findVacantIndex()
{
	int result = -1;
	for( int i=0; i<handles.size() && result < 0; i++ )
		if( handles[i].vacant )
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

/*int TransformHandler::findVacantModelIndex( int instanceIndex )
{
	int result = -1;
	for( int i=0; i<uses[instanceIndex].size() && result < 0; i++ )
		if( uses[instanceIndex].at(i) <= 0 )
			result = i;
	return result;
}*/

int TransformHandler::findVacantModelIndex( int instanceIndex )
{
	int result = -1;
	for( int i=0; i<instances[instanceIndex]->size() && result < 0; i++ )
		if( instances[instanceIndex]->at(i).getOccupied() <= 0 )
			result = i;
	return result;
}