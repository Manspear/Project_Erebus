#include "LevelModelHandler.h"
LevelModelHandler* LevelModelHandler::m_instance = nullptr;


LevelModelHandler::LevelModelHandler()
{
}

LevelModelHandler::LevelModelHandler(LevelTransformHandler* transHandlerRef,
	Gear::GearEngine* gearRef, Importer::Assets* assetRef) {
	this->transformHandlerRef = transHandlerRef;
	this->engineRef = gearRef;
	this->assetsRef = assetRef;
}

LevelModelHandler::~LevelModelHandler()
{
}

std::vector<ModelInstance>* LevelModelHandler::getModels() {
	return &this->models;
}
std::vector<AnimatedInstance>* LevelModelHandler::getAnimatedModels() {
	return &this->animatedModels;
}



int LevelModelHandler::loadModel(std::string modelName) {
	std::string location = "Models/" + modelName + ".model";
	ModelAsset* testModel = assetsRef->load<ModelAsset>(location);	//Loads model
	int result = engineRef->generateWorldMatrix();								//Generates a worldmatrix

	int index = -1;															//Checks wether the models allready has loaded before
	for (int i = 0; i<models.size(); i++)
		if (models.at(i).asset == testModel)
			index = i;														//It has
	if (index == -1)														//If the model doesnt exist in the list, load it in and insert it into the list of models
	{
		ModelInstance instance;
		instance.asset = testModel;

		index = models.size();
		models.push_back(instance);
	}

	


	return this->transformHandlerRef->bindTransform(&models.at(index));
	//Models.at(index) is the model that just loaded
	//
}