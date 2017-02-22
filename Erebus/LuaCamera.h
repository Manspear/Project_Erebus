#pragma once

#include "Camera.h"
#include "Transform.h"
#include "lua\lua.hpp"
#include "TransformHandler.h"

namespace LuaCamera 
{
	void registerFunctions(lua_State* lua, Camera* camera, Transform* transform, TransformHandler* transformHandler );
	int follow(lua_State* lua);
	int cameraUpdate(lua_State* lua);
	int getPos(lua_State* lua);
	int setHeight(lua_State* lua);
	int getDirection(lua_State* lua);
	int getRight(lua_State* lua);
}