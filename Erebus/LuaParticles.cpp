#include "LuaParticles.h"

namespace LuaParticles
{
	static std::vector<Gear::ParticleSystem*>* g_systems = nullptr;
	static std::vector<Gear::ParticleEmitter>* g_emitters = nullptr;
	static Importer::Assets* ass;
	void registerFunctions(lua_State* lua, std::vector<Gear::ParticleSystem*>* particleSystems, std::vector<Gear::ParticleEmitter>* emitters, Importer::Assets* assets)
	{
		g_systems = particleSystems;
		g_emitters = emitters;
		ass = assets;

		luaL_newmetatable(lua, "particleMeta");
		luaL_Reg regs[] =
		{
			{ "Bind"	   ,	bind },
			{ "SetPosition",	setPosition },
			{ "SetAlive",		setAlive },
			{ "SetDead",		setDead	 },
			{ "Explode",		explode},
			{ "SetColor",		setColor},
			{ "SetDirection",	setDirection},
			{ "SetExtro",		setExtro},
			{ NULL, NULL }
		};
		luaL_setfuncs(lua, regs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");
		lua_setglobal(lua, "Particle");


		luaL_newmetatable(lua, "emitterMeta");
		luaL_Reg regs2[] =
		{
			{ "Bind"	   ,	bindEm },
			{ "SetPosition",	setPositionEm },
			{ "SetAlive",		setAliveEm },
			{ "SetDead",		setDeadEm },
			{ "Explode",		explodeEm },
			{ "SetColor",		setColorEm },
			{ "SetDirection",	setDirectionEm },
			{ "SetExtro",		setExtroEm },
			{ NULL, NULL }
		};
		luaL_setfuncs(lua, regs2, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");
		lua_setglobal(lua, "Emitter");
	}

	int bind(lua_State* lua)
	{
		assert( lua_gettop( lua ) == 1 );

		lua_pushinteger(lua, g_systems->size());
		g_systems->push_back(new Gear::ParticleSystem(lua_tostring(lua, 1), ass));

		return 1;
	}

	int setPosition(lua_State* lua)
	{
		assert(lua_gettop(lua) == 2);

		int index = (int)lua_tointeger(lua, 1);

		glm::vec3 position;
		lua_getfield(lua, 2, "x");
		position.x = (float)lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "y");
		position.y = (float)lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "z");
		position.z = (float)lua_tonumber(lua, -1);

		g_systems->at(index)->setSystemPos(position);

		return 0;
	}

	int setAlive(lua_State* lua)
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger(lua, 1);
		g_systems->at(index)->activate();

		return 0;
	}
	int setDead(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger(lua, 1);
		g_systems->at(index)->deActivate();

		return 0;
	}
	int explode(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger(lua, 1);
		g_systems->at(index)->explode();

		return 0;
	}
	int setColor(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		int index = (int)lua_tointeger(lua, 1);
		//g_particles->at(index)->setColor(lua_tonumber(lua, 2), lua_tonumber(lua, 3), lua_tonumber(lua, 4));

		return 0;
	}
	int setDirection(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		int index = (int)lua_tointeger(lua, 1);
		glm::vec3 dir((float)lua_tonumber(lua, 2), (float)lua_tonumber(lua, 3), (float)lua_tonumber(lua, 4));
		g_systems->at(index)->setDirection(dir);

		return 0;
	}
	int setExtro(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);
		g_systems->at((int)lua_tointeger(lua, 1))->setExtroversion((bool)lua_toboolean(lua, 2));
		return 0;
	}




	int bindEm(lua_State* lua)
	{
		assert(lua_gettop(lua) == 11);
		/*int maxPart, float life, float speed, float particleRate, int partPerSprut, float gravity, float foccus,
		float size, glm::vec3 direction, Importer::TextureAsset* texture, float growFactor*/
		lua_pushinteger(lua, g_systems->size());
		g_systems->push_back(new Gear::ParticleSystem(lua_tostring(lua, 1), ass));

		return 1;
	}

	int setPositionEm(lua_State* lua)
	{
		assert(lua_gettop(lua) == 2);

		int index = (int)lua_tointeger(lua, 1);

		glm::vec3 position;
		lua_getfield(lua, 2, "x");
		position.x = (float)lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "y");
		position.y = (float)lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "z");
		position.z = (float)lua_tonumber(lua, -1);

		g_systems->at(index)->setSystemPos(position);

		return 0;
	}

	int setAliveEm(lua_State* lua)
	{
		assert(lua_gettop(lua) == 1);

		int index = (int)lua_tointeger(lua, 1);
		g_systems->at(index)->activate();

		return 0;
	}
	int setDeadEm(lua_State * lua)
	{
		assert(lua_gettop(lua) == 1);

		int index = (int)lua_tointeger(lua, 1);
		g_systems->at(index)->deActivate();

		return 0;
	}
	int explodeEm(lua_State * lua)
	{
		assert(lua_gettop(lua) == 1);

		int index = (int)lua_tointeger(lua, 1);
		g_systems->at(index)->explode();

		return 0;
	}
	int setColorEm(lua_State * lua)
	{
		assert(lua_gettop(lua) == 4);

		int index = (int)lua_tointeger(lua, 1);
		//g_particles->at(index)->setColor(lua_tonumber(lua, 2), lua_tonumber(lua, 3), lua_tonumber(lua, 4));

		return 0;
	}
	int setDirectionEm(lua_State * lua)
	{
		assert(lua_gettop(lua) == 4);

		int index = (int)lua_tointeger(lua, 1);
		glm::vec3 dir((float)lua_tonumber(lua, 2), (float)lua_tonumber(lua, 3), (float)lua_tonumber(lua, 4));
		g_systems->at(index)->setDirection(dir);

		return 0;
	}
	int setExtroEm(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);
		g_systems->at((int)lua_tointeger(lua, 1))->setExtroversion((bool)lua_toboolean(lua, 2));
		return 0;
	}
}