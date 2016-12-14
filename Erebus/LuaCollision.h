#pragma once

#include "lua\lua.hpp"
#include "CollisionHandler.h"

namespace LuaCollision
{
	void registerFunctions( lua_State* lua, CollisionHandler* handler );

	int addSphere( lua_State* lua );
	int addAABB( lua_State* lua );

	int createSphere( lua_State* lua );
	int createAABB( lua_State* lua );
	int destroy( lua_State* lua );
	int getCollisionIDs( lua_State* lua );
	int checkCollision( lua_State* lua );
	int setRadius( lua_State* lua );

	int setLayerCollision( lua_State* lua );
	int printCollisions( lua_State* lua );
	int drawHitboxes( lua_State* lua );

	int getID( lua_State* lua );

	// helper functions
	HitBox* getHitBox( lua_State* lua, int index );
	SphereCollider* getSphereCollider( lua_State* lua, int index );
	AABBCollider* getAABBCollider( lua_State* lua, int index );
}