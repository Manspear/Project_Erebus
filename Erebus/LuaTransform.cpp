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
	static bool* g_activeTransforms = nullptr;
	void registerFunctions( lua_State* lua, Transform* transforms, int* boundTransforms)
	{
		g_transforms = transforms;
		g_boundTransforms = boundTransforms;

		luaL_newmetatable( lua, "transformMeta" );
		luaL_Reg regs[] =
		{
			{ "Bind",				bind },
			{ "Destroy",			destroy },
			{ "Move",				move },
			{ "Switch",				switchTransform },
			{ "Follow",				follow },
			{ "Fly",				fly },
			{ "Shoot",				shoot },
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

	// NOTE: Copied from the old LuaBinds.h
	// What is this function supposed to do?
	//Det var på tiden vi skapade new Transform() fårn lua istället för att ge ett index
	int destroy( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 1 )
		{
			Transform* transform = (Transform*)lua_touserdata( lua, 1 );
			delete transform;
		}
		return 0;
	}

	int move( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 5 )
		{
			int index = lua_tointeger( lua, 1 );
			glm::vec3 direction( lua_tonumber( lua, 2 ), lua_tonumber( lua, 3 ), lua_tonumber( lua, 4 ) );
			float dt = lua_tonumber( lua, 5 );

			g_transforms[index].move( direction, dt );
		}

		return 0;
	}

	int switchTransform( lua_State* lua )
	{
		return 0;
	}

	int follow( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 4 )
		{
			int followIndex = lua_tointeger( lua, 1 );
			int myIndex = lua_tointeger( lua, 2 );
			float speed = lua_tonumber( lua, 3 );
			float dt = lua_tonumber( lua, 4 );

			g_transforms[myIndex].follow( g_transforms[followIndex].getPos(), speed, dt );
		}

		return 0;
	}

	int fly( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 3 )
		{
			int index = lua_tointeger( lua, 1 );
			int speed = lua_tointeger( lua, 2 );
			float dt = lua_tonumber( lua, 3 );

			g_transforms[index].move( glm::vec3( speed, g_transforms[index].getLookAt().y*(float)speed, 0 ), dt );
		}

		return 0;
	}

	int shoot( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 2 )
		{
			int a = lua_tointeger( lua, 1 );
			int b = lua_tointeger( lua, 2 );

			g_transforms[a].setLookDir( g_transforms[b].getLookAt() );
			g_transforms[a].setPos(g_transforms[b].getPos());
		}

		return 0;
	}

	int activeControl(lua_State* lua)
	{
		if (lua_gettop(lua) >= 2)
		{
			int index = lua_tointeger(lua, 1);
			bool active = lua_toboolean(lua, 2);

			g_transforms[index].setActive( active);
		}
		return 0;
	}

	int setPosition( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 2 )
		{
			int index = lua_tointeger( lua, 1 );

			glm::vec3 position;
			lua_getfield( lua, 2, "x" );
			position.x = lua_tonumber( lua, -1 );

			lua_getfield( lua, 2, "y" );
			position.y = lua_tonumber( lua, -1 );

			lua_getfield( lua, 2, "z" );
			position.z = lua_tonumber( lua, -1 );

			g_transforms[index].setPos( position );
		}

		return 0;
	}

	int setRotation( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 2 )
		{
			int index = lua_tointeger( lua, 1 );

			glm::vec3 position;
			lua_getfield( lua, 2, "x" );
			position.x = lua_tonumber( lua, -1 );

			lua_getfield( lua, 2, "y" );
			position.y = lua_tonumber( lua, -1 );

			lua_getfield( lua, 2, "z" );
			position.z = lua_tonumber( lua, -1 );

			g_transforms[index].setRotation( position );
		}

		return 0;
	}

	int setLookAt( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 2 )
		{
			int index = lua_tointeger( lua, 1 );

			glm::vec3 lookAt;
			lua_getfield( lua, 2, "x" );
			lookAt.x = lua_tonumber( lua, -1 );

			lua_getfield( lua, 2, "y" );
			lookAt.y = lua_tonumber( lua, -1 );

			lua_getfield( lua, 2, "z" );
			lookAt.z = lua_tonumber( lua, -1 );

			g_transforms[index].setLookAt( lookAt );
		}

		return 0;
	}

	int setScale( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 2 )
		{
			int index = lua_tointeger( lua, 1 );
			float scale = lua_tonumber( lua, 2 );

			g_transforms[index].setScale( scale );
		}

		return 0;
	}

	int setScaleNonUniform(lua_State * lua)
	{
		if (lua_gettop(lua) >= 2)
		{
			glm::vec3 scale;
			int index = lua_tointeger(lua, 1);
			scale.x = lua_tonumber(lua, 2);
			scale.y = lua_tonumber(lua, 3);
			scale.z = lua_tonumber(lua, 4);

			g_transforms[index].setScale(scale);
		}

		return 0;
	}

	int setPosFromTransID(lua_State* lua) {
		if (lua_gettop(lua) >= 2)
		{
			int indexFrom = lua_tointeger(lua, 2);
			int indexTo = lua_tointeger(lua, 1);

			g_transforms[indexTo].setPos(g_transforms[indexFrom].getPos());
		}

		return 0;
	}

	int getPosition( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			int index = lua_tointeger( lua, 1 );

			glm::vec3 position = g_transforms[index].getPos();

			lua_newtable( lua );
			lua_pushnumber( lua, position.x );
			lua_setfield( lua, -2, "x" );

			lua_pushnumber( lua, position.y );
			lua_setfield( lua, -2, "y" );

			lua_pushnumber( lua, position.z );
			lua_setfield( lua, -2, "z" );

			result = 1;
		}

		return result;
	}

	int getMoveDirection(lua_State* lua)//index, forward, left
	{
		int result = 0;

		if (lua_gettop(lua) >= 3)
		{
			int index = lua_tointeger(lua, 1);
			float forward = lua_tonumber(lua, 2);
			float left = lua_tonumber(lua, 3);

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

			result = 1;
		}

		return result;
	}

	int getRotation( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			int index = lua_tointeger( lua, 1 );

			glm::vec3 rotation = g_transforms[index].getRotation();

			lua_newtable( lua );
			lua_pushnumber( lua, rotation.x );
			lua_setfield( lua, -2, "x" );

			lua_pushnumber( lua, rotation.y );
			lua_setfield( lua, -2, "y" );

			lua_pushnumber( lua, rotation.z );
			lua_setfield( lua, -2, "z" );

			result = 1;
		}

		return result;
	}

	int getLookAt( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			int index = lua_tointeger( lua, 1 );

			glm::vec3 lookAt = g_transforms[index].getLookAt();

			lua_newtable( lua );
			lua_pushnumber( lua, lookAt.x );
			lua_setfield( lua, -2, "x" );

			lua_pushnumber( lua, lookAt.y );
			lua_setfield( lua, -2, "y" );

			lua_pushnumber( lua, lookAt.z );
			lua_setfield( lua, -2, "z" );

			result = 1;
		}

		return result;
	}

	int getScale( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			int index = lua_tointeger( lua, 1 );

			//lua_pushnumber( lua, g_transforms[index].getScale() );

			result = 1;
		}

		return result;
	}
	int updateRotationFromLookVector(lua_State * lua)
	{
		int transID = lua_tointeger(lua, -1);
		glm::vec3 tempLookdir = g_transforms[transID].getLookAt();
		tempLookdir.y = 0;
		tempLookdir = glm::normalize(tempLookdir);
		//float rotY = ((tempLookdir.x > 0)*2-1) * glm::angle(tempLookdir, glm::vec3(0.0f, 0.0f, 1.0f));
		float rotY = ((tempLookdir.x > 0) * 2 - 1) * acos(glm::dot(tempLookdir, {0,0,1}));
		g_transforms[transID].setRotation({ 0, rotY, 0 });
		return 0;
	}
}