#pragma once
#include "AABBCollider.h"
#include "HitBox.h"
class SphereCollider : public HitBox
{
public:
	SphereCollider();
	SphereCollider(glm::vec3 pos, float radius);
	SphereCollider(int IDTransform, glm::vec3 pos, float radius);
	SphereCollider(int IDTransform, float x, float y, float z, float radius);
	SphereCollider(int IDTransform);
	virtual ~SphereCollider();

	//overrides
	unsigned int getID() const override; // copy elision makes this fast? RVO - NRVO
	int getIDTransform() const override;
	std::vector<unsigned int>* getIDCollisionsRef() override;

	const glm::vec3& getPos();
	const float& getRadius();
	float getRadiusSquared() const;

	void setRadius(float radius);

private:
	float radius, radiusSquared;
	const int FLAG = 0;


};
