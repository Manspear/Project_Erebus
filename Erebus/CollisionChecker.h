#pragma once
#include "AABBCollider.h"
#include "OBBCollider.h"
#include "SphereCollider.h"
#include "RayCollider.h"
#include "glm\glm.hpp"
#include <iostream> // REMOVE ME
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
	CollisionChecker();
	~CollisionChecker();

	bool collisionCheck(SphereCollider* sphere1, SphereCollider* sphere2); // http://www.miguelcasillas.com/?p=9
	bool collisionCheck(AABBCollider* aabb1, AABBCollider* aabb2); // https://developer.mozilla.org/en-US/docs/Games/Techniques/3D_collision_detection
	bool collisionCheck(SphereCollider* sphere, AABBCollider* aabb); // https://studiofreya.com/3d-math-and-physics/sphere-vs-aabb-collision-detection-test/
	bool collisionCheck(OBBCollider* collider, OBBCollider* collider2); //http://www.jkh.me/files/tutorials/Separating%20Axis%20Theorem%20for%20Oriented%20Bounding%20Boxes.pdf
	bool collisionCheck(OBBCollider* collider, AABBCollider* collider2); // same technique as obb vs obb
	// Real-Time Collision Detection book - Christer Ericson https://www.gamedev.net/topic/579584-obb---sphere-collision-detection/
	bool collisionCheck(OBBCollider* obb, SphereCollider* sphere);// Real-Time Collision Detection book - Christer Ericson
	bool collisionCheck(RayCollider* ray, SphereCollider* sphere);// Real-Time Collision Detection book - Christer Ericson
	bool collisionCheck(RayCollider* ray, AABBCollider* aabb);// Real-Time Collision Detection book - Christer Ericson
	bool collisionCheck(RayCollider* ray, OBBCollider* obb); // https://www.gamedev.net/topic/463718-efficient-ray-obb-intersection-with-distance/
	bool collisionCheck(HitBox* hitbox1, HitBox* hitbox2);

	//Get collision normals also, used by movementController. ONLY SUPPORTS SPHERE COLLISION
	// Returns normal from hitbox2 -> hitbox 1
	bool collisionCheckNormal(HitBox* hitbox1, HitBox* hitbox2,std::vector<glm::vec3>& hitNormals, bool saveNormals);
	bool collisionCheckNormal(SphereCollider* sphere1, SphereCollider* sphere2, std::vector<glm::vec3>& hitNormals, bool saveNormals);
	bool collisionCheckNormal(SphereCollider* sphere, AABBCollider* aabb, std::vector<glm::vec3>& hitNormals, bool saveNormals);
	bool collisionCheckNormal(SphereCollider* sphere, OBBCollider* obb,std::vector<glm::vec3>& hitNormals, bool saveNormals);

	//helper functions
	float closestDistanceAabbToPoint(const float& point, const float aabbMin, const float aabbMax);
	float SquaredDistancePointToAabb(AABBCollider* aabb, SphereCollider* sphere);
	glm::vec3 closestPointOnOBB(OBBCollider* collider, const glm::vec3& point) const;
	glm::vec3 closestPointOnAABB(AABBCollider* collider, const glm::vec3& point) const;

	void resetCounters();

	//getters
	int getSphereCollisionCounter();
	int getAabbCollisionCounter();
	int getSphereToAabbCollisionCounter();
	int getObbCollisionCounter();
	int getObbToAabbCollisionCounter();
	int getObbToSphereCollisionCounter();
	int getRayToAabbCollisionCounter();
	int getRayToObbCollisionCounter();
	int getRayToSphereCollisionCunter();
	int getCollisionCounter();

private:
	template<typename T>
	inline void CollisionChecker::swap(T& first, T& second)
	{
		T temp = first;
		first = second;
		second = temp;
	}
};


