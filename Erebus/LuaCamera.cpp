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
			{ "Update",			cameraUpdate },
			{ "GetPos",         getPos },
			{ "SetHeight",      setHeight },
			{ "GetDirection",   getDirection},
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
		float distance, angle, xoffset, yoffset, fov;
		
		angle = lua_tonumber(lua, -1);
		distance = lua_tonumber(lua, -2);
		xoffset = lua_tonumber(lua, -3);
		yoffset = lua_tonumber(lua, -4);
		transformIndex = lua_tointeger(lua, -5);
		fov = lua_tonumber(lua, -6);
		pos = g_transforms[transformIndex].getPos();
		dir = g_transforms[transformIndex].getLookAt();

		g_camera->follow(pos, dir, distance, angle, xoffset, yoffset, fov);

		return 1;
	}

	int cameraUpdate(lua_State* lua) {

		glm::vec3 campos, lookpos;

		campos.x = lua_tonumber(lua, -6);
		campos.y = lua_tonumber(lua, -5);
		campos.z = lua_tonumber(lua, -4);
		lookpos.x = lua_tonumber(lua, -3);
		lookpos.y = lua_tonumber(lua, -2);
		lookpos.z = lua_tonumber(lua, -1);

		g_camera->setCamera(campos, lookpos);

		return 1;
	}

	int getPos(lua_State* lua) {

		int index = lua_tointeger(lua, 1);

		glm::vec3 position = g_camera->getPosition();

		lua_newtable(lua);
		lua_pushnumber(lua, position.x);
		lua_setfield(lua, -2, "x");

		lua_pushnumber(lua, position.y);
		lua_setfield(lua, -2, "y");

		lua_pushnumber(lua, position.z);
		lua_setfield(lua, -2, "z");

		return 1;
	}
	int setHeight(lua_State * lua)
	{
		float height = lua_tonumber(lua, -1);
		g_camera->setHeight(height);
		return 1;
	}
	int getDirection(lua_State * lua)
	{
		int index = lua_tointeger(lua, 1);

		glm::vec3 position = g_camera->getDirection();

		lua_newtable(lua);
		lua_pushnumber(lua, position.x);
		lua_setfield(lua, -2, "x");

		lua_pushnumber(lua, position.y);
		lua_setfield(lua, -2, "y");

		lua_pushnumber(lua, position.z);
		lua_setfield(lua, -2, "z");

		return 1;
	}
}