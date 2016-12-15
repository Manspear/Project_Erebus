#pragma once
#include "HitBox.h"
class OBBColllider : public HitBox
{
public:
	OBBColllider();
	~OBBColllider();

	//Overrides
	virtual unsigned int getID() const override; // copy elision makes returning values fast? RVO - NRVO
	virtual int getIDTransform() const override;
	virtual std::vector<unsigned int>* getIDCollisionsRef() override;
	virtual void insertCollisionID(unsigned int collisionID) override;
	virtual void clearCollisionIDs() override;
	
private:
	glm::vec3 pos;
	glm::vec3 xAxis, yAxis, zAxis;
	float xHalfLength, yHalfLength, zHalfLength;
};

