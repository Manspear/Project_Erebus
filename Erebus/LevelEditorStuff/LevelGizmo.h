#pragma once
#include "BaseIncludes.h"
#include "../CollisionChecker.h"
#include "Camera.h"
#include "Ray.h"
#include "Debug.h"
#include "LevelActorHandler.h"
#include "Inputs.h"

enum GizmoMode {
	POSITION,
	ROTATION,
	SCALE,
	NUM_MODS
};
class LevelGizmo {
	enum GizmoLocation {
		X,
		Y,
		Z,
		XZ,
		XY,
		ZY,
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

	float scaleSnap, rotSnap, posSnap;
	float rotationSnapPlacements[11];
	const float rotationMulti = .05f;
	glm::vec3 realPos, realRot, realScale;

	void setSelectedGizmo(GizmoLocation location);
	void deSelectGizmo();
	void createNewRays();

	glm::vec3 cameraOldPos;
	void updateFromCameraPos(LevelActor* selectedActor);
	void updateGizmoTranslation(LevelActor* selectedActor);
	void updateGizmoRotation(LevelActor* selectedActor);
	void updateGizmoScale(LevelActor* selectedActor);
	
	void updateGizmoPlanes();
	float roationSnap(const float oldPos, const float diff, GizmoLocation location);

	glm::vec3 hitPointOffset;

	bool rayPlaneIntersection(glm::vec3& intersectionPoint);

	GizmoMode selectedMode;
	glm::vec3 oldIntersectionPoint;
	bool intersectionPointChangedThisFrame;

	
	bool shouldSnap;
	void onSnapChange();

	float translationUpdate(const glm::vec3&intersection, GizmoLocation location, const glm::vec3& pos);
	float rotationUpdate(const float& diff, GizmoLocation location, const glm::vec3& rot);
	float scaleUpdate(const float& diff, GizmoLocation location, const glm::vec3& scale);
	glm::vec3 imaginaryRotation;
	glm::vec3 imaginaryScale;

	//void updateGizmoFromOrientation(GizmoLocation location, GizmoMode mode);
public:
	LevelGizmo();
	~LevelGizmo();

	void drawGizmo();
	void addVariables(Debug* debug, Camera* camera, Inputs* input);
	void update();
	bool checkRay();
	bool onMouseDown();
	void onMouseUp();
	void setGizmoMode(GizmoMode mode);
	void setSnappingMode(bool mode);

};

/* POSITION SNAP
switch (selectedGizmo) {
case GizmoLocation::X:
xAmount = (int)(intersection[GizmoLocation::X] - (percentageFromBase * (directions[GizmoLocation::X] * this->baseDiffDistace)[GizmoLocation::X]));
xAmount = xAmount - (fmod(xAmount,posSnap));
newPos[GizmoLocation::X] = xAmount;
break;
case GizmoLocation::Y:
yAmount = (int)(intersection[GizmoLocation::Y] - (percentageFromBase * (directions[GizmoLocation::Y] * this->baseDiffDistace)[GizmoLocation::Y]));
yAmount = yAmount - (fmod(yAmount, posSnap));
newPos[GizmoLocation::Y] = yAmount;
break;
case GizmoLocation::Z:
zAmount = (int)(intersection[GizmoLocation::Z] - (percentageFromBase * (directions[GizmoLocation::Z] * this->baseDiffDistace)[GizmoLocation::Z]));
zAmount = zAmount - (fmod(zAmount, posSnap));
newPos[GizmoLocation::Z] = zAmount;
break;
case GizmoLocation::XZ:
xAmount = (int)(intersection[GizmoLocation::X] - (percentageFromBase * (directions[GizmoLocation::X] * this->baseDiffDistace)[GizmoLocation::X]));
xAmount = xAmount - (fmod(xAmount, posSnap));
newPos[GizmoLocation::X] = xAmount;

zAmount = (int)(intersection[GizmoLocation::Z] - (percentageFromBase * (directions[GizmoLocation::Z] * this->baseDiffDistace)[GizmoLocation::Z]));
zAmount = zAmount - (fmod(zAmount, posSnap));
newPos[GizmoLocation::Z] = zAmount;
break;
case GizmoLocation::XY:
xAmount = (int)(intersection[GizmoLocation::X] - (percentageFromBase * (directions[GizmoLocation::X] * this->baseDiffDistace)[GizmoLocation::X]));
xAmount = xAmount - (fmod(xAmount, posSnap));
newPos[GizmoLocation::X] = xAmount;

yAmount = (int)(intersection[GizmoLocation::Y] - (percentageFromBase * (directions[GizmoLocation::Y] * this->baseDiffDistace)[GizmoLocation::Y]));
yAmount = yAmount - (fmod(yAmount, posSnap));
newPos[GizmoLocation::Y] = yAmount;
break;
case GizmoLocation::ZY:
yAmount = (int)(intersection[GizmoLocation::Y] - (percentageFromBase * (directions[GizmoLocation::Y] * this->baseDiffDistace)[GizmoLocation::Y]));
yAmount = yAmount - (fmod(yAmount, posSnap));
newPos[GizmoLocation::Y] = yAmount;

zAmount = (int)(intersection[GizmoLocation::Z] - (percentageFromBase * (directions[GizmoLocation::Z] * this->baseDiffDistace)[GizmoLocation::Z]));
zAmount = zAmount - (fmod(zAmount, posSnap));
newPos[GizmoLocation::Z] = zAmount;
break;
default:
break;
}
*/