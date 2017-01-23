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
	virtual void insertCollisionID(unsigned int collisionID);
	virtual void clearCollisionIDs();

	//setters
	virtual void setPos(glm::vec3 pos);
	virtual void setIDTransform(unsigned int ID);
	virtual void setID(unsigned int ID);
	virtual void setActive(bool active);
	// The flags are: 0 = sphereCollider, 1 = aabbCollider, 2 = obbCollider, 3 = ray
	virtual void setTypeFlag(int flag);
	virtual void setLocalPos(glm::vec3 pos);
	//setting if the hitbox is colliding or not
	// Is used to know if a parents children have any collision without checking all the children
	// otherwise we need to insert a scrap value in the parents collisionIds to simulate a collision
	virtual void setCollision(bool colliding);
	virtual void setAllParentCollision(bool colliding);

	//getters
	//Returns if we have a collision or not
	virtual bool checkCollision();
	virtual bool checkSpecificCollision(unsigned int target);
	virtual bool isActive();
	virtual bool isSphereCollider();
	virtual bool isAabbCollider();
	virtual bool isObbCollider();
	virtual bool isRayCollider();

	// This function assumes you dont send the same child twice
	// You dont need to delete children manually
	virtual void addChild(HitBox* child);
	virtual std::vector<HitBox*>* getChildren();
	

protected:
	int ID, IDTransform;
	std::vector<unsigned int> IDCollisions;
	const unsigned short RESERVE_COLLISIONS = 10; // hur många collisions tror vi en enda hitbox max har under en frame
	bool active, colliding;
	glm::vec3 pos,localPos;
	int typeFlag;
	virtual void update();
public:
	std::vector<HitBox*>* children;
	HitBox* parent;

};

