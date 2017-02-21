#pragma once

#include "BaseIncludes.h"
#include "LevelActorHandler.h"


class LevelWallColliderHandle
{
private:
	static LevelWallColliderHandle* g_instance;

	LevelHeightmap* selectedHeightMap;
	CollisionChecker* checker;

	LevelHeightmap::CornerObjects* lastSelectedCorner, *currentSelectedCorner;

	OBBCollider* lastCreatedColider;
	OBBCollider* currentCreatedColider;
	
	LevelHeightmap::CornerObjects* selectHitboxFromHM(Camera* camera, Inputs* inputs);

	void createColiderObject();
	void assignedNewCorner(LevelHeightmap::CornerObjects* newCorner);
	void resetSelection();

	OBBCollider* createOBBColider();
	float col_width,
		col_height,
		col_offset;

	void tweakOBBToLastCreated();
	void createActorWithCollider(OBBCollider* collider);

	std::vector<LevelActor*> recentCreatedWalls;

public:
	glm::vec3 resetColor;
	LevelWallColliderHandle();
	~LevelWallColliderHandle();
	static LevelWallColliderHandle* getInstance();
	static void deleteInstance();
	static void resetInstance();

	

	void clicked(Camera* camera, Inputs* inputs);
	void update(Inputs* inputs, Debug* debug);
};

