#pragma once

#include "BaseIncludes.h"
#include "Assets.h"
#include "ModelAsset.h"
#include "HeightMap.h"
#include <vector>
#include <string>
#include "AntTweakBar.h"
#include "LevelActorHandler.h"
#include "../RNG.h"



class LevelBrushHandler
{
public:

	~LevelBrushHandler();

	
	static LevelBrushHandler* getInstance();
	static void deleteInstance();
	static void resetInstance();

	
	void updateBrushBar(); //nothing here right now

	void setIsRotation(bool t_f);

	bool getIsRotation();

	void undoLastBrushAction(); //deletes actors placed on last mousebutton1 down

	
	void setTweakBar(TweakBar* brushBar);
	void update(Gear::GearEngine* engine, Camera* camera,const double deltaTime, Inputs* inputs, Debug* debug);

private:
	int numSavedPositions = 1000;

	float PIx2 = 6.2832;
	float radius = 1;
	float VacancyRadius = 3;
	float OBJTiltTolerance = 0.25;
	float yOffset = 0;
	
	float maxScale = 1;
	float minScale = 1;

	double timer = 0;

	bool preventOverDraw = false; //Allow Meshes to be drawn in the same place
	bool isRotation = false;

	std::vector<std::vector<LevelActor*>> actorsMade; //contains all actors created with brush
	std::vector<LevelActor*> actorsMadeThisKeyPress; //contains all actors made on this keypress;

	
	std::vector<glm::vec3> earlierPositions; //max size of this->numSavedPositions
	std::string saveAsType = "Brush";
	LevelBrushHandler();

	
	TweakBar* actionBar;
	std::vector<std::string> prefabs;
	std::vector<bool> prefabSelection;


	TweakBar* brushBar;

	static LevelBrushHandler* g_instance;
};