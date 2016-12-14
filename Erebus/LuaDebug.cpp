#include "LuaDebug.h"
namespace LuaDebug {
	Debug* debugger;
	void registerFunctions(lua_State * lua, Debug* dgb)
	{
		debugger = dgb;
		luaL_newmetatable(lua, "debugMeta");
		luaL_Reg regs[] =
		{
			{ "DrawLine",			drawLine }, //syntax is (start.x, start.y, start.z, end.x, end.y, end.z)
			{ "DrawSphere",			drawSphere}, 
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, regs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");

		lua_setglobal(lua, "Debug");
	}
	int drawLine(lua_State * lua)
	{
		int nargs = lua_gettop( lua );
		glm::vec3 start, end;
		start.x = lua_tonumber(lua, 1);
		start.y = lua_tonumber(lua, 2);
		start.z = lua_tonumber(lua, 3);
		end.x = lua_tonumber(lua, 4);
		end.y = lua_tonumber(lua, 5);
		end.z = lua_tonumber(lua, 6);
		glm::vec3 color( 0.0f, 1.0f, 0.0f );
		if( nargs >= 9 )
		{
			color.x = lua_tonumber(lua, 7 );
			color.y = lua_tonumber(lua, 8 );
			color.z = lua_tonumber(lua, 9 );
		}
		debugger->drawLine(start, end, color);
		return 0;
	}
	int drawSphere(lua_State * lua)
	{
		glm::vec3 position;
		float radius;
		position.x = lua_tonumber(lua, -4);
		position.y = lua_tonumber(lua, -3);
		position.z = lua_tonumber(lua, -2);
		radius = lua_tonumber(lua, -1);
		debugger->drawSphere(position, radius);
		return 0;
	}
}