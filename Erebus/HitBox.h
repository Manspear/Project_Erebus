#pragma once
#include <vector>
#include "glm\glm.hpp"
#include "glm\gtx\rotate_vector.hpp"
class HitBox
{
	
public:
	HitBox();
	HitBox(unsigned int ID, int IDTransform);
	HitBox(int IDTransform);
	virtual ~HitBox();
	virtual unsigned int getID() const = 0; // copy elision makes returning values fast? RVO - NRVO
	virtual int getIDTransform() const = 0;
	virtual std::vector<unsigned int>* getIDCollisionsRef() = 0;
	virtual void insertCollisionID(unsigned int collisionID) = 0;
	virtual void clearCollisionIDs() = 0;

	//setters
	virtual void setPos(glm::vec3 pos);
	virtual void setIDTransform(unsigned int ID);
	virtual void setID(unsigned int ID);
	virtual void setActive(bool active);
	// The flags are: 0 = sphereCollider, 1 = aabbCollider, 2 = obbCollider
	virtual void setTypeFlag(int flag);
	virtual void setLocalPos(glm::vec3 pos);

	//getters
	virtual bool checkCollision();
	virtual bool checkSpecificCollision(unsigned int target);
	virtual bool isActive();
	virtual bool isSphereCollider();
	virtual bool isAabbCollider();
	virtual bool isObbCollider();

	// This function assumes you dont send the same child twice
	// You dont need to delete children manually
	virtual void addChild(HitBox* child);
	virtual std::vector<HitBox*>* getChildren();
	

protected:
	int ID, IDTransform;
	std::vector<unsigned int> IDCollisions;
	const unsigned short RESERVE_COLLISIONS = 10; // hur många collisions tror vi en enda hitbox max har under en frame
	bool active;
	glm::vec3 pos,localPos;
	int typeFlag;
	std::vector<HitBox*>* children;
	HitBox* parent;
	virtual void update();

};

