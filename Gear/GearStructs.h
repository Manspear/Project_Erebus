#pragma once
#include "glm\glm.hpp"
struct Frustum {
	glm::vec3 nlb; //(near - left - top)
	glm::vec3 nlt; //(near - left - buttom)
	glm::vec3 nrb; //(near - right - buttom)
	glm::vec3 nrt; //(near - right - top)
	glm::vec3 flb; //(far - left - buttom)
	glm::vec3 flt; //(far - left - top)
	glm::vec3 frb; //(far - right - buttom)
	glm::vec3 frt; //(far - right - top)
	glm::vec3 center;
	float radius;
};