#include "LuaTransform.h"

namespace LuaTransform
{
	void registerFunctions( lua_State* lua, Transform* transforms )
	{
		luaL_newmetatable( lua, "transformMeta" );
		luaL_Reg regs[] =
		{
			{ "Bind",			bind },
			{ "Destroy",		destroy },
			{ "Move",			move },
			{ "Switch",			switchTransform },
			{ "Follow",			follow },
			{ "Fly",			fly },
			{ "Shoot",			shoot },
			{ "ToHeightmap",	toHeightmap },

			{ "SetPosition",	setPosition },
			{ "SetRotation",	setRotation },
			{ "SetScale",		setScale },

			{ "GetPosition",	getPosition },
			{ "GetRotation",	getRotation },
			{ "GetScale",		getScale },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, regs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );

		lua_pushlightuserdata( lua, transforms );
		lua_setfield( lua, -2, "__self" );

		lua_setglobal( lua, "Transform" );
	}

	int bind( lua_State* lua )
	{
		static int boundTrans = 0;

		int n = lua_gettop( lua );
		for( int i=1; i<=n; i++ )
			std::cout << lua_tonumber( lua, 1 ) << std::endl;
		lua_pushinteger( lua, boundTrans++ );
		return 1;
	}

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

			Transform* transforms = getTransforms( lua );

			transforms[index].move( direction, dt );
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

			Transform* transforms = getTransforms( lua );

			transforms[myIndex].follow( transforms[followIndex].getPos(), speed, dt );
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

			Transform* transforms = getTransforms( lua );
			transforms[index].move( glm::vec3( speed, transforms[index].getLookAt().y*(float)speed, 0 ), dt );
		}

		return 0;
	}

	int shoot( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 2 )
		{
			int a = lua_tointeger( lua, 1 );
			int b = lua_tointeger( lua, 2 );

			Transform* transforms = getTransforms( lua );
			transforms[a].setLookDir( transforms[b].getLookAt() );
			transforms[a].setPos( transforms[b].getPos() );
		}

		return 0;
	}

	int toHeightmap( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			int index = lua_tointeger( lua, 1 );

			Transform* transforms = getTransforms( lua );
			lua_pushboolean( lua, transforms[index].toHeightmap() );
			result = 1;
		}

		return result;
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

			Transform* transforms = getTransforms( lua );
			transforms[index].setPos( position );
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

			Transform* transforms = getTransforms( lua );
			transforms[index].setRotation( position );
		}

		return 0;
	}

	int setScale( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 2 )
		{
			int index = lua_tointeger( lua, 1 );
			float scale = lua_tonumber( lua, 2 );

			Transform* transforms = getTransforms( lua );
			transforms[index].setScale( scale );
		}

		return 0;
	}

	int getPosition( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			int index = lua_tointeger( lua, 1 );

			Transform* transforms = getTransforms( lua );
			glm::vec3 position = transforms[index].getPos();

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

	int getRotation( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			int index = lua_tointeger( lua, 1 );

			Transform* transforms = getTransforms( lua );
			glm::vec3 rotation = transforms[index].getRotation();

			lua_newtable( lua );
			lua_pushnumber( lua, rotation.x );
			lua_setfield( lua, -2, "x" );

			lua_pushnumber( lua, rotation.x );
			lua_setfield( lua, -2, "y" );

			lua_pushnumber( lua, rotation.x );
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

			Transform* transforms = getTransforms( lua );
			//lua_pushnumber( lua, transforms[index].getScale() );

			result = 1;
		}

		return result;
	}

	Transform* getTransforms( lua_State* lua )
	{
		lua_getglobal( lua, "Transform" );
		lua_getfield( lua, -1, "__self" );

		Transform* result = (Transform*)lua_touserdata( lua, -1 );
		lua_pop( lua, 1 );

		return result;
	}
}