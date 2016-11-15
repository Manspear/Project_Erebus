#pragma once
#include "BaseIncludes.h"
#include "Inputs.h"

class Camera 
{
public:
	GEAR_API Camera();
	GEAR_API Camera(float FoV, float aspectRatio, float nearPlane, float farPlane, Inputs* in);
	GEAR_API ~Camera();

	GEAR_API void camUpdate(glm::vec3 newPos, glm::vec3 newDir, float dt);
	GEAR_API glm::mat4 getViewPers();
	GEAR_API glm::mat4 getViewMatrix();
	GEAR_API glm::mat4 getProjectionMatrix();
	GEAR_API glm::vec3 getPosition();
	GEAR_API glm::vec3 getDirection();
private:
	Inputs *inputs;
	bool freeCam;
	float horizontalAngle;
	float verticalAngle;
	float camSpeed;

	glm::vec3 camDirection;
	glm::vec3 camPosition;
	glm::vec3 camUp;
	glm::mat4 viewMat;
	glm::mat4 projectionMat;
};