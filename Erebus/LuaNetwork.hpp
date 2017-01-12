#pragma once

#include "lua\lua.hpp"
#include "NetworkController.hpp"

namespace LuaNetwork
{
	void registerFunctions(lua_State* lua, NetworkController* networkController);
	int sendTransform(lua_State* lua);
}