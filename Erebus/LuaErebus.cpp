#include "LuaErebus.h"

namespace LuaErebus
{
	static Transform* g_transforms = nullptr;
	static Controls* g_controls = nullptr;

	void registerFunctions( lua_State* lua, Transform* transforms, Controls* controls )
	{
		g_transforms = transforms;
		g_controls = controls;

		luaL_newmetatable( lua, "erebusMeta" );
		luaL_Reg regs[] =
		{
			{ "SetControls", setControls },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, regs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
		lua_setglobal( lua, "Erebus" );
	}

	int setControls( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 1 )
		{
			int transformID = lua_tointeger( lua, 1 );
			g_controls->setControl( &g_transforms[transformID] );
		}

		return 0;
	}
}