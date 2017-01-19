#pragma once
#include "BaseIncludes.h"
#include "../CollisionChecker.h"
#include "Camera.h"
#include "Ray.h"
#include "Debug.h"
#include "LevelActorHandler.h"
#include "Inputs.h"


class LevelGizmo {
	enum GizmoLocation {
		X,
		Y,
		Z,
		NUM_LOC
	};

	struct GizmoPlane
	{
		glm::vec3 center;
		glm::vec3 direction;
	};
private:
	OBBCollider obbGizmos[NUM_LOC];
	RayCollider rayGizmos[NUM_LOC];
	glm::vec3 colorLinkerBase[NUM_LOC];
	glm::vec3 colorLinker[NUM_LOC];
	glm::vec3 directions[NUM_LOC];
	GizmoPlane gizmoPlanes[NUM_LOC];
	glm::vec3 colorSelected;
	GizmoLocation selectedGizmo;

	Camera* cameraRef;
	CollisionChecker* checker;
	Debug* debugRef;
	Inputs* inputRef;
	void setColors();
	void setDirections();
	void setPlanes();
	LevelActorHandler* actorHandlerRef;
	const float baseDiffDistace = 2.0f;
	const float baseCamDistance = 20.f;
	const float baseSize = .2f;
	const float basePercGrow = 1.8f;
	const float gizmoEpsilon = .0001f;
	float bigVal;

	void setSelectedGizmo(GizmoLocation location);
	void deSelectGizmo();
	void createNewRays();

	glm::vec3 cameraOldPos;
	void updateFromCameraPos(LevelActor* selectedActor);
	void updateGizmoTranslation(LevelActor* selectedActor);
	void updateGizmoPlanes();

	glm::vec3 hitPointOffset;

	bool rayPlaneIntersection(glm::vec3& intersectionPoint);
public:
	LevelGizmo();
	~LevelGizmo();

	void drawGizmo();
	void addVariables(Debug* debug, Camera* camera, Inputs* input);
	void update();
	bool checkRay();
	bool onMouseDown();
	void onMouseUp();

};