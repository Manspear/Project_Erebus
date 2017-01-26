#pragma once
#include "BaseIncludes.h"
#include "Inputs.h"
#include "GearStructs.h"

#define BASE_CAM_SPEED 8.0f
#define TURBO_CAM_SPEED 13.0f

class Camera 
{
public:
	GEAR_API Camera();
	GEAR_API Camera(float FoV, float aspectRatio, float nearPlane, float farPlane, Inputs* in);
	GEAR_API ~Camera();

	GEAR_API void camUpdate(glm::vec3 newPos, glm::vec3 newDir, float dt);	//old old function, was made before we had a playable character to control, DONT USE
	GEAR_API void camFreeUpdate();											
	GEAR_API void follow(glm::vec3 point, glm::vec3 direction, float distance, float angle, float xOffset, float yOffset, float FoV);	//Used from lua, follows a point, from a direction with a distance and offsets, FoV is the field of view in radians. (3.14/2 is 90 degrees :) )
	GEAR_API void setCamera(glm::vec3 campos, glm::vec3 lookPos);	//sets the position and look direction of the camera, use with care!
	GEAR_API void setPosition(glm::vec3 position);					//sets the position of the camera
	GEAR_API void setHeight(float h);								//sets the height of the camera, is atm used for camera to height map collisions
	GEAR_API void setprojection(glm::mat4 m);
	GEAR_API void setView(glm::mat4 m);
	GEAR_API glm::mat4 getViewPers();								
	GEAR_API glm::mat4 getViewMatrix();
	GEAR_API glm::mat4 getProjectionMatrix();
	//returns position of camera
	GEAR_API glm::vec3 getPosition();
	//returns look direction of camera
	GEAR_API glm::vec3 getDirection();								
	GEAR_API void updateLevelEditorCamera(float dt);
	GEAR_API float getNearPlane();
	GEAR_API float getFarPlane();
	GEAR_API float getFoV() { return this->FoV; }
	GEAR_API void setDirection(glm::vec3 dir) { this->camDirection = dir; }
	/**
		Returns a projection matrix with near plane and far plane being the inputs

		@param Near and far plane distances from the camera
		@return Returns a projection matrix
	*/
	GEAR_API glm::mat4 getProjectionWithNearFar(float nearPlane, float farPlane);
	/**
	Calculates the center and radius of a bounding sphere using 3 points

	@param a,b and c points for the frustrum. center and radius are used as return values
	@return Returns the center and radius of a bounding sphere
	*/
	GEAR_API void FindBoundingSphere(glm::vec3 a, glm::vec3 b, glm::vec3 c, glm::vec3& center, float& radius);
private:
	Inputs *inputs;
	bool freeCam;
	float horizontalAngle;
	float verticalAngle;
	float camSpeed;
	int dir;
	bool inLevelEditor;
	bool inLevelEditorMoveMouse;
	float FoV;

	float aspectRatio;
	float nearPlane;
	float farPlane;

	glm::vec3 lookPos;
	glm::vec3 camDirection;
	glm::vec3 camPosition;
	glm::vec3 camUp;
	glm::mat4 viewMat;
	glm::mat4 projectionMat;

	
};