#include "LuaControls.h"

namespace LuaControls
{
	void registerFunctions( lua_State* lua )
	{
		// map key names to indices for Lua
		lua_newtable( lua );
		setKey( lua, 1, "W" );
		setKey( lua, 2, "S" );
		setKey( lua, 3, "A" );
		setKey( lua, 4, "D" );
		setKey( lua, 5, "Space" );
		setKey( lua, 6, "Shift" );
		setKey( lua, 7, "Tab" );
		setKey( lua, 8, "LMB" );
		
		lua_pushnumber( lua, CONTROLS_MAX_KEYS );
		lua_setfield( lua, -2, "Max" ); // the max number of keys is 7

		lua_setglobal( lua, "Keys" );

		// create actual table of key states
		lua_newtable( lua );
		for( int i=0; i<CONTROLS_MAX_KEYS; i++ )
		{
			lua_pushboolean( lua, false );
			lua_rawseti( lua, -2, i+1 );
		}
		lua_setglobal( lua, "Controls" );
	}

	void sendControls( lua_State* lua, Controls* controls )
	{
		lua_getglobal( lua, "Controls" );
		for( int i=0; i<CONTROLS_MAX_KEYS; i++ )
		{
			lua_pushboolean( lua, controls->getKeys()[i] );
			lua_rawseti( lua, -2, i+1 );
		}
		lua_pop( lua, 1 );
	}

	void setKey( lua_State* lua, int index, const char* name )
	{
		lua_pushnumber( lua, index );
		lua_setfield( lua, -2, name );
	}
}