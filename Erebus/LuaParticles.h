#pragma once

#include "lua\lua.hpp"
#include "ParticleSystem.h"

namespace LuaParticles
{
	void registerFunctions(lua_State* lua, std::vector<Gear::ParticleSystem*>* particleSystems, std::vector<Gear::ParticleEmitter*>* emitters, Importer::Assets* ass);
	int bind(lua_State* lua);
	int setPosition(lua_State* lua);
	int setAlive(lua_State* lua);
	int setDead(lua_State* lua);
	int explode(lua_State* lua);
	int setDirection(lua_State* lua);
	int setExtro(lua_State* lua);

	int bindEm(lua_State* lua);
	int setPositionEm(lua_State* lua);
	int setAliveEm(lua_State* lua);
	int setDeadEm(lua_State* lua);
	int setFocusEm(lua_State* lua);
	int explodeEm(lua_State* lua);
	int setDirectionEm(lua_State* lua);
	int setExtroEm(lua_State* lua);
	int setTexture(lua_State* lua);
}
