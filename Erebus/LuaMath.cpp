#include "LuaMath.h"
#include "BaseIncludes.h"

namespace LuaMath {
	void registerFunctions(lua_State * lua)
	{
		luaL_newmetatable(lua, "mathMeta");
		luaL_Reg regs[] =
		{
			{ "Normalize",	normalize },
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, regs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");

		lua_setglobal(lua, "Math");
	}
	int normalize(lua_State * lua)
	{
		int result = 0;
		if (lua_gettop(lua) >= 1)
		{

			glm::vec3 position;
			lua_getfield(lua, 1, "x");
			position.x = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 1, "y");
			position.y = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 1, "z");
			position.z = (float)lua_tonumber(lua, -1);

			position = glm::normalize(position);

			lua_newtable(lua);
			lua_pushnumber(lua, position.x);
			lua_setfield(lua, -2, "x");

			lua_pushnumber(lua, position.y);
			lua_setfield(lua, -2, "y");

			lua_pushnumber(lua, position.z);
			lua_setfield(lua, -2, "z");
			result = 1;
		}

		return result;
	}
};