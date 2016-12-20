#pragma once
#include <lua\lua.hpp>
#include"AGI.h"
#include "BaseIncludes.h"
#include "Transform.h"
#include "Assets.h"
#include"HeightMap.h"
#include"Debug.h"
namespace LuaAI
{
	void registerFunctions(lua_State* lua, Transform *, AGI::AGIEngine*);
	int followPlayer(lua_State * lua);
	int navigateMesh(lua_State * lua);
	int distanceTransTrans(lua_State * lua);
	int distanceTransPos(lua_State * lua);
	int normalizeDir(lua_State * lua);
	int setNav(lua_State * lua);
	int clearMap(lua_State * lua);
	int addInfluencePoint(lua_State * lua);
	int addDebug(Debug*);
	int draw();
}