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

		lastIndices[INSTANCE_DYNAMIC].push_back( -1 );
		firstIndices[INSTANCE_DYNAMIC].push_back( -1 );
	}

	int transformIndex = models->at(modelIndex).addStaticInstance(DEFAULT_TRANSFORM, glm::mat4());

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
		handles.push_back( handle );
	}

	if( lastIndices[INSTANCE_DYNAMIC].at(modelIndex) < 0 )
		handles.at(result).prev = -1;
	handles.at(result).next = -1;

	if( lastIndices[INSTANCE_DYNAMIC].at(modelIndex) >= 0 )
		handles.at(lastIndices[INSTANCE_DYNAMIC].at(modelIndex)).next = result;
	handles.at(result).prev = lastIndices[INSTANCE_DYNAMIC].at(modelIndex);

	if( firstIndices[INSTANCE_DYNAMIC].at(modelIndex) < 0 )
		firstIndices[INSTANCE_DYNAMIC].at(modelIndex) = result;

	activateTransform( result );

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

		lastIndices[INSTANCE_ANIMATED].push_back( -1 );
		firstIndices[INSTANCE_ANIMATED].push_back( -1 );
	}

	animation->setAsset( asset );

	int transformIndex = models->at(modelIndex).addAnimatedInstance(DEFAULT_TRANSFORM, glm::mat4(), animation);

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
		handles.push_back( handle );
	}

	if( lastIndices[INSTANCE_ANIMATED].at(modelIndex) < 0 )
		handles.at(result).prev = -1;
	handles.at(result).next = -1;

	if( lastIndices[INSTANCE_ANIMATED].at(modelIndex) >= 0 )
		handles.at(lastIndices[INSTANCE_ANIMATED].at(modelIndex)).next = result;
	handles.at(result).prev = lastIndices[INSTANCE_ANIMATED].at(modelIndex);

	if( firstIndices[INSTANCE_ANIMATED].at(modelIndex) < 0 )
		firstIndices[INSTANCE_ANIMATED].at(modelIndex) = result;

	activateTransform( result );

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

		lastIndices[INSTANCE_FORWARD].push_back( -1 );
		firstIndices[INSTANCE_FORWARD].push_back( -1 );
	}

	int transformIndex = models->at(modelIndex).addStaticInstance(DEFAULT_TRANSFORM, glm::mat4());
	
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
		handles.push_back( handle );
	}

	if( lastIndices[INSTANCE_FORWARD].at(modelIndex) < 0 )
		handles.at(result).prev = -1;
	handles.at(result).next = -1;

	if( lastIndices[INSTANCE_FORWARD].at(modelIndex) >= 0 )
		handles.at(lastIndices[INSTANCE_FORWARD].at(modelIndex)).next = result;
	handles.at(result).prev = lastIndices[INSTANCE_FORWARD].at(modelIndex);

	if( firstIndices[INSTANCE_FORWARD].at(modelIndex) < 0 )
		firstIndices[INSTANCE_FORWARD].at(modelIndex) = result;

	activateTransform( result );

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

		lastIndices[INSTANCE_BLENDING].push_back( -1 );
		firstIndices[INSTANCE_BLENDING].push_back( -1 );
	}

	gearEngine->textureBlend.at(modelIndex).modelIndex = modelIndex;
	int transformIndex = models->at(modelIndex).addStaticInstance(DEFAULT_TRANSFORM, glm::mat4());

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
		handles.push_back( handle );
	}

	if( lastIndices[INSTANCE_BLENDING].at(modelIndex) < 0 )
		handles.at(result).prev = -1;
	handles.at(result).next = -1;

	if( lastIndices[INSTANCE_BLENDING].at(modelIndex) >= 0 )
		handles.at(lastIndices[INSTANCE_BLENDING].at(modelIndex)).next = result;
	handles.at(result).prev = lastIndices[INSTANCE_BLENDING].at(modelIndex);

	if( firstIndices[INSTANCE_BLENDING].at(modelIndex) < 0 )
		firstIndices[INSTANCE_BLENDING].at(modelIndex) = result;

	activateTransform( result );

	return result;
}

void TransformHandler::unbindInstance( int index )
{
	assert( index >= 0 && index < handles.size() );

	deactivateTransform( index );
	handles[index].vacant = true;
}

void TransformHandler::activateTransform( int index )
{
	assert( index >= 0 && index < handles.size() );

	TransformHandle& handle = handles.at(index);
	std::vector<ModelInstance>* models = instances[handle.instanceIndex];

	if( !handle.active )
	{
		/*int a = index;
		int b = lastIndices[handle.instanceIndex].at(handle.modelIndex);

		TransformHandle* ahandle = &handles.at(a);
		TransformHandle* bhandle = nullptr;
		if( b >= 0 )
			bhandle = &handles.at(b);

		if( bhandle )
			bhandle->next = a;

		ahandle->prev = b;
		ahandle->next = -1;

		ahandle->transformIndex = models->at(handle.modelIndex).getActiveTransforms();*/

		int a = index;
		int b = -1;

		int last = lastIndices[handle.instanceIndex].at(handle.modelIndex);
		if( last >= 0 && handles.at(last).next >= 0 )
		{
			b = handles.at(last).next;
		}
		else
		{
			b = firstIndices[handle.instanceIndex].at(handle.modelIndex);
		}

		assert( b >= 0 );

		// swap a and b
		TransformHandle* ahandle = &handles.at(a);
		TransformHandle* bhandle = nullptr;
		if( b >= 0 )
			bhandle = &handles.at(b);

		if( bhandle )
		{
			if( bhandle->prev != a )
				lastIndices[handle.instanceIndex].at(handle.modelIndex) = bhandle->prev;
			else
			{
				lastIndices[handle.instanceIndex].at(handle.modelIndex) = b;
			}
		}
		else
		{
			assert( a == b );
			lastIndices[handle.instanceIndex].at(handle.modelIndex) = -1;
		}

		if( ahandle->prev >= 0 )
			handles.at(ahandle->prev).next = b;
		if( ahandle->next >= 0 )
		{
			if( ahandle->next != b )
				handles.at(ahandle->next).prev = b;
		}
		if( bhandle )
		{
			if( bhandle->prev >= 0 )
				handles.at(bhandle->prev).next = a;
			if( bhandle->next >= 0 )
				handles.at(bhandle->next).prev = a;
		}

		if( bhandle )
		{
			int tempPrev = ahandle->prev;
			int tempNext = ahandle->next;

			if( bhandle->prev == a )
				ahandle->prev = b;
			else
				ahandle->prev = bhandle->prev;
			ahandle->next = bhandle->next;

			bhandle->prev = tempPrev;
			if( bhandle->prev == a )
				bhandle->next = a;
			else
				bhandle->next = tempNext;
		}
		else
		{
			ahandle->prev = ahandle->next = -1;
		}

		if( a != b && bhandle )
		{
			TransformStruct* atransform = instances[ahandle->instanceIndex]->at(ahandle->modelIndex).getTransform(ahandle->transformIndex);
			TransformStruct* btransform = nullptr;
			if( bhandle )
				btransform = instances[bhandle->instanceIndex]->at(bhandle->modelIndex).getTransform(bhandle->transformIndex);

			glm::mat4 amatrix = instances[ahandle->instanceIndex]->at(ahandle->modelIndex).getWorldMatrix(ahandle->transformIndex);
			glm::mat4 bmatrix;
			if( bhandle )
				bmatrix = instances[bhandle->instanceIndex]->at(bhandle->modelIndex).getWorldMatrix(bhandle->transformIndex);

			Animation* aanimation, *banimation;
			if( handle.instanceIndex == INSTANCE_ANIMATED )
			{
				aanimation = instances[INSTANCE_ANIMATED]->at(ahandle->modelIndex).getAnimation(ahandle->transformIndex);
				banimation = instances[INSTANCE_ANIMATED]->at(bhandle->modelIndex).getAnimation(bhandle->transformIndex);
			}

			int tempTransformIndex = ahandle->transformIndex;
			ahandle->transformIndex = bhandle->transformIndex;
			bhandle->transformIndex = tempTransformIndex;

			instances[bhandle->instanceIndex]->at(bhandle->modelIndex).setTransform(bhandle->transformIndex, *btransform);
			instances[ahandle->instanceIndex]->at(ahandle->modelIndex).setTransform(ahandle->transformIndex, *atransform);

			instances[bhandle->instanceIndex]->at(bhandle->modelIndex).setWorldMatrix(bhandle->transformIndex, bmatrix);
			instances[ahandle->instanceIndex]->at(ahandle->modelIndex).setWorldMatrix(ahandle->transformIndex, amatrix);

			if( handle.instanceIndex == INSTANCE_ANIMATED )
			{
				instances[bhandle->instanceIndex]->at(bhandle->modelIndex).setAnimation(bhandle->transformIndex, banimation);
				instances[ahandle->instanceIndex]->at(ahandle->modelIndex).setAnimation(ahandle->transformIndex, aanimation);
			}
		}

		models->at(handle.modelIndex).incrActiveTransforms();

		lastIndices[handle.instanceIndex].at(handle.modelIndex) = index;
		if( handle.prev < 0 )
			firstIndices[handle.instanceIndex].at(handle.modelIndex) = index;

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
		int a = index;
		int b = lastIndices[handle.instanceIndex].at(handle.modelIndex);

		assert( b >= 0 );

		TransformHandle* ahandle = &handles.at(a);
		TransformHandle* bhandle = nullptr;
		if( b >= 0 )
			bhandle = &handles.at(b);

		//if( bhandle && bhandle->prev >= 0 )
			//handles.at(bhandle->prev).next = -1;

		if( bhandle )
		{
			if( bhandle->prev != a )
				lastIndices[handle.instanceIndex].at(handle.modelIndex) = bhandle->prev;
			else
			{
				lastIndices[handle.instanceIndex].at(handle.modelIndex) = b;
			}
		}
		else
		{
			assert( a == b );
			lastIndices[handle.instanceIndex].at(handle.modelIndex) = -1;
		}

		if( ahandle->prev >= 0 )
			handles.at(ahandle->prev).next = b;
		if( ahandle->next >= 0 )
		{
			if( ahandle->next != b )
				handles.at(ahandle->next).prev = b;
		}
		if( bhandle )
		{
			if( bhandle->prev >= 0 )
				handles.at(bhandle->prev).next = a;
			if( bhandle->next >= 0 )
				handles.at(bhandle->next).prev = a;
		}

		if( bhandle )
		{
			int tempPrev = ahandle->prev;
			int tempNext = ahandle->next;

			if( bhandle->prev == a )
				ahandle->prev = b;
			else
				ahandle->prev = bhandle->prev;
			ahandle->next = bhandle->next;

			bhandle->prev = tempPrev;
			if( bhandle->prev == a )
				bhandle->next = a;
			else
				bhandle->next = tempNext;
		}
		else
		{
			ahandle->prev = ahandle->next = -1;
		}

		if( a != b && bhandle )
		{
			TransformStruct* atransform = instances[ahandle->instanceIndex]->at(ahandle->modelIndex).getTransform(ahandle->transformIndex);
			TransformStruct* btransform = nullptr;
			if( bhandle )
				btransform = instances[bhandle->instanceIndex]->at(bhandle->modelIndex).getTransform(bhandle->transformIndex);

			glm::mat4 amatrix = instances[ahandle->instanceIndex]->at(ahandle->modelIndex).getWorldMatrix(ahandle->transformIndex);
			glm::mat4 bmatrix;
			if( bhandle )
				bmatrix = instances[bhandle->instanceIndex]->at(bhandle->modelIndex).getWorldMatrix(bhandle->transformIndex);

			Animation* aanimation, *banimation;
			if( handle.instanceIndex == INSTANCE_ANIMATED )
			{
				aanimation = instances[INSTANCE_ANIMATED]->at(ahandle->modelIndex).getAnimation(ahandle->transformIndex);
				banimation = instances[INSTANCE_ANIMATED]->at(bhandle->modelIndex).getAnimation(bhandle->transformIndex);
			}

			int tempTransformIndex = ahandle->transformIndex;
			ahandle->transformIndex = bhandle->transformIndex;
			bhandle->transformIndex = tempTransformIndex;

			instances[bhandle->instanceIndex]->at(bhandle->modelIndex).setTransform(bhandle->transformIndex, *btransform);
			instances[ahandle->instanceIndex]->at(ahandle->modelIndex).setTransform(ahandle->transformIndex, *atransform);

			instances[bhandle->instanceIndex]->at(bhandle->modelIndex).setWorldMatrix(bhandle->transformIndex, bmatrix);
			instances[ahandle->instanceIndex]->at(ahandle->modelIndex).setWorldMatrix(ahandle->transformIndex, amatrix);

			if( handle.instanceIndex == INSTANCE_ANIMATED )
			{
				instances[bhandle->instanceIndex]->at(bhandle->modelIndex).setAnimation(bhandle->transformIndex, banimation);
				instances[ahandle->instanceIndex]->at(ahandle->modelIndex).setAnimation(ahandle->transformIndex, aanimation);
			}
		}

		if( firstIndices[handle.instanceIndex].at(handle.modelIndex) == index )
			firstIndices[handle.instanceIndex].at(handle.modelIndex) = b;
		
		handle.active = false;
		instances[handle.instanceIndex]->at(handle.modelIndex).decrActiveTransforms();
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