#pragma once

#include "lua\lua.hpp"
#include "CollisionHandler.h"

namespace LuaCollision
{
	void registerFunctions( lua_State* lua, CollisionHandler* handler );

	int addSphere( lua_State* lua );
	int addAABB( lua_State* lua );
	int addRay(lua_State* lua);
	int addOBB(lua_State* lua);

	int createSphere( lua_State* lua );
	int createAABB( lua_State* lua );
	int createRay(lua_State* lua);
	int createOBB(lua_State* lua);
	int destroy( lua_State* lua );
	int destroyRay(lua_State* lua);
	int getCollisionIDs( lua_State* lua );
	int getRayCollisionIDs(lua_State* lua);
	int checkCollision( lua_State* lua );
	int checkRayCollision(lua_State* lua);
	int setRadius( lua_State* lua );
	int setActive(lua_State* lua);
	int setRayActive(lua_State* lua);
	int setDirection(lua_State* lua);
	int setOBBSize(lua_State* lua);
	int rotateOBBAroundX(lua_State* lua);
	int rotateOBBAroundY(lua_State* lua);
	int rotateOBBAroundZ(lua_State* lua);
	int setOBBXAxis(lua_State* lua);
	int setOBBYAxis(lua_State* lua);
	int setOBBZAxis(lua_State* lua);

	int setLayerCollision( lua_State* lua );
	int printCollisions( lua_State* lua );
	int drawHitboxes( lua_State* lua );
	int deactivateAllHitboxes(lua_State* lua);
	int activateAllHitboxes(lua_State* lua);
	int enableCollisionHandler(lua_State* lua);
	int disableCollisionHandler(lua_State* lua);

	int getID( lua_State* lua );
	int getRayID(lua_State* lua);

	// helper functions
	HitBox* getHitBox( lua_State* lua, int index );
	SphereCollider* getSphereCollider( lua_State* lua, int index );
	AABBCollider* getAABBCollider( lua_State* lua, int index );
	RayCollider* getRayCollider(lua_State* lua, int index);
	OBBCollider* getOBBCollider(lua_State* lua, int index);
}