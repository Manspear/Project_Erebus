#pragma once
#include "AABBCollider.h"
#include "OBBCollider.h"
#include "SphereCollider.h"
#include "RayCollider.h"
#include "glm\glm.hpp"
#include <iostream> // REMOVE ME

namespace Collisions
{
	class CollisionChecker
	{
	private:

		//Counters
		int sphereCollisionCounter = 0;
		int aabbCollisionCounter = 0;
		int sphereToAabbCollisionCounter = 0;
		int obbCollisionCounter = 0;
		int obbToAabbCollisionCounter = 0;
		int obbToSphereCollisionCounter = 0;
		int rayToObbCollisionCounter = 0;
		int rayToAabbCollisionCounter = 0;
		int rayToSphereCollisionCounter = 0;

	public:
		COLLISIONS_EXPORTS CollisionChecker();
		COLLISIONS_EXPORTS ~CollisionChecker();

		COLLISIONS_EXPORTS bool collisionCheck(SphereCollider* sphere1, SphereCollider* sphere2); // http://www.miguelcasillas.com/?p=9
		COLLISIONS_EXPORTS bool collisionCheck(AABBCollider* aabb1, AABBCollider* aabb2); // https://developer.mozilla.org/en-US/docs/Games/Techniques/3D_collision_detection
		COLLISIONS_EXPORTS bool collisionCheck(SphereCollider* sphere, AABBCollider* aabb); // https://studiofreya.com/3d-math-and-physics/sphere-vs-aabb-collision-detection-test/
		COLLISIONS_EXPORTS bool collisionCheck(OBBCollider* collider, OBBCollider* collider2); //http://www.jkh.me/files/tutorials/Separating%20Axis%20Theorem%20for%20Oriented%20Bounding%20Boxes.pdf
		COLLISIONS_EXPORTS bool collisionCheck(OBBCollider* collider, AABBCollider* collider2); // same technique as obb vs obb
		// Real-Time Collision Detection book - Christer Ericson https://www.gamedev.net/topic/579584-obb---sphere-collision-detection/
		COLLISIONS_EXPORTS bool collisionCheck(OBBCollider* obb, SphereCollider* sphere);// Real-Time Collision Detection book - Christer Ericson
		COLLISIONS_EXPORTS bool collisionCheck(RayCollider* ray, SphereCollider* sphere);// Real-Time Collision Detection book - Christer Ericson
		COLLISIONS_EXPORTS bool collisionCheck(RayCollider* ray, AABBCollider* aabb);// Real-Time Collision Detection book - Christer Ericson
		COLLISIONS_EXPORTS bool collisionCheck(RayCollider* ray, OBBCollider* obb); // https://www.gamedev.net/topic/463718-efficient-ray-obb-intersection-with-distance/
		COLLISIONS_EXPORTS bool collisionCheck(HitBox* hitbox1, HitBox* hitbox2);

		//Get collision normals also, used by movementController. ONLY SUPPORTS SPHERE COLLISION
		// Returns normal from hitbox2 -> hitbox 1
		COLLISIONS_EXPORTS bool collisionCheckNormal(HitBox* hitbox1, HitBox* hitbox2, std::vector<glm::vec3>& hitNormals, bool saveNormals);
		COLLISIONS_EXPORTS bool collisionCheckNormal(SphereCollider* sphere1, SphereCollider* sphere2, std::vector<glm::vec3>& hitNormals, bool saveNormals);
		COLLISIONS_EXPORTS bool collisionCheckNormal(SphereCollider* sphere, AABBCollider* aabb, std::vector<glm::vec3>& hitNormals, bool saveNormals);
		COLLISIONS_EXPORTS bool collisionCheckNormal(SphereCollider* sphere, OBBCollider* obb, std::vector<glm::vec3>& hitNormals, bool saveNormals);

		//helper functions
		COLLISIONS_EXPORTS float closestDistanceAabbToPoint(const float& point, const float aabbMin, const float aabbMax);
		COLLISIONS_EXPORTS float SquaredDistancePointToAabb(AABBCollider* aabb, SphereCollider* sphere);
		COLLISIONS_EXPORTS glm::vec3 closestPointOnOBB(OBBCollider* collider, const glm::vec3& point) const;
		COLLISIONS_EXPORTS glm::vec3 closestPointOnAABB(AABBCollider* collider, const glm::vec3& point) const;

		COLLISIONS_EXPORTS void resetCounters();

		//getters
		COLLISIONS_EXPORTS int getSphereCollisionCounter();
		COLLISIONS_EXPORTS int getAabbCollisionCounter();
		COLLISIONS_EXPORTS int getSphereToAabbCollisionCounter();
		COLLISIONS_EXPORTS int getObbCollisionCounter();
		COLLISIONS_EXPORTS int getObbToAabbCollisionCounter();
		COLLISIONS_EXPORTS int getObbToSphereCollisionCounter();
		COLLISIONS_EXPORTS int getRayToAabbCollisionCounter();
		COLLISIONS_EXPORTS int getRayToObbCollisionCounter();
		COLLISIONS_EXPORTS int getRayToSphereCollisionCunter();
		COLLISIONS_EXPORTS int getCollisionCounter();

	private:
		template<typename T>
		inline void CollisionChecker::swap(T& first, T& second)
		{
			T temp = first;
			first = second;
			second = temp;
		}
	};



}
