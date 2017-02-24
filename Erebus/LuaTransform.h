#pragma once

#include "lua\lua.hpp"
#include "Transform.h"
#include "TransformHandler.h"

namespace LuaTransform
{
	void registerFunctions( lua_State* lua, TransformHandler* transformHandler );
	//int bind( lua_State* lua );
	//int destroy( lua_State* lua );
	int move( lua_State* lua );
	int switchTransform( lua_State* lua );
	int follow( lua_State* lua );
	int fly( lua_State* lua );
	int shoot( lua_State* lua );
	int activeControl(lua_State* lua);

	int setPosition( lua_State* lua );
	int setRotation( lua_State* lua );
	int setLookAt( lua_State* lua );
	int setFacing( lua_State* lua );
	int setScale( lua_State* lua );
	int setScaleNonUniform( lua_State* lua);
	int setPosFromTransID( lua_State* lua);
	int setLookAtFromTransID(lua_State* lua);
	int setRotationFromTransID(lua_State* lua);

	int getPosition( lua_State* lua );
	int getRotation( lua_State* lua );
	int getLookAt( lua_State* lua );
	int getScale( lua_State* lua );
	int getMoveDirection(lua_State* lua);
	
	int rotateToVector(lua_State* lua);
	int updateRotationFromLookVector(lua_State* lua);

	int getDistance(lua_State* lua);
	int getDistanceTransPos(lua_State* lua);
}