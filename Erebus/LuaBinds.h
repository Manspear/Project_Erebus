#pragma once
#include <lua\lua.hpp>
#include "Transform.h"
#include "BaseIncludes.h"

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
	Importer::Assets assets;
	Importer::ModelAsset* molebatt = assets.load<Importer::ModelAsset>("Models/moleRat.mtf");
	nrOfTransforms = lua_tointeger(L, -1);
	allocateTransforms(nrOfTransforms);
	return 0;
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

void transformReg(lua_State * L)
{
	luaL_newmetatable(L, "transformTable");
	luaL_Reg transformRegs[] =
	{
		{ "InitStuff",      initStuff },
		{ "Bind",			transformBind},
		{ "Destroy",		transformDestroy},
		{ "Move",			transformMove},
		{ "Switch",			switchTransform},
		{ "Follow",			followStuff},
		{ NULL, NULL }
	};
	luaL_setfuncs(L, transformRegs, 0);	
	lua_pushvalue(L, -1);
	lua_setfield(L, -1, "__index");
	int n = lua_gettop(L);
	lua_setglobal(L, "Transform");
}