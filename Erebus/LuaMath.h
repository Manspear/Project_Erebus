#pragma once
#include "lua\lua.hpp"

namespace LuaMath
{
	void registerFunctions(lua_State* lua);

	int normalize(lua_State* lua);

}