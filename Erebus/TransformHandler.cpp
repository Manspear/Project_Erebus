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
	Gear::GearEngine* gearEngine,
	std::vector<ModelInstance>* models,
	std::vector<ModelInstance>* animatedModels,
	std::vector<ModelInstance>* forwardModels,
	std::vector<ModelInstance>* blendingModels
)
{
	instances[INSTANCE_DYNAMIC] = models;
	instances[INSTANCE_ANIMATED] = animatedModels;
	instances[INSTANCE_FORWARD] = forwardModels;
	instances[INSTANCE_BLENDING] = blendingModels;

	for( int i=0; i<MAX_INSTANCE_TYPES; i++ )
		lastIndices[i] = -1;
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
		instance.asset = asset;

		modelIndex = models->size();
		models->push_back( instance );
	}

	int transformIndex = models->at(modelIndex).transforms.size();
	
	models->at(modelIndex).transforms.push_back( DEFAULT_TRANSFORM );
	models->at(modelIndex).worldMatrices.push_back( glm::mat4() );
	models->at(modelIndex).activeTransforms++;

	TransformHandle handle = {};
	handle.instanceIndex = INSTANCE_DYNAMIC;
	handle.modelIndex = modelIndex;
	handle.transformIndex = transformIndex;
	handle.active = true;

	TransformHandle handle =
	{
		INSTANCE_DYNAMIC,
		modelIndex,
		transformIndex,
		true
	};

	int result = handles.size();
	handle.prev = lastIndices[INSTANCE_DYNAMIC];
	handle.next = -1;
	if( lastIndices[INSTANCE_DYNAMIC] >= 0 )
		handles.at(lastIndices[INSTANCE_DYNAMIC]).next = result;
	lastIndices[INSTANCE_DYNAMIC] = result;

	handles.push_back( handle );

	return result;
}

int TransformHandler::bindAnimatedInstance( ModelAsset* asset, Animation* animation )
{
	std::vector<ModelInstance>* models = instances[INSTANCE_ANIMATED];

	int modelIndex = findModelIndex( INSTANCE_ANIMATED, asset );
	if( modelIndex < 0 )
	{
		ModelInstance instance;
		instance.asset = asset;

		modelIndex = models->size();
		models->push_back( instance );
	}

	animation->setAsset( asset );

	int transformIndex = models->at(modelIndex).transforms.size();

	models->at(modelIndex).transforms.push_back( DEFAULT_TRANSFORM );
	models->at(modelIndex).worldMatrices.push_back( glm::mat4() );
	models->at(modelIndex).animations.push_back( animation );
	models->at(modelIndex).activeTransforms++;

	TransformHandle handle =
	{
		INSTANCE_ANIMATED,
		modelIndex,
		transformIndex,
		true
	};

	int result = handles.size();
	handle.prev = lastIndices[INSTANCE_ANIMATED];
	handle.next = -1;
	if( lastIndices[INSTANCE_ANIMATED] >= 0 )
		handles.at(lastIndices[INSTANCE_ANIMATED]).next = result;
	lastIndices[INSTANCE_ANIMATED] = result;

	handles.push_back( handle );
	return result;
}

int TransformHandler::bindForwardInstance( ModelAsset* asset )
{
	std::vector<ModelInstance>* models = instances[INSTANCE_FORWARD];

	int modelIndex = findModelIndex( INSTANCE_FORWARD, asset );
	if( modelIndex < 0 )
	{
		ModelInstance instance;
		instance.asset = asset;
	
		modelIndex = models->size();
		models->push_back( instance );
		gearEngine->uniValues.push_back( { "NULL", {0,0} } );
	}

	int transformIndex = models->at(modelIndex).transforms.size();

	models->at(modelIndex).transforms.push_back( DEFAULT_TRANSFORM );
	models->at(modelIndex).worldMatrices.push_back( glm::mat4() );
	models->at(modelIndex).activeTransforms++;
	
	TransformHandle handle =
	{
		INSTANCE_FORWARD,
		modelIndex,
		transformIndex,
		true
	};

	int result = handles.size();
	handle.prev = lastIndices[INSTANCE_FORWARD];
	handle.next = -1;
	if( lastIndices[INSTANCE_FORWARD] >= 0 )
		handles.at(lastIndices[INSTANCE_FORWARD]).next = result;
	lastIndices[INSTANCE_FORWARD] = result;

	handles.push_back( handle );
	return result;
}

int TransformHandler::bindBlendingInstance( ModelAsset* asset )
{
	std::vector<ModelInstance>* models = instances[INSTANCE_BLENDING];

	int modelIndex = findModelIndex( INSTANCE_BLENDING, asset );
	if( modelIndex < 0 )
	{
		ModelInstance instance;
		instance.asset = asset;

		modelIndex = models->size();
		models->push_back( instance );

		TextureBlendings tBlend;
		gearEngine->textureBlend.push_back( tBlend );
	}

	int transformIndex = models->at(modelIndex).transforms.size();

	models->at(modelIndex).transforms.push_back( DEFAULT_TRANSFORM );
	models->at(modelIndex).worldMatrices.push_back( glm::mat4() );
	models->at(modelIndex).activeTransforms++;
	gearEngine->textureBlend.at(modelIndex).modelIndex = modelIndex;

	TransformHandle handle =
	{
		INSTANCE_BLENDING,
		modelIndex,
		transformIndex,
		true
	};

	int result = handles.size();
	handle.prev = lastIndices[INSTANCE_BLENDING];
	handle.next = -1;
	if( lastIndices[INSTANCE_BLENDING] >= 0 )
		handles.at(lastIndices[INSTANCE_BLENDING]).next = result;
	lastIndices[INSTANCE_BLENDING] = result;

	handles.push_back( handle );
	return result;
}

void TransformHandler::activateTransform( int index )
{
	assert( index >= 0 && index < handles.size() );

	TransformHandle& handle = handles.at(index);
	std::vector<ModelInstance>* models = instances[handle.instanceIndex];

	if( !handle.active )
	{
		int a = index;
		int b = lastIndices[handle.instanceIndex];

		TransformHandle* ahandle = &handles.at(a);
		TransformHandle* bhandle = nullptr;
		if( b >= 0 )
			bhandle = &handles.at(b);

		if( bhandle )
			bhandle->next = a;

		ahandle->prev = b;
		ahandle->next = -1;

		int newTransformIndex = models->at(handle.modelIndex).activeTransforms;
		ahandle->transformIndex = newTransformIndex;
		models->at(handle.modelIndex).activeTransforms++;
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
		int b = lastIndices[handle.instanceIndex];

		TransformHandle* ahandle = &handles.at(a);
		TransformHandle* bhandle = nullptr;
		if( b >= 0 )
			bhandle = &handles.at(b);

		TransformStruct* atransform = &instances[ahandle->instanceIndex]->at(ahandle->modelIndex).transforms.at(ahandle->transformIndex);
		TransformStruct* btransform = nullptr;
		if( bhandle )
			btransform = &instances[bhandle->instanceIndex]->at(bhandle->modelIndex).transforms.at(bhandle->transformIndex);

		glm::mat4 amatrix = instances[ahandle->instanceIndex]->at(ahandle->modelIndex).worldMatrices.at(ahandle->transformIndex);
		glm::mat4 bmatrix;
		if( bhandle )
			bmatrix = instances[bhandle->instanceIndex]->at(bhandle->modelIndex).worldMatrices.at(bhandle->transformIndex);

		if( bhandle && bhandle->prev >= 0 )
			handles.at(bhandle->prev).next = a;

		if( bhandle )
		{
			bhandle->prev = ahandle->prev;
			bhandle->next = ahandle->next;

			int tempTransformIndex = ahandle->transformIndex;
			ahandle->transformIndex = bhandle->transformIndex;
			bhandle->transformIndex = tempTransformIndex;

			instances[bhandle->instanceIndex]->at(bhandle->modelIndex).transforms.at(bhandle->transformIndex) = *btransform;

			instances[bhandle->instanceIndex]->at(bhandle->modelIndex).worldMatrices.at(bhandle->transformIndex) = bmatrix;
		}

		ahandle->prev = ahandle->next = -1;
		
		handle.active = false;
		instances[handle.instanceIndex]->at(handle.modelIndex).activeTransforms--;
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

	return &instances[handle.instanceIndex]->at(handle.modelIndex).transforms.at(handle.transformIndex);
}

int TransformHandler::findModelIndex( int instanceIndex, ModelAsset* asset )
{
	int result = -1;
	for( int i=0; i<instances[instanceIndex]->size() && result < 0; i++ )
		if( instances[instanceIndex]->at(i).asset == asset )
			result = i;
	return result;
}