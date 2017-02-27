#include "LuaCamera.h"
#include "Transform.h"

namespace LuaCamera {
	static Camera* g_camera = nullptr;
	static TransformHandler* g_transformHandler = nullptr;

	void registerFunctions(lua_State * lua, Camera * camera, TransformHandler* transformHandler )
	{
		g_camera = camera;
		g_transformHandler = transformHandler;

		luaL_newmetatable(lua, "cameraMeta");
		luaL_Reg regs[] =
		{
			{ "Follow",			follow },
			{ "Update",			cameraUpdate },
			{ "GetPos",         getPos },
			{ "SetHeight",      setHeight },
			{ "GetDirection",   getDirection},
			{ "GetRight",		getRight },
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, regs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");

		lua_setglobal(lua, "Camera");
	}

	int follow(lua_State* lua)
	{
		assert( lua_gettop( lua ) == 6 );

		glm::vec3 pos, dir;
		int transformIndex;
		float distance, angle, xoffset, yoffset, fov;
		
		angle = (float)lua_tonumber(lua, -1);
		distance = (float)lua_tonumber(lua, -2);
		xoffset = (float)lua_tonumber(lua, -3);
		yoffset = (float)lua_tonumber(lua, -4);
		transformIndex = (int)lua_tointeger(lua, -5);
		fov = (float)lua_tonumber(lua, -6);
		
		//pos = g_transforms[transformIndex].getPos();
		//dir = g_transforms[transformIndex].getLookAt();
		pos = g_transformHandler->getTransform( transformIndex )->pos;
		dir = g_transformHandler->getTransform( transformIndex )->lookAt;

		g_camera->follow(pos, dir, distance, angle, xoffset, yoffset, fov);

		return 1;
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
	int getRight(lua_State * lua)
	{
		glm::vec3 position = g_camera->getRight();

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