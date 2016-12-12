#include "LuaDebug.h"
namespace LuaDebug {
	Debug* debugger;
	void registerFunctions(lua_State * lua, Debug* dgb)
	{
		debugger = dgb;
		luaL_newmetatable(lua, "debugMeta");
		luaL_Reg regs[] =
		{
			{ "DrawLine",			drawLine },
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, regs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");

		lua_setglobal(lua, "Debug");
	}
	int drawLine(lua_State * lua)
	{
		glm::vec3 start, end;
		float thickness = lua_tonumber(lua, -7);
		start.x = lua_tonumber(lua, -6);
		start.y = lua_tonumber(lua, -5);
		start.z = lua_tonumber(lua, -4);
		end.x = lua_tonumber(lua, -3);
		end.y = lua_tonumber(lua, -2);
		end.z = lua_tonumber(lua, -1);
		debugger->drawLine(start, end, thickness);
		return 0;
	}
}