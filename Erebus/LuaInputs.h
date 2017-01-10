#pragma once

#include "lua\lua.hpp"
#include "Inputs.h"

namespace LuaInputs
{
	void registerFunctions( lua_State* lua, Inputs* inputs );

	int keyDown( lua_State* lua );
	int keyRepeated( lua_State* lua );
	int keyPressed( lua_State* lua );
	int keyReleased( lua_State* lua );

	int buttonDown( lua_State* lua );
	int buttonPressed( lua_State* lua );
	int buttonReleased( lua_State* lua );

	int getTextInput( lua_State* lua );
}