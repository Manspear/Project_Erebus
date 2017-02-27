#pragma once
#include <vector>
#include "glm\glm.hpp"
#include "glm\gtx\rotate_vector.hpp"
#include "Collisions.h"

namespace Collisions
{
	class HitBox
	{

	public:
		COLLISIONS_EXPORTS HitBox();
		COLLISIONS_EXPORTS HitBox(unsigned int ID, int IDTransform);
		COLLISIONS_EXPORTS HitBox(int IDTransform);
		COLLISIONS_EXPORTS virtual ~HitBox();
		COLLISIONS_EXPORTS virtual int getID() const = 0; // copy elision makes returning values fast? RVO - NRVO
		COLLISIONS_EXPORTS virtual int getIDTransform() const = 0;
		COLLISIONS_EXPORTS virtual std::vector<int>* getIDCollisionsRef() = 0;
		COLLISIONS_EXPORTS virtual void insertCollisionID(unsigned int collisionID);
		COLLISIONS_EXPORTS virtual void clearCollisionIDs();

		//setters
		COLLISIONS_EXPORTS virtual void setPos(glm::vec3 pos);
		COLLISIONS_EXPORTS virtual void setIDTransform(unsigned int ID);
		COLLISIONS_EXPORTS virtual void setID(unsigned int ID);
		COLLISIONS_EXPORTS virtual void setActive(bool active);
		// The flags are: 0 = sphereCollider, 1 = aabbCollider, 2 = obbCollider, 3 = ray
		COLLISIONS_EXPORTS virtual void setTypeFlag(int flag);
		COLLISIONS_EXPORTS virtual void setLocalPos(glm::vec3 pos);
		//setting if the hitbox is colliding or not
		// Is used to know if a parents children have any collision without checking all the children
		// otherwise we need to insert a scrap value in the parents collisionIds to simulate a collision
		COLLISIONS_EXPORTS virtual void setCollision(bool colliding);
		COLLISIONS_EXPORTS virtual void setAllParentCollision(bool colliding);

		//getters
		//Returns if we have a collision or not
		COLLISIONS_EXPORTS virtual bool checkCollision();
		COLLISIONS_EXPORTS virtual bool checkSpecificCollision(unsigned int target);
		COLLISIONS_EXPORTS virtual bool isActive();
		COLLISIONS_EXPORTS virtual bool isSphereCollider();
		COLLISIONS_EXPORTS virtual bool isAabbCollider();
		COLLISIONS_EXPORTS virtual bool isObbCollider();
		COLLISIONS_EXPORTS virtual bool isRayCollider();

		// This function assumes you dont send the same child twice
		// You dont need to delete children manually
		COLLISIONS_EXPORTS virtual void addChild(HitBox* child);
		COLLISIONS_EXPORTS virtual std::vector<HitBox*>* getChildren();


	protected:
		int ID, IDTransform;
		std::vector<int> IDCollisions;
		const unsigned short RESERVE_COLLISIONS = 10; // hur många collisions tror vi en enda hitbox max har under en frame
		bool active, colliding;
		glm::vec3 pos, localPos, transformPos;
		int typeFlag;
		virtual void update();
	public:
		std::vector<HitBox*>* children;
		HitBox* parent;

	};


}
