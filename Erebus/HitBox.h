#pragma once
#include <vector>
#include "glm\glm.hpp"
class HitBox
{
	
public:
	HitBox();
	HitBox(unsigned int ID, int IDTransform);
	HitBox(int IDTransform);
	virtual ~HitBox();
	virtual unsigned int getID() const = 0; // copy elision makes returning values fast? RVO - NRVO
	virtual unsigned int getIDTransform() const = 0;
	virtual std::vector<unsigned int>* getIDCollisionsRef() = 0;
	virtual void insertCollisionID(unsigned int collisionID) = 0;
	virtual void clearCollisionIDs() = 0;
	virtual void setIDTransform(unsigned int ID);
	virtual void setID(unsigned int ID);
	virtual bool checkCollision();
	virtual bool checkSpecificCollision(unsigned int target);

protected:
	unsigned int ID, IDTransform;
	std::vector<unsigned int> IDCollisions;
	const unsigned short RESERVE_COLLISIONS = 10; // hur många collisions tror vi en enda hitbox max har under en frame

};

