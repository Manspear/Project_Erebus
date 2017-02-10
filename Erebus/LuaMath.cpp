#include "LuaMath.h"
#include "BaseIncludes.h"

namespace LuaMath {
	void registerFunctions(lua_State * lua)
	{
		luaL_newmetatable(lua, "mathMeta");
		luaL_Reg regs[] =
		{
			{ "Normalize",	normalize },
			{ "GetDir", getDirection},
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
	int getDirection(lua_State * lua)
	{
		int result = 0;
		if (lua_gettop(lua) >= 2)
		{

			glm::vec3 start;
			lua_getfield(lua, 1, "x");
			start.x = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 1, "y");
			start.y = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 1, "z");
			start.z = (float)lua_tonumber(lua, -1);

			glm::vec3 end;
			lua_getfield(lua, 2, "x");
			end.x = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "y");
			end.y = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "z");
			end.z = (float)lua_tonumber(lua, -1);

			//use start for the result, cause why not
			start = glm::normalize(end - start);

			lua_newtable(lua);
			lua_pushnumber(lua, start.x);
			lua_setfield(lua, -2, "x");

			lua_pushnumber(lua, start.y);
			lua_setfield(lua, -2, "y");

			lua_pushnumber(lua, start.z);
			lua_setfield(lua, -2, "z");
			result = 1;
		}

		return result;
	}
};