#pragma once
#include "BaseIncludes.h"


class Camera 
{
public:
	Camera();
	~Camera();

	glm::mat4 getViewPers();
private:
	glm::mat4 viewPerspective;
};