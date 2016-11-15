#pragma once
#include "BaseIncludes.h"


class Camera 
{
public:
	GEAR_API Camera();
	GEAR_API Camera(float FoV, float aspectRatio, float nearPlane, float farPlane);
	GEAR_API ~Camera();

	GEAR_API void camUpdate(glm::vec3 newPos, glm::vec3 newDir);
	GEAR_API glm::mat4 getViewPers();
	GEAR_API glm::mat4 getView();
	GEAR_API glm::mat4 getPers();

private:
	glm::vec3 camDirection;
	glm::vec3 camPosition;
	glm::vec3 camUp;
	glm::mat4 viewMat;
	glm::mat4 projectionMat;
};