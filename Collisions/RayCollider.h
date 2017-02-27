#pragma once
#include "glm\glm.hpp"
#include <vector>
#include "HitBox.h"
namespace Collisions
{
	class RayCollider : public HitBox
	{
	public:
		COLLISIONS_EXPORTS RayCollider();
		COLLISIONS_EXPORTS RayCollider(glm::vec3 position, glm::vec3 direction);
		COLLISIONS_EXPORTS RayCollider(int IDTransform, glm::vec3 direction);
		COLLISIONS_EXPORTS ~RayCollider();
		COLLISIONS_EXPORTS void clear();

		//getters
		COLLISIONS_EXPORTS const glm::vec3& getDirection() const;
		COLLISIONS_EXPORTS const glm::vec3& getPosition() const;
		COLLISIONS_EXPORTS const glm::vec3& getIntersectionPoint() const;
		COLLISIONS_EXPORTS virtual int getIDTransform() const override;
		COLLISIONS_EXPORTS int getID() const override;
		COLLISIONS_EXPORTS float hitdistance() const;
		COLLISIONS_EXPORTS virtual std::vector<int>* getIDCollisionsRef() override;

		//setters
		COLLISIONS_EXPORTS void setIDTransform(unsigned int ID);
		COLLISIONS_EXPORTS void setID(unsigned int ID);
		COLLISIONS_EXPORTS void setPosition(glm::vec3 position);
		COLLISIONS_EXPORTS void setDirection(glm::vec3 direction);
		COLLISIONS_EXPORTS void hit(glm::vec3 intersectionPoint, float hitDistance);

	private:
		glm::vec3 direction, position, intersectionPoint;
		float hitDistance;
		const unsigned short RESERVE_COLLISIONS = 10;
		bool active;
		void clearHitData();
		const int FLAG = 3;
	};
}


