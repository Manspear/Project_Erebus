#include "LuaNetwork.hpp"

namespace LuaNetwork 
{
	static NetworkController* g_networkController = nullptr;

	void registerFunctions(lua_State * lua, NetworkController * networkController)
	{
		g_networkController = networkController;
		luaL_newmetatable(lua, "networkMeta");
		luaL_Reg regs[] =
		{
			{ "SendTransform",			sendTransform },
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, regs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");

		lua_setglobal(lua, "Network");
	}

	int sendTransform(lua_State* lua) {
		int index = lua_tointeger(lua, 1);

		lua_getfield(lua, 2, "x");
		float x = lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "y");
		float y = lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "z");
		float z = lua_tonumber(lua, -1);

		g_networkController->sendTransformPacket(index, x, y, z);

		return 0;
	}
}