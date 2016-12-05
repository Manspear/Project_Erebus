#pragma once
#include <lua\lua.hpp>
#include "CollisionHandler.h"

CollisionHandler collisionHandler = CollisionHandler();

int addSphere(lua_State* lua)
{
	if (lua_gettop(lua) >= 2)
	{
		lua_getfield(lua, 1, "__self");
		CollisionHandler* handler = (CollisionHandler*)lua_touserdata(lua, -1);

		lua_getfield(lua, 2, "__self");
		SphereCollider* collider = (SphereCollider*)lua_touserdata(lua, -1);

		handler->addHitbox(collider);
	}

	return 0;
}

int addAABB(lua_State* lua)
{
	if (lua_gettop(lua) >= 2)
	{
		lua_getfield(lua, 1, "__self");
		CollisionHandler* handler = (CollisionHandler*)lua_touserdata(lua, -1);

		lua_getfield(lua, 2, "__self");
		AABBCollider* collider = (AABBCollider*)lua_touserdata(lua, -1);

		handler->addHitbox(collider);
	}

	return 0;
}

int createSphereCollider(lua_State* lua)
{
	int result = 0;

	if (lua_gettop(lua) >= 6)
	{
		int colliderID = (int)lua_tonumber(lua, 1);
		int transformID = (int)lua_tonumber(lua, 2);
		glm::vec3 position(lua_tonumber(lua, 3), lua_tonumber(lua, 4), lua_tonumber(lua, 5));
		float radius = lua_tonumber(lua, 6);

		SphereCollider* collider = new SphereCollider(colliderID, transformID, position, radius);
		lua_newtable(lua);
		luaL_setmetatable(lua, "sphereColliderMeta");
		lua_pushlightuserdata(lua, collider);
		lua_setfield(lua, -2, "__self");

		result = 1;
	}
	return result;
}

int destroySphereCollider(lua_State* lua)
{
	lua_getfield(lua, 1, "__self");
	SphereCollider* collider = (SphereCollider*)lua_touserdata(lua, -1);
	delete collider;
	return 0;
}

int createAABBCollider(lua_State* lua)
{
	int result = 0;

	if (lua_gettop(lua) >= 4)
	{
		int colliderID = (int)lua_tonumber(lua, 1);
		int transformID = (int)lua_tonumber(lua, 2);
		glm::vec3 minPos(lua_tonumber(lua, 3), lua_tonumber(lua, 4), lua_tonumber(lua, 5));
		glm::vec3 maxPos(lua_tonumber(lua, 6), lua_tonumber(lua, 7), lua_tonumber(lua, 8));
		AABBCollider* collider = new AABBCollider(colliderID, transformID, minPos, maxPos);
		lua_newtable(lua);
		luaL_setmetatable(lua, "aabbColliderMeta");
		lua_pushlightuserdata(lua, collider);
		lua_setfield(lua, -2, "__self");
		result = 1;
	}
	return result;
}

int getCollisionIDs(lua_State* lua)
{
	int result = 0;
	if (lua_gettop(lua) >= 1)
	{
		lua_getfield(lua, 1, "__self");
		HitBox* hitbox = (HitBox*)lua_touserdata(lua, -1);
		std::vector<unsigned int>* ids = hitbox->getIDCollisionsRef();
		lua_newtable(lua);
		for (int i = 0; i<ids->size(); i++)
		{
			lua_pushnumber(lua, ids->at(i));
			lua_rawseti(lua, -2, i + 1);
		}
		result = 1;
	}
	return result;
}

int checkCollision(lua_State* lua)
{
	int result = 0;
	if (lua_gettop(lua) >= 1)
	{
		lua_getfield(lua, 1, "__self");
		HitBox* hitbox = (HitBox*)lua_touserdata(lua, -1);

		lua_pushboolean(lua, hitbox->checkCollision());
		result = 1;
	}
	return result;
}

int checkCollisionWith(lua_State* L)
{
	int result = 0;
	if (lua_gettop(L) >= 1)
	{
		lua_getfield(L, 1, "__self");
		HitBox* hitbox = (HitBox*)lua_touserdata(L, -1);
		lua_pushboolean(L, hitbox->checkSpecificCollision(lua_tointeger(L, -2)));
		result = 1;
	}
	return result;
}
