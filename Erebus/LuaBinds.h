#pragma once
#include "BaseIncludes.h"
#include "Gear.h"
#include "LuaTransform.h"
#include "LuaCollision.h"

Window *window = new Window();
Gear::GearEngine *engine = new Gear::GearEngine();
Importer::Assets *assets = Importer::Assets::getInstance();

std::vector<Transform*> toBeDrawn;

void allocateTransforms(int n);
int addModelInstance(ModelAsset* asset);

int initStuff(lua_State *L)
{
	nrOfTransforms = lua_tointeger(L, -1);
	allocateTransforms(nrOfTransforms);
	return 0;
}

int importModels(lua_State *L)
{
	Importer::ModelAsset* tempModel = assets->load<Importer::ModelAsset>(lua_tostring(L, -2));
	for (int i = 0; i < lua_tointeger(L, -1); i++)
		addModelInstance(tempModel);
	return 0;
}

void importerReg(lua_State * L)
{
	luaL_newmetatable(L, "importerTable");
	luaL_Reg importerRegs[] =
	{
		{ "LoadModels",		importModels },
		{ NULL, NULL }
	};
	luaL_setfuncs(L, importerRegs, 0);
	lua_pushvalue(L, -1);
	lua_setfield(L, -1, "__index");
	int n = lua_gettop(L);
	lua_setglobal(L, "Importer");
}

void transformReg(lua_State * L)
{
	luaL_newmetatable(L, "transformTable");
	luaL_Reg transformRegs[] =
	{
		{ "Bind",			transformBind},
		{ "Move",			transformMove},
		{ "Switch",			switchTransform},
		{ "Follow",			followStuff},
		{ "Shoot",			shootStuff},
		{ "Distance",		distance },
		{ "Fly",			fly},
		{ "GetPos",			transformGetPos },
		{ "SetPos",			transformSetPos },
		{ "ToHeightmap",	transformToHeightmap },
		{ NULL, NULL }
	};
	luaL_setfuncs(L, transformRegs, 0);	
	lua_pushvalue(L, -1);
	lua_setfield(L, -1, "__index");
	int n = lua_gettop(L);
	lua_setglobal(L, "Transform");
}

int destroySphereCollider( lua_State* lua )
{
	lua_getfield( lua, 1, "__self" );
	SphereCollider* collider = (SphereCollider*)lua_touserdata(lua, -1 );
	delete collider;

	return 0;
}

void collisionReg( lua_State* lua, CollisionHandler* collisionHandler )
{
	luaL_newmetatable( lua, "sphereColliderMeta" );
	luaL_Reg sphereRegs[] =
	{
		{ "Create", createSphereCollider },
		{ "GetCollisionIDs", getCollisionIDs },
		{ "CheckCollision", checkCollision },
		{ "__gc", destroySphereCollider },
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


void initLua(lua_State * L)
{
	luaL_newmetatable(L, "initTable");
	luaL_Reg transformRegs[] =
	{
		{ "InitStuff",      initStuff },
		{ NULL, NULL }
	};
	luaL_setfuncs(L, transformRegs, 0);
	lua_pushvalue(L, -1);
	lua_setfield(L, -1, "__index");
	int n = lua_gettop(L);
	lua_setglobal(L, "Engine");

	importerReg(L);
	transformReg(L);
	collisionReg(L, &collisionHandler);
}
