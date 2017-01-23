#pragma once

#include "lua\lua.hpp"
#include "SoundEngine.h"

namespace LuaSound
{
	void registerFunctions(lua_State* lua, SoundEngine* soundEngine);
	int play(lua_State* lua);
	int play3D(lua_State* lua);
	int pauseAll(lua_State* lua);
	int resumeAll(lua_State* lua);
	int setMasterVolume(lua_State* lua);
	int setPlayerTransform(lua_State* lua);
}