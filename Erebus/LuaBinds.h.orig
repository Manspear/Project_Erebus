#pragma once
#include <lua\lua.hpp>
#include "Transform.h"
#include "BaseIncludes.h"
#include "Gear.h"

Window *window = new Window();
Gear::GearEngine *engine = new Gear::GearEngine();
Importer::Assets assets = *Importer::Assets::getInstance();

Transform* allTransforms;
int nrOfTransforms = 0;
int boundTrans = 0;
Controls controls;

void allocateTransforms(int n);
double deltaTime = 0.0;
/*int transformBind(lua_State* L)
{
	int n = lua_gettop(L);
	for (int i = 1; i <= n; i++)
		std::cout << lua_tonumber(L, i) << "\n";
	Transform** transform = reinterpret_cast<Transform**>(lua_newuserdata(L, sizeof(Transform*)));
	*transform = &allTransforms[nrOfTransforms++];
	
	luaL_getmetatable(L, "transformTable");
	lua_setmetatable(L, -2);
	return 1;
}*/

int initStuff(lua_State *L)
{
	nrOfTransforms = lua_tointeger(L, -1);
	allocateTransforms(nrOfTransforms);
	return 0;
}

int importModels(lua_State *L)
{
	Importer::ModelAsset* tempModel = assets.load<Importer::ModelAsset>(lua_tostring(L, -2));
	for (int i = 0; i < lua_tointeger(L, -1); i++)
		engine->tempRenderQueue.addModelInstance(tempModel);
	return 0;
}

void initLua(lua_State * L)
{
	luaL_newmetatable(L, "initTable");
	luaL_Reg transformRegs[] =
	{
		{ "InitStuff",      initStuff },
		{ "LoadModels",		importModels},
		{ NULL, NULL }
	};
	luaL_setfuncs(L, transformRegs, 0);
	lua_pushvalue(L, -1);
	lua_setfield(L, -1, "__index");
	int n = lua_gettop(L);
	lua_setglobal(L, "Engine");
}

int transformBind(lua_State* L)
{
	int n = lua_gettop(L);
	for (int i = 1; i <= n; i++)
		std::cout << lua_tonumber(L, i) << "\n";
	lua_pushinteger(L, boundTrans++);
	return 1;
}

int transformDestroy(lua_State* L)
{
	Transform* transform = nullptr;
	void* ptr = luaL_testudata(L, 1, "transformTable");
	if (ptr != nullptr)
		transform = *(Transform**)ptr;
	delete transform;
	return 0;
}

int transformMove(lua_State* L)
{	
	allTransforms[lua_tointeger(L, -4)].move(glm::vec3(lua_tonumber(L, -3), lua_tonumber(L, -2), lua_tonumber(L, -1)), deltaTime);
	int n = lua_gettop(L);
	lua_pop(L, 4);
	return 0;
}

int switchTransform(lua_State* L)
{
	controls.setControl(&allTransforms[lua_tointeger(L, -1)]);
	return 0;
}

int followStuff(lua_State* L)
{
	allTransforms[lua_tointeger(L, -2)].follow(allTransforms[lua_tointeger(L, -3)].getPos(), lua_tonumber(L, -1), deltaTime);
	return 0;
}

int distance( lua_State* lua )
{
	float d = glm::distance(allTransforms[lua_tointeger(lua,1)].getPos(), allTransforms[lua_tointeger(lua,2)].getPos());
	lua_pushnumber( lua, d );
	return 1;
}

void transformReg(lua_State * L)
{
	luaL_newmetatable(L, "transformTable");
	luaL_Reg transformRegs[] =
	{
		{ "Bind",			transformBind},
		{ "Destroy",		transformDestroy},
		{ "Move",			transformMove},
		{ "Switch",			switchTransform},
		{ "Follow",			followStuff},
		{ "Distance",		distance },
		{ NULL, NULL }
	};
	luaL_setfuncs(L, transformRegs, 0);	
	lua_pushvalue(L, -1);
	lua_setfield(L, -1, "__index");
	int n = lua_gettop(L);
	lua_setglobal(L, "Transform");
}

int addSphere( lua_State* lua )
{
	if( lua_gettop( lua ) >= 2 )
	{
		lua_getfield( lua, 1, "__self" );
		CollisionHandler* handler = (CollisionHandler*)lua_touserdata( lua, -1 );

		lua_getfield( lua, 2, "__self" );
		SphereCollider* collider = (SphereCollider*)lua_touserdata( lua, -1 );

		handler->addHitbox( collider );
	}

	return 0;
}

int addAABB( lua_State* lua )
{
	if( lua_gettop( lua ) >= 2 )
	{
		lua_getfield( lua, 1, "__self" );
		CollisionHandler* handler = (CollisionHandler*)lua_touserdata( lua, -1 );

		lua_getfield( lua, 2, "__self" );
		AABBCollider* collider = (AABBCollider*)lua_touserdata( lua, -1 );

		handler->addHitbox( collider );
	}

	return 0;
}

int createSphereCollider( lua_State* lua )
{
	int result = 0;

	if( lua_gettop( lua ) >= 6 )
	{
		int colliderID = (int)lua_tonumber( lua, 1 );
		int transformID = (int)lua_tonumber( lua, 2 );
		glm::vec3 position( lua_tonumber( lua, 3 ), lua_tonumber( lua, 4 ), lua_tonumber( lua, 5 ) );
		float radius = lua_tonumber( lua, 6 );

		SphereCollider* collider = new SphereCollider( colliderID, transformID, position, radius );
		lua_newtable( lua );
		luaL_setmetatable( lua, "sphereColliderMeta" );
		lua_pushlightuserdata( lua, collider );
		lua_setfield( lua, -2, "__self" );

		result = 1;
	}

	return result;
}

int createAABBCollider( lua_State* lua )
{
	int result = 0;

	if( lua_gettop( lua ) >= 4 )
	{
		int colliderID = (int)lua_tonumber( lua, 1 );
		int transformID = (int)lua_tonumber( lua, 2 );
		glm::vec3 minPos( lua_tonumber( lua, 3 ), lua_tonumber( lua, 4 ), lua_tonumber( lua, 5 ) );
		glm::vec3 maxPos( lua_tonumber( lua, 6 ), lua_tonumber( lua, 7 ), lua_tonumber( lua, 8 ) );

		AABBCollider* collider = new AABBCollider( colliderID, transformID, minPos, maxPos );
		lua_newtable( lua );
		luaL_setmetatable( lua, "aabbColliderMeta" );
		lua_pushlightuserdata( lua, collider );
		lua_setfield( lua, -2, "__self" );

		result = 1;
	}

	return result;
}

int getCollisionIDs( lua_State* lua )
{
	int result = 0;

	if( lua_gettop( lua ) >= 1 )
	{
		lua_getfield( lua, 1, "__self" );
		HitBox* hitbox = (HitBox*)lua_touserdata( lua, -1 );

		std::vector<unsigned int>* ids = hitbox->getIDCollisionsRef();
		lua_newtable( lua );
		for( int i=0; i<ids->size(); i++ )
		{
			lua_pushnumber( lua, ids->at(i) );
			lua_rawseti( lua, -2, i+1 );
		}

		result = 1;
	}

	return result;
}

int checkCollision( lua_State* lua )
{
	int result = 0;

	if( lua_gettop( lua ) >= 1 )
	{
		lua_getfield( lua, 1, "__self" );
		HitBox* hitbox = (HitBox*)lua_touserdata( lua, -1 );

		lua_pushboolean( lua, hitbox->checkCollision() );
		result = 1;
	}

	return result;
}

void collisionReg( lua_State* lua, CollisionHandler* collisionHandler )
{
	luaL_newmetatable( lua, "sphereColliderMeta" );
	luaL_Reg sphereRegs[] =
	{
		{ "Create", createSphereCollider },
		{ "GetCollisionIDs", getCollisionIDs },
		{ "CheckCollision", checkCollision },
		{ NULL, NULL }
	};

	luaL_setfuncs( lua, sphereRegs, 0 );
	lua_pushvalue( lua, -1 );
	lua_setfield( lua, -2, "__index" );
	lua_setglobal( lua, "SphereCollider" );

	luaL_newmetatable( lua, "aabbColliderMeta" );
	luaL_Reg aabbRegs[] =
	{
		{ "Create", createAABBCollider },
		{ "GetCollisionIDs", getCollisionIDs },
		{ "CheckCollision", checkCollision },
		{ NULL, NULL }
	};

	luaL_setfuncs( lua, aabbRegs, 0 );
	lua_pushvalue( lua, -1 );
	lua_setfield( lua, -2, "__index" );
	lua_setglobal( lua, "AABBCollider" );

	luaL_newmetatable( lua, "collisionHandlerMeta" );
	luaL_Reg collisionHandlerRegs[] =
	{
		{ "AddSphere", addSphere },
		{ "AddAABB", addAABB },
		{ NULL, NULL }
	};

	luaL_setfuncs( lua, collisionHandlerRegs, 0 );
	lua_pushvalue( lua, -1 );
	lua_setfield( lua, -2, "__index" );
	//lua_setglobal( lua, "CollisionHandler" );

	lua_newtable( lua );
	lua_pushlightuserdata( lua, collisionHandler );
	lua_setfield( lua, -2, "__self" );
	luaL_setmetatable( lua, "collisionHandlerMeta" );
	lua_setglobal( lua, "CollisionHandler" );
}