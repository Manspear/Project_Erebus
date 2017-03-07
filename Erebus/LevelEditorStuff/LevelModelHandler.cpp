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
	//modelToActorID.resize(100);
	modelInstanceAgentIDs.resize(200);
	
	this->animatedModels = std::vector<AnimatedInstance>();
	this->models = std::vector<ModelInstance>();
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

/*std::vector<std::vector<int>>* LevelModelHandler::getModelToActorID()
{
	return &this->modelToActorID;
}*/

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




		if (models.size() > 62 && models.size()<68) {
			std::cout << "at: " << models.size() << " name: " << modelName << std::endl;
		}
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

void LevelModelHandler::replaceModel( std::string modelName, unsigned int actorID )
{
	std::string location = "Models/" + modelName + ".model";
	ModelAsset* asset = assetsRef->load<ModelAsset>(location);

	if( asset )
	{
		// remove old instance
		std::vector<std::pair<int,unsigned int>>::iterator instanceAgentIT;
		int instanceAgentIndex = -1;
		ModelInstance* oldInstance = nullptr;
		int oldWorldIndex = -1;
		for( int i=0; i<modelInstanceAgentIDs.size() && !oldInstance; i++ )
		{
			for( int j=0; j<modelInstanceAgentIDs[i].size() && !oldInstance; j++ )
			{
				if( modelInstanceAgentIDs[i][j].second == actorID )
				{
					oldInstance = &models[i];
					oldWorldIndex = modelInstanceAgentIDs[i][j].first;

					instanceAgentIT = modelInstanceAgentIDs[i].begin() + j;
					instanceAgentIndex = i;
				}
			}
		}

		if( oldInstance )
		{
			std::vector<int>::iterator indexIT = oldInstance->worldIndices.end();
			for( std::vector<int>::iterator it = oldInstance->worldIndices.begin(); it != oldInstance->worldIndices.end() && indexIT == oldInstance->worldIndices.end(); it++ )
			{
				if( *it == oldWorldIndex )
					indexIT = it;
			}

			if( indexIT != oldInstance->worldIndices.end() )
				oldInstance->worldIndices.erase( indexIT );

			modelInstanceAgentIDs[instanceAgentIndex].erase(instanceAgentIT);
		}

		// add new instance
		int index = -1;
		for( int i=0; i<models.size(); i++ )
			if( models.at(i).asset == asset )
				index = i;

		if( index < 0 )
		{
			ModelInstance instance;
			instance.asset = asset;

			index = models.size();
			models.push_back( instance );
		}

		models[index].worldIndices.push_back(oldWorldIndex);
		std::pair<int, unsigned int> agentInfo;
		agentInfo.first = oldWorldIndex;
		agentInfo.second = actorID;
		modelInstanceAgentIDs[index].push_back(agentInfo);
	}
}

void LevelModelHandler::removeModel( int transformID, int parentID )
{
	bool found = false;
	int modelIndex = -1;
	int worldIndex = -1;
	for( int i=0; i<models.size() && !found; i++ )
	{
		for( int j=0; j<models[i].worldIndices.size(); j++ )
		{
			if( models[i].worldIndices[j] == transformID )
			{
				modelIndex = i;
				worldIndex = j;
				found = true;
			}
		}
	}

	if( found )
	{
		models[modelIndex].worldIndices.erase( models[modelIndex].worldIndices.begin() + worldIndex );

		for (size_t i = 0; i < modelInstanceAgentIDs.at(modelIndex).size(); i++)
		{
			if (modelInstanceAgentIDs.at(modelIndex).at(i).second == parentID) {
				modelInstanceAgentIDs.at(modelIndex).erase(modelInstanceAgentIDs.at(modelIndex).begin() + i);
				i = modelInstanceAgentIDs.at(modelIndex).size();
			}
		}
	}
}