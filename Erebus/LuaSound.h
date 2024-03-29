#pragma once

#include "lua\lua.hpp"
#include "SoundEngine.h"

namespace LuaSound
{
	void registerFunctions(lua_State* lua, SoundEngine* soundEngine);
	int fade(lua_State* lua);
	int crossfade(lua_State* lua);
	int play(lua_State* lua);
	int pause(lua_State* lua);
	int resume(lua_State* lua);
	int stop(lua_State* lua);
	int pauseAll(lua_State* lua);
	int resumeAll(lua_State* lua);
	int clearAll(lua_State* lua);
	int setMasterVolume(lua_State* lua);
	int setVolume(lua_State* lua);
	int setPosition(lua_State* lua);
	int setVelocity(lua_State* lua);
	int setPlayerTransform(lua_State* lua);

}