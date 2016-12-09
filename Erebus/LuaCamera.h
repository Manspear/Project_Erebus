#pragma once

#include "Camera.h"
#include "Transform.h"
#include "lua\lua.hpp"

namespace LuaCamera 
{
	void registerFunctions(lua_State* lua, Camera* camera, Transform* transform);
	int follow(lua_State* lua);
}