#include "LuaInputs.h"

namespace LuaInputs
{
	static Inputs* g_inputs = nullptr;

	void setKey( lua_State* lua, const char* name, int index )
	{
		lua_pushnumber( lua, index );
		lua_setfield( lua, -2, name );
	}

	void registerFunctions( lua_State* lua, Inputs* inputs )
	{
		g_inputs = inputs;

		// Inputs
		luaL_newmetatable( lua, "inputsMeta" );
		luaL_Reg inputsRegs[] =
		{
			{ "KeyDown", keyDown },
			{ "KeyRepeated", keyRepeated },
			{ "KeyPressed", keyPressed },
			{ "KeyReleased", keyReleased },
			
			{ "ButtonDown", buttonDown },
			{ "ButtonPressed", buttonPressed },
			{ "ButtonReleased", buttonReleased },

			{ "GetTextInput", getTextInput },
			{ "GetMousePos", getMousePos },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, inputsRegs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
		lua_setglobal( lua, "Inputs" );

		lua_newtable( lua );
		setKey( lua, "Space", GLFW_KEY_SPACE );
		setKey( lua, "Escape", GLFW_KEY_ESCAPE );
		setKey( lua, "Enter", GLFW_KEY_ENTER );
		setKey( lua, "Tab", GLFW_KEY_TAB );
		setKey( lua, "Backspace", GLFW_KEY_BACKSPACE );
		setKey( lua, "Right", GLFW_KEY_RIGHT );
		setKey( lua, "Left", GLFW_KEY_LEFT );
		setKey( lua, "Down", GLFW_KEY_DOWN );
		setKey( lua, "Up", GLFW_KEY_UP );
		setKey( lua, "Console", GLFW_KEY_GRAVE_ACCENT );
		setKey(lua, "Shift", GLFW_KEY_LEFT_SHIFT);
		lua_setglobal( lua, "Keys" );

		lua_newtable( lua );
		setKey( lua, "Left", 0 );
		setKey( lua, "Right", 1 );
		setKey( lua, "Middle", 0 );
		lua_setglobal( lua, "Buttons" );
	}

	unsigned int getKey( lua_State* lua )
	{
		unsigned int result = 0;
		if( lua_type( lua, 1 ) == LUA_TSTRING )
		{
			const char* str = lua_tostring( lua, 1 );
			result = str[0];
		}
		else
			result = (int)lua_tointeger( lua, 1 );

		return result;
	}

	int keyDown( lua_State* lua )
	{
		assert( lua_gettop( lua ) >= 1 );

		unsigned int key = getKey( lua );
		lua_pushboolean( lua, g_inputs->keyPressed( key ) );
		return 1;
	}

	int keyRepeated( lua_State* lua )
	{
		assert( lua_gettop( lua ) >= 1 );

		unsigned int key = getKey( lua );
		lua_pushboolean( lua, g_inputs->keyRepeated( key ) );
		return 1;
	}

	int keyPressed( lua_State* lua )
	{
		assert( lua_gettop( lua ) >= 1 );

		unsigned int key = getKey( lua );
		lua_pushboolean( lua, g_inputs->keyPressedThisFrame( key ) );
		return 1;
	}

	int keyReleased( lua_State* lua )
	{
		assert( lua_gettop( lua ) >= 1 );

		unsigned int key = getKey( lua );
		lua_pushboolean( lua, g_inputs->keyReleasedThisFrame( key ) );
		return 1;
	}

	int buttonDown( lua_State* lua )
	{
		assert( lua_gettop( lua ) >= 1 );

		unsigned int button = (unsigned int)lua_tointeger( lua, 1 );
		lua_pushboolean( lua, g_inputs->buttonPressed( button ) );
		return 1;
	}

	int buttonPressed( lua_State* lua )
	{
		assert( lua_gettop( lua ) >= 1 );

		unsigned int button = (unsigned int)lua_tointeger( lua, 1 );
		lua_pushboolean( lua, g_inputs->buttonPressedThisFrame( button ) );
		return 1;
	}

	int buttonReleased( lua_State* lua )
	{
		assert( lua_gettop( lua ) >= 1 );

		unsigned int button = (unsigned int)lua_tointeger( lua, 1 );
		lua_pushboolean( lua, g_inputs->buttonReleasedThisFrame( button ) );
		return 1;
	}

	int getTextInput( lua_State* lua )
	{
		lua_pushstring( lua, g_inputs->getTextInput() );
		return 1;
	}
	int getMousePos(lua_State * lua)
	{
		lua_pushnumber(lua, g_inputs->getMousePos().x);
		lua_pushnumber(lua, g_inputs->getMousePos().y);
		return 2;
	}
}