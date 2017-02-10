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

	int follow(lua_State* lua)
	{
		assert( lua_gettop( lua ) == 7 );

		glm::vec3 pos, dir;
		int transformIndex;
		float distance, angle, xoffset, yoffset, fov;
		
		fov = (float)lua_tonumber(lua, 1);

		//transformIndex = (int)lua_tointeger(lua, 2);
		lua_getfield( lua, 2, "x" );
		pos.x = (float)lua_tonumber( lua, -1 );
		lua_getfield( lua, 2, "y" );
		pos.y = (float)lua_tonumber( lua, -1 );
		lua_getfield( lua, 2, "z" );
		pos.z = (float)lua_tonumber( lua, -1 );

		lua_getfield( lua, 3, "x" );
		dir.x = (float)lua_tonumber( lua, -1 );
		lua_getfield( lua, 3, "y" );
		dir.y = (float)lua_tonumber( lua, -1 );
		lua_getfield( lua, 3, "z" );
		dir.z = (float)lua_tonumber( lua, -1 );

		yoffset = (float)lua_tonumber(lua, 4);
		xoffset = (float)lua_tonumber(lua, 5);
		distance = (float)lua_tonumber(lua, 6);
		angle = (float)lua_tonumber(lua, 7);
		//pos = g_transforms[transformIndex].getPos();
		//dir = g_transforms[transformIndex].getLookAt();

		g_camera->follow(pos, dir, distance, angle, xoffset, yoffset, fov);

		return 0;
	}

	int cameraUpdate(lua_State* lua)
	{
		assert( lua_gettop( lua ) == 6 );

		glm::vec3 campos, lookpos;

		campos.x = (float)lua_tonumber(lua, -6);
		campos.y = (float)lua_tonumber(lua, -5);
		campos.z = (float)lua_tonumber(lua, -4);
		lookpos.x = (float)lua_tonumber(lua, -3);
		lookpos.y = (float)lua_tonumber(lua, -2);
		lookpos.z = (float)lua_tonumber(lua, -1);

		g_camera->setCamera(campos, lookpos);

		return 1;
	}

	int getPos(lua_State* lua)
	{
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
		assert( lua_gettop( lua ) == 1 );

		float height = (float)lua_tonumber(lua, -1);
		g_camera->setHeight(height);

		return 1;
	}

	int getDirection(lua_State * lua)
	{
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