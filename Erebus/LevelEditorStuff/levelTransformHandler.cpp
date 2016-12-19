#include "LevelTransformHandler.h"



LevelTransformHandler::LevelTransformHandler()
{
}

LevelTransformHandler::LevelTransformHandler(Gear::GearEngine* engineRef) {
	for (int i = 0; i < nrOfTransforms; i++)
		transforms[i].setThePtr(&allTransforms[i]);
	boundTransforms = 0;

	engineRef->allocateWorlds(nrOfTransforms);

	engineRef->bindTransforms(&allTransforms, &boundTransforms);
}


LevelTransformHandler::~LevelTransformHandler()
{
	delete[] allTransforms;
	delete[] transforms;
}

Transform* LevelTransformHandler::getAllTransforms() {
	return this->transforms;
}
TransformStruct* LevelTransformHandler::getAllTransformStructs() {
	return this->allTransforms;
}

void LevelTransformHandler::bindTransform(ModelInstance* model) {
	model->worldIndices.push_back(boundTransforms);				//Assign a model to a new transformID
	boundTransforms++;											//Increment the total of transforms/Model instances in the world
}

Transform* LevelTransformHandler::getTransformAt(const int& bindIndex) {
	return &this->transforms[bindIndex];
}