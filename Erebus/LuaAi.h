#pragma once
#include <lua\lua.hpp>
#include"AGI.h"
#include "BaseIncludes.h"
#include "Transform.h"
#include "Assets.h"
#include"HeightMap.h"
#include"Debug.h"
#include "TransformHandler.h"
#include "CollisionHandler.h"

namespace LuaAI
{
	
	void registerFunctions(lua_State* lua, AGI::AGIEngine*,Importer::Assets* assets, TransformHandler* transformHandler, Collisions::CollisionHandler* collisionHandler);
	int followPlayer(lua_State * lua);
	int navigateMesh(lua_State * lua);
	int distanceTransTrans(lua_State * lua);
	int distanceTransPos(lua_State * lua);
	int normalizeDir(lua_State * lua);
	int createIM(lua_State * lua);
	int clearMap(lua_State * lua);
	int blurIM(lua_State * lua);

	int addHeightMap(lua_State * lua);
	int createHM(lua_State * lua);
	int clearAStarSearch(lua_State * lua);

	int setSpecificTarget(lua_State * lua);

	int aStarSearch(lua_State * lua);
	int unload(lua_State * lua);
	int addInfluencePoint(lua_State * lua);
	int checkIfTargetNodeIsOccupied(lua_State * lua);
	int addDebug(Debug*);
	int draw(lua_State * lua);
}