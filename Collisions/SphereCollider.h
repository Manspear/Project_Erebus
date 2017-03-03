#pragma once
#include "AABBCollider.h"
#include "HitBox.h"
namespace Collisions
{
	class SphereCollider : public HitBox
	{
	public:
		COLLISIONS_EXPORTS SphereCollider();
		COLLISIONS_EXPORTS SphereCollider(const glm::vec3 & pos, const float & radius);
		COLLISIONS_EXPORTS SphereCollider(const int & IDTransform, const glm::vec3 & pos, const float & radius);
		COLLISIONS_EXPORTS SphereCollider(const int & IDTransform, const float & x, const float & y, const float & z, const float & radius);
		COLLISIONS_EXPORTS SphereCollider(const int & IDTransform);
		COLLISIONS_EXPORTS virtual ~SphereCollider();

		//overrides
		COLLISIONS_EXPORTS int getID() const override;
		COLLISIONS_EXPORTS int getIDTransform() const override;
		COLLISIONS_EXPORTS std::vector<int>* getIDCollisionsRef() override;

		COLLISIONS_EXPORTS const glm::vec3& getPos();
		COLLISIONS_EXPORTS const float& getRadius();
		COLLISIONS_EXPORTS float getRadiusSquared() const;

		COLLISIONS_EXPORTS void setRadius(const float & radius);

	private:
		float radius, radiusSquared;
		const int FLAG = 0;


	};
}

