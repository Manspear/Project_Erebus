#include "Camera.h"

Camera::Camera()
{
	glm::mat4 pers = glm::perspective(45.f, 1280.f / 720.f, 0.f, 20.f);
	viewPerspective = pers * glm::lookAt(glm::vec3(0, 0, 2.0), glm::vec3(0, 0, 0), glm::vec3(0, 1, 0)) ;
	
	/*viewPerspective = glm::mat4({1, 0, 0, 0},
								{ 0, 1, 0, 0 },
								{0, 0, 1, 1},
								{0, 0, 0, 1});
	glm::mat4 oeatjkh = glm::mat4(1) * glm::mat4(1);*/
}

Camera::~Camera()
{

}

glm::mat4 Camera::getViewPers()
{
	return viewPerspective;
}