// influenced by LightHouse3D frustum culling tutorial
#pragma once
#include "glm\glm.hpp"
class PlaneFrustum
{
public:
	PlaneFrustum();
	~PlaneFrustum();


	//setters
	// This function creates a plane from 3 points
	// set3Points assume that points are in counter clockwise order
	void setPlane3Points(const glm::vec3& first, const glm::vec3& second, const glm::vec3& third);
	void setNormalAndPoint(const glm::vec3& normal, const glm::vec3& point);
	float distance(const glm::vec3& point);



	//getters
	glm::vec3 getNormal() const;

private:
	glm::vec3 normal, point;
	float d;

	//helpers
};

