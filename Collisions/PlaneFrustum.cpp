#include "PlaneFrustum.h"


namespace Collisions
{
	PlaneFrustum::PlaneFrustum()
	{
	}


	PlaneFrustum::~PlaneFrustum()
	{
	}

	void PlaneFrustum::setPlane3Points(const glm::vec3 & first, const glm::vec3 & second, const glm::vec3 & third)
	{
		glm::vec3 helper1, helper2;
		helper1 = first - second; // doing vectors from (2->1) and (2->3)
		helper2 = third - second;

		this->normal = glm::normalize(glm::cross(helper2, helper1));

		this->point = second;

		this->d = -(glm::dot(this->normal, this->point));
	}

	void PlaneFrustum::setNormalAndPoint(const glm::vec3 & normal, const glm::vec3 & point)
	{
		this->normal = glm::normalize(normal);
		this->point = point;
		this->d = -(glm::dot(this->normal, point));

	}

	float PlaneFrustum::distance(const glm::vec3 & point)
	{
		return (this->d + glm::dot(this->normal, point));
	}

	glm::vec3 PlaneFrustum::getNormal() const
	{
		return this->normal;
	}
}