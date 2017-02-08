#pragma once

#include "lua\lua.hpp"
#include "ParticleSystem.h"

namespace LuaParticles
{
	void registerFunctions(lua_State* lua, std::vector<Gear::ParticleSystem*>* particleSystems, Importer::Assets* ass);
	int bind(lua_State* lua);
	int setPosition(lua_State* lua);
	int setAlive(lua_State* lua);
	int setDead(lua_State* lua);
	int explode(lua_State* lua);
	int setColor(lua_State* lua);
	int setDirection(lua_State* lua);
	int setExtro(lua_State* lua);
}
