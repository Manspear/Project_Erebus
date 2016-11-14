#pragma once
#include "BaseIncludes.h"


class Camera 
{
public:
	Camera();
	Camera(float FoV, float aspectRatio, float nearPlane, float farPlane);
	~Camera();

	void camUpdate(glm::vec3 newPos, glm::vec3 newDir);	
	glm::mat4 getViewPers();
private:
	glm::vec3 camDirection;
	glm::vec3 camPosition;
	glm::vec3 camUp;
	glm::mat4 viewMat;
	glm::mat4 projectionMat;
};