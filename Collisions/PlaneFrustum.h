// influenced by LightHouse3D frustum culling tutorial
#pragma once
#include "glm\glm.hpp"
#include "Collisions.h"

namespace Collisions
{
	class PlaneFrustum
	{
	public:
		COLLISIONS_EXPORTS PlaneFrustum();
		COLLISIONS_EXPORTS ~PlaneFrustum();


		//setters
		// This function creates a plane from 3 points
		// set3Points assume that points are in counter clockwise order
		COLLISIONS_EXPORTS void setPlane3Points(const glm::vec3& first, const glm::vec3& second, const glm::vec3& third);
		COLLISIONS_EXPORTS void setNormalAndPoint(const glm::vec3& normal, const glm::vec3& point);
		COLLISIONS_EXPORTS float distance(const glm::vec3& point);



		//getters
		COLLISIONS_EXPORTS glm::vec3 getNormal() const;

	private:
		glm::vec3 normal, point;
		float d;

		//helpers
	};


}
