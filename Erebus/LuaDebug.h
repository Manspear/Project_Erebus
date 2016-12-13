#pragma once

#include "lua\lua.hpp"
#include "Debug.h"

namespace LuaDebug
{
	void registerFunctions(lua_State* lua, Debug* dgb);
	int drawLine(lua_State* lua);
	int drawSphere(lua_State * lua);
}