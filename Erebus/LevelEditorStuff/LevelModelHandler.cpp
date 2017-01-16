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
	modelToActorID.resize(100);
	modelInstanceAgentIDs.resize(100);
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

std::vector<std::vector<int>>* LevelModelHandler::getModelToActorID()
{
	return &this->modelToActorID;
}

std::vector<std::vector<std::pair<int, unsigned int>>>* LevelModelHandler::getModelInstanceAgentIDs()
{
	return &this->modelInstanceAgentIDs;
}

int LevelModelHandler::loadModel(std::string modelName, unsigned int &actorID) {
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

	//this->modelToActorID[index].push_back(actorID);
	int transformIndice = this->transformHandlerRef->bindTransform(&models.at(index));
	std::pair<int, unsigned int> agentInfo;
	agentInfo.first = transformIndice;
	agentInfo.second = actorID;
	modelInstanceAgentIDs[index].push_back(agentInfo);
	//modelInstanceAgentIDs[index].first = transformIndice;
	//modelInstanceAgentIDs[index].second = actorID;

	return transformIndice;

}