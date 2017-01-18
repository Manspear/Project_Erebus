#pragma once
#include "BaseIncludes.h"
#include "../CollisionChecker.h"
#include "Camera.h"
#include "Ray.h"
#include "Debug.h"
#include "LevelActorHandler.h"


class LevelGizmo {
	enum GizmoLocation {
		X,
		Y,
		Z,
		NUM_LOC
	};
private:
	OBBCollider obbGizmos[NUM_LOC];
	RayCollider rayGizmos[NUM_LOC];
	glm::vec3 colorLinkerBase[NUM_LOC];
	glm::vec3 colorLinker[NUM_LOC];
	glm::vec3 colorSelected;
	GizmoLocation selectedGizmo;

	Camera* cameraRef;
	CollisionChecker* checker;
	Debug* debugRef;
	Inputs* inputRef;
	void setColors();
	LevelActorHandler* actorHandlerRef;
	const float baseDiffDistace = 3.0f;
	const float baseCamDistance = 10.f;
	const float baseSize = .3f;
	const float basePercGrow = 1.8f;
	float bigVal;

	void setSelectedGizmo(GizmoLocation location);
	void deSelectGizmo();
	void createNewRays();
public:
	LevelGizmo();
	~LevelGizmo();

	void drawGizmo();
	void addVariables(Debug* debug, Camera* camera, Inputs* input);
	void update();
	bool checkRay();
	bool clickUpdate();

};