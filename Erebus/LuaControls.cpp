#include "LuaControls.h"

namespace LuaControls
{
	void registerFunctions( lua_State* lua )
	{
		// map key names to indices for Lua
		std::string suffix[3] = {"Pressed", "Released", "Down"};
		std::string keys[CONTROLS_MAX_KEYS] = { "W", "S", "A", "D", "Space", "Shift", "Tab", "One", "Two", "Three", "Four", "LMB" };
		lua_newtable( lua );
		for (int i = 0; i < CONTROLS_MAX_KEYS * 3; i++) {
			setKey(lua, i+1, (keys[i%CONTROLS_MAX_KEYS] + suffix[i/CONTROLS_MAX_KEYS]).c_str());
		}
		
		lua_pushnumber( lua, CONTROLS_MAX_KEYS*3);
		lua_setfield( lua, -2, "Max" ); // the max number of keys is 12

		lua_setglobal(lua, "Keys");

		// create actual table of key states
		lua_newtable( lua );
		for( int i=0; i<CONTROLS_MAX_KEYS*3; i++ )
		{
			lua_pushboolean( lua, false );
			lua_rawseti( lua, -2, i+1 );
		}

		lua_setglobal(lua, "Controls");
	}

	void sendControls( lua_State* lua, Controls* controls )
	{
		lua_getglobal( lua, "Controls" );
		bool* temp = controls->getKeys();
		for( int i=0; i<CONTROLS_MAX_KEYS*3; i++ )
		{
			lua_pushboolean( lua, temp[i] );
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