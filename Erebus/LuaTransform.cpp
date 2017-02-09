#include "LuaTransform.h"
#include "glm\gtx\vector_angle.hpp"


#define GLM_FORCE_RADIANS

namespace LuaTransform
{
	// NOTE: Put global in Lua instead?
	// Putting static in front means we can only reach the
	// variable from this compilation unit.
	static Transform* g_transforms = nullptr;
	static int* g_boundTransforms = nullptr;
	void registerFunctions( lua_State* lua, Transform* transforms, int* boundTransforms)
	{
		g_transforms = transforms;
		g_boundTransforms = boundTransforms;

		luaL_newmetatable( lua, "transformMeta" );
		luaL_Reg regs[] =
		{
			{ "Bind",				bind },
			{ "ActiveControl",		activeControl},

			{ "SetPosition",		setPosition },
			{ "SetRotation",		setRotation },
			{ "SetLookAt",			setLookAt },
			{ "SetScale",			setScale },
			{ "SetScaleNonUniform", setScaleNonUniform },
			{ "SetPosFromTransformID", setPosFromTransID },


			{ "GetPosition",		getPosition },
			{ "GetRotation",		getRotation },
			{ "GetLookAt",			getLookAt },
			{ "GetScale",			getScale },
			{ "GetMovementDirection", getMoveDirection },
			
			{ "UpdateRotationFromLookVector", updateRotationFromLookVector},
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, regs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );

		lua_setglobal( lua, "Transform" );
	}

	int bind( lua_State* lua )
	{
		int n = lua_gettop( lua );
		for( int i=1; i<=n; i++ )
			std::cout << lua_tonumber( lua, 1 ) << std::endl;
		lua_pushinteger( lua, *g_boundTransforms );
		*g_boundTransforms += 1;

		return 1;
	}

	int follow( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 4 );

		int followIndex = (int)lua_tointeger( lua, 1 );
		int myIndex = (int)lua_tointeger( lua, 2 );
		float speed = (float)lua_tonumber( lua, 3 );
		float dt = (float)lua_tonumber( lua, 4 );

		g_transforms[myIndex].follow( g_transforms[followIndex].getPos(), speed, dt );

		return 0;
	}

	int activeControl(lua_State* lua)
	{
		assert( lua_gettop( lua ) == 2 );

		int index = (int)lua_tointeger(lua, 1);
		bool active = lua_toboolean(lua, 2) != 0;

		g_transforms[index].setActive( active);

		return 0;
	}

	int setPosition( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		int index = (int)lua_tointeger( lua, 1 );

		glm::vec3 position;
		lua_getfield( lua, 2, "x" );
		position.x = (float)lua_tonumber( lua, -1 );

		lua_getfield( lua, 2, "y" );
		position.y = (float)lua_tonumber( lua, -1 );

		lua_getfield( lua, 2, "z" );
		position.z = (float)lua_tonumber( lua, -1 );

		g_transforms[index].setPos( position );

		return 0;
	}

	int setRotation( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		int index = (int)lua_tointeger( lua, 1 );

		glm::vec3 position;
		lua_getfield( lua, 2, "x" );
		position.x = (float)lua_tonumber( lua, -1 );

		lua_getfield( lua, 2, "y" );
		position.y = (float)lua_tonumber( lua, -1 );

		lua_getfield( lua, 2, "z" );
		position.z = (float)lua_tonumber( lua, -1 );

		g_transforms[index].setRotation( position );

		return 0;
	}

	int setLookAt( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		int index = (int)lua_tointeger( lua, 1 );

		glm::vec3 lookAt;
		lua_getfield( lua, 2, "x" );
		lookAt.x = (float)lua_tonumber( lua, -1 );

		lua_getfield( lua, 2, "y" );
		lookAt.y = (float)lua_tonumber( lua, -1 );

		lua_getfield( lua, 2, "z" );
		lookAt.z = (float)lua_tonumber( lua, -1 );

		g_transforms[index].setLookAt( lookAt );

		return 0;
	}

	int setScale( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		int index = (int)lua_tointeger( lua, 1 );
		float scale = (float)lua_tonumber( lua, 2 );

		g_transforms[index].setScale( scale );

		return 0;
	}

	int setScaleNonUniform(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		glm::vec3 scale;
		int index = (int)lua_tointeger(lua, 1);
		scale.x = (float)lua_tonumber(lua, 2);
		scale.y = (float)lua_tonumber(lua, 3);
		scale.z = (float)lua_tonumber(lua, 4);

		g_transforms[index].setScale(scale);

		return 0;
	}

	int setPosFromTransID(lua_State* lua) 
	{
		assert( lua_gettop( lua ) == 2 );

		int indexFrom = (int)lua_tointeger(lua, 2);
		int indexTo = (int)lua_tointeger(lua, 1);

		g_transforms[indexTo].setPos(g_transforms[indexFrom].getPos());

		return 0;
	}

	int getPosition( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger( lua, 1 );

		glm::vec3 position = g_transforms[index].getPos();

		lua_newtable( lua );
		lua_pushnumber( lua, position.x );
		lua_setfield( lua, -2, "x" );

		lua_pushnumber( lua, position.y );
		lua_setfield( lua, -2, "y" );

		lua_pushnumber( lua, position.z );
		lua_setfield( lua, -2, "z" );

		return 1;
	}

	int getMoveDirection(lua_State* lua)//index, forward, left
	{
		assert( lua_gettop( lua ) == 3 );

		int index = (int)lua_tointeger(lua, 1);
		float forward = (float)lua_tonumber(lua, 2);
		float left = (float)lua_tonumber(lua, 3);

		glm::vec3 fwd = g_transforms[index].getLookAt();
		glm::vec3 lfd = glm::cross(glm::normalize(glm::vec3(fwd.x, 0, fwd.z)), {0,1,0});
		lfd *= left;
		fwd = fwd*forward + lfd;


		lua_newtable(lua);
		lua_pushnumber(lua, fwd.x);
		lua_setfield(lua, -2, "x");

		lua_pushnumber(lua, fwd.y);
		lua_setfield(lua, -2, "y");

		lua_pushnumber(lua, fwd.z);
		lua_setfield(lua, -2, "z");

		return 1;
	}

	int getRotation( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger( lua, 1 );

		glm::vec3 rotation = g_transforms[index].getRotation();

		lua_newtable( lua );
		lua_pushnumber( lua, rotation.x );
		lua_setfield( lua, -2, "x" );

		lua_pushnumber( lua, rotation.y );
		lua_setfield( lua, -2, "y" );

		lua_pushnumber( lua, rotation.z );
		lua_setfield( lua, -2, "z" );

		return 1;
	}

	int getLookAt( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger( lua, 1 );

		glm::vec3 lookAt = g_transforms[index].getLookAt();

		lua_newtable( lua );
		lua_pushnumber( lua, lookAt.x );
		lua_setfield( lua, -2, "x" );

		lua_pushnumber( lua, lookAt.y );
		lua_setfield( lua, -2, "y" );

		lua_pushnumber( lua, lookAt.z );
		lua_setfield( lua, -2, "z" );

		return 1;
	}

	int getScale( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger( lua, 1 );
		lua_pushnumber( lua, g_transforms[index].getScale().x );

		return 1;
	}
	int updateRotationFromLookVector(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 1 );

		int transID = (int)lua_tointeger(lua, 1);
		glm::vec3 tempLookdir = g_transforms[transID].getLookAt();
		tempLookdir.y = 0;
		tempLookdir = glm::normalize(tempLookdir);
		float rotY = ((tempLookdir.x > 0) * 2 - 1) * acos(glm::dot(tempLookdir, {0,0,1}));
		g_transforms[transID].setRotation({ 0, rotY, 0 });

		return 0;
	}
}