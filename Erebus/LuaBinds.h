#pragma once
#include <lua\lua.hpp>
#include "Transform.h"
#include "BaseIncludes.h"

Transform* allTransforms;
int nrOfTransforms = 0;


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

int transformBind(lua_State* L)
{
	int n = lua_gettop(L);
	for (int i = 1; i <= n; i++)
		std::cout << lua_tonumber(L, i) << "\n";
	lua_pushinteger(L, nrOfTransforms++);
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
	allTransforms[lua_tointeger(L, -4)].move(glm::vec3(lua_tonumber(L, -3), lua_tonumber(L, -2), lua_tonumber(L, -1)), 0.1);
	//std::cout << lua_tointeger(L, -4) << "\t" << lua_tointeger(L, -3) << "\t" << lua_tointeger(L, -2) << "\t" << lua_tointeger(L, -1) << "\n";
	int n = lua_gettop(L);
	lua_pop(L, 4);
	return 0;
}

void transformReg(lua_State * L)
{
	luaL_newmetatable(L, "transformTable");
	luaL_Reg transformRegs[] =
	{
		{ "Bind",			transformBind},
		{ "Destroy",		transformDestroy},
		{ "Move",			transformMove},
		{ NULL, NULL }
	};
	luaL_setfuncs(L, transformRegs, 0);	
	lua_pushvalue(L, -1);
	lua_setfield(L, -1, "__index");
	int n = lua_gettop(L);
	lua_setglobal(L, "Transform");
}