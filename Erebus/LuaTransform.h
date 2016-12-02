#pragma once
#include <lua\lua.hpp>

Controls controls;
Transform* allTransforms;

int nrOfTransforms = 0;
int boundTrans = 0;
double deltaTime = 0.0;

int transformBind(lua_State* L)
{
	int n = lua_gettop(L);
	for (int i = 1; i <= n; i++)
		lua_tonumber(L, i);
	lua_pushinteger(L, boundTrans++);
	return 1;
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
	int n = lua_gettop(L);
	return 0;
}

int fly(lua_State* L) 
{
	int index = lua_tointeger(L, -2);
	int speed = lua_tointeger(L, -1);
	allTransforms[index].move({ speed,allTransforms[index].getLookAt().y* (float)speed,0 }, deltaTime);
	int n = lua_gettop(L);
	lua_pop(L, n);
	return 0;
}

int distance(lua_State* lua)
{
	float d = glm::distance(allTransforms[lua_tointeger(lua, 1)].getPos(), allTransforms[lua_tointeger(lua, 2)].getPos());
	lua_pushnumber(lua, d);
	return 1;
}

int transformGetPos(lua_State* lua)
{
	int result = 0;

	if (lua_gettop(lua) >= 1)
	{
		int index = lua_tointeger(lua, 1);
		glm::vec3 pos = allTransforms[index].getPos();

		lua_newtable(lua);
		lua_pushnumber(lua, pos.x);
		lua_setfield(lua, -2, "x");

		lua_pushnumber(lua, pos.y);
		lua_setfield(lua, -2, "y");

		lua_pushnumber(lua, pos.z);
		lua_setfield(lua, -2, "z");

		result = 1;
	}
	return result;
}

int transformSetPos(lua_State* lua)
{
	if (lua_gettop(lua) >= 2)
	{
		int index = lua_tointeger(lua, 1);

		glm::vec3 pos;
		lua_getfield(lua, 2, "x");
		pos.x = lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "y");
		pos.y = lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "z");
		pos.z = lua_tonumber(lua, -1);

		allTransforms[index].setPos(pos);
	}
	return 0;
}

// TEMP: Call into heightmap class instead of going through transform?
int transformToHeightmap(lua_State* lua)
{
	int result = 0;
	if (lua_gettop(lua) >= 1)
	{
		int index = lua_tointeger(lua, 1);

		lua_pushboolean(lua, allTransforms[index].toHeightmap());
		result = 1;
	}
	return result;
}

int shootStuff(lua_State* L) {
	int a = lua_tointeger(L, -2);
	int b = lua_tointeger(L, -1);
	allTransforms[a].setLookDir(allTransforms[b].getLookAt());
	allTransforms[a].setPos(allTransforms[b].getPos());
	lua_pop(L, 2);
	return 0;
}