#include "LuaCamera.h"
#include "Transform.h"

namespace LuaCamera {
	static Camera* g_camera = nullptr;
	static Transform* g_transforms = nullptr;
	void registerFunctions(lua_State * lua, Camera * camera, Transform* transform)
	{
		g_camera = camera;
		g_transforms = transform;
		luaL_newmetatable(lua, "cameraMeta");
		luaL_Reg regs[] =
		{
			{ "Follow",			follow },
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, regs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");

		lua_setglobal(lua, "Camera");
	}

	int follow(lua_State* lua) {
		glm::vec3 pos, dir;
		int transformIndex;
		float distance, angle, xoffset, yoffset;
		
		angle = lua_tonumber(lua, -1);
		distance = lua_tonumber(lua, -2);
		xoffset = lua_tonumber(lua, -3);
		yoffset = lua_tonumber(lua, -4);
		transformIndex = lua_tointeger(lua, -5);
		pos = g_transforms[transformIndex].getPos();
		dir = g_transforms[transformIndex].getLookAt();

		g_camera->follow(pos, dir, distance, angle, xoffset, yoffset);

		return 1;
	}
}