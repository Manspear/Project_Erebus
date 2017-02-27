#pragma once
#include "HitBox.h"

namespace Collisions
{
	class AABBCollider : public HitBox
	{
	public:
		COLLISIONS_EXPORTS AABBCollider();
		COLLISIONS_EXPORTS AABBCollider(int IDTransform);
		COLLISIONS_EXPORTS AABBCollider(int IDTransform, glm::vec3 minPos, glm::vec3 maxPos);
		COLLISIONS_EXPORTS AABBCollider(glm::vec3 minPos, glm::vec3 maxPos, glm::vec3 centerPos);
		COLLISIONS_EXPORTS virtual ~AABBCollider();
		COLLISIONS_EXPORTS bool AabbToAabb(const AABBCollider* aabb);

		//getters
		COLLISIONS_EXPORTS const glm::vec3& getMaxPos() const;
		COLLISIONS_EXPORTS const glm::vec3& getMinPos() const;
		COLLISIONS_EXPORTS const glm::vec3& getMaxPosLocal() const;
		COLLISIONS_EXPORTS const glm::vec3& getMinPosLocal() const;
		COLLISIONS_EXPORTS const glm::vec3& getCenterPos() const;

		//overrides
		COLLISIONS_EXPORTS virtual int getID() const override;
		COLLISIONS_EXPORTS virtual int getIDTransform() const override;
		COLLISIONS_EXPORTS virtual std::vector<int>* getIDCollisionsRef() override;

		COLLISIONS_EXPORTS virtual void setPos(glm::vec3 pos) override;
		COLLISIONS_EXPORTS void setMinPos(glm::vec3 minPos);
		COLLISIONS_EXPORTS void setMaxPos(glm::vec3 maxPos);

		//Frustum culling helpers
		COLLISIONS_EXPORTS glm::vec3 getPositiveVertex(const glm::vec3& normal);
		COLLISIONS_EXPORTS glm::vec3 getNegativeVertex(const glm::vec3& normal);


	private:
		glm::vec3 minPos, minPosTotal;
		glm::vec3 maxPos, maxPosTotal;
		const int FLAG = 1;
	};


}
