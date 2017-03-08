#include "LuaParticles.h"

namespace LuaParticles
{
	static std::vector<Gear::ParticleSystem*>* g_systems = nullptr;
	static std::vector<Gear::ParticleEmitter*>* g_emitters = nullptr;
	static Importer::Assets* ass;
	void registerFunctions(lua_State* lua, std::vector<Gear::ParticleSystem*>* particleSystems, std::vector<Gear::ParticleEmitter*>* emitters, Importer::Assets* assets)
	{
		g_systems = particleSystems;
		g_emitters = emitters;
		ass = assets;

		luaL_newmetatable(lua, "particleMeta");
		luaL_Reg regs[] =
		{
			{ "Bind"	   ,	bind },
			{ "Unbind",			unbind },
			{ "SetPosition",	setPosition },
			{ "SetAlive",		setAlive },
			{ "SetDead",		setDead	 },
			{ "Explode",		explode},
			{ "SetDirection",	setDirection},
			{ "SetExtro",		setExtro},
			{ "SetFocus",       setFocus},
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
			{ "Unbind",			unbindEm },
			{ "SetPosition",	setPositionEm },
			{ "SetAlive",		setAliveEm },
			{ "SetDead",		setDeadEm },
			{ "SetFocus",       setFocusEm},
			{ "Explode",		explodeEm },
			{ "SetDirection",	setDirectionEm },
			{ "SetExtro",		setExtroEm },
			{ "SetTexture",     setTexture },
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

		//lua_pushinteger(lua, g_systems->size());
		//g_systems->push_back(new Gear::ParticleSystem(lua_tostring(lua, 1), ass));

		int index = -1;
		for( int i=0; i<g_systems->size(); i++ )
			if( g_systems->at(i) == nullptr )
				index = i;

		if( index < 0 )
		{
			index = g_systems->size();
			g_systems->push_back(nullptr);
		}

		lua_pushinteger( lua, index );
		g_systems->at(index) = new Gear::ParticleSystem(lua_tostring(lua, 1), ass);

		return 1;
	}

	int unbind(lua_State* lua)
	{
		assert( lua_gettop( lua ) == 1 );
		
		int index = (int)lua_tointeger( lua, 1 );
		assert( index >= 0 && index < g_systems->size() );

		delete g_systems->at(index);
		g_systems->at(index) = nullptr;

		return 0;
	}

	int setPosition(lua_State* lua)
	{
		glm::vec3 position;
		int index = (int)lua_tointeger(lua, 1);
		if (lua_gettop(lua) == 2) {
			lua_getfield(lua, 2, "x");
			position.x = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "y");
			position.y = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "z");
			position.z = (float)lua_tonumber(lua, -1);
		}
		if (lua_gettop(lua) == 4)
		{
			position.x = lua_tonumber(lua, 2);
			position.y = lua_tonumber(lua, 3);
			position.z = lua_tonumber(lua, 4);
		}
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
		assert( lua_gettop( lua ) == 2 );
		
		glm::vec3 position;
		lua_getfield(lua, 2, "x");
		position.x = (float)lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "y");
		position.y = (float)lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "z");
		position.z = (float)lua_tonumber(lua, -1);

		g_systems->at((int)lua_tointeger(lua, 1))->explode(position);

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

	int setFocus(lua_State* lua)
	{
		assert(lua_gettop(lua) == 2);
		g_systems->at((int)lua_tointeger(lua, 1))->setFocus((bool)lua_toboolean(lua, 2));
		return 0;
	}

	int bindEm(lua_State* lua)
	{
		assert(lua_gettop(lua) == 9);
		/*int maxPart, float life, float speed, float particleRate, int partPerSprut, float gravity, float foccus,
		float size, glm::vec3 direction, Importer::TextureAsset* texture, float growFactor*/

		//lua_pushinteger(lua, g_emitters->size());
		//g_emitters->push_back(new Gear::ParticleEmitter((int)lua_tointeger(lua, 1), (float)lua_tonumber(lua, 2), (float)lua_tonumber(lua, 3), (float)lua_tonumber(lua, 4), (int)lua_tointeger(lua, 5), (float)lua_tonumber(lua, 6), (float)lua_tonumber(lua, 7), (float)lua_tonumber(lua, 8), (float)lua_tonumber(lua, 9)));

		int index = -1;
		for( int i=0; i<g_emitters->size(); i++ )
			if( g_emitters->at(i) == nullptr )
				index = i;

		if( index < 0 )
		{
			index = g_emitters->size();
			g_emitters->push_back( nullptr );
		}

		lua_pushinteger( lua, index );
		g_emitters->at(index) = new Gear::ParticleEmitter((int)lua_tointeger(lua, 1), (float)lua_tonumber(lua, 2), (float)lua_tonumber(lua, 3), (float)lua_tonumber(lua, 4), (int)lua_tointeger(lua, 5), (float)lua_tonumber(lua, 6), (float)lua_tonumber(lua, 7), (float)lua_tonumber(lua, 8), (float)lua_tonumber(lua, 9));
		
		return 1;
	}

	int unbindEm(lua_State* lua)
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger( lua, 1 );
		assert( index >= 0 && index < g_emitters->size() );

		delete g_emitters->at(index);
		g_emitters->at(index) = nullptr;

		return 0;
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

		g_emitters->at(index)->setEmitterPos(position);

		return 0;
	}

	int setAliveEm(lua_State* lua)
	{
		assert(lua_gettop(lua) == 1);
		int index = (int)lua_tointeger(lua, 1);
		g_emitters->at(index)->activate();
		return 0;
	}

	int setDeadEm(lua_State * lua)
	{
		assert(lua_gettop(lua) == 1);
		int index = (int)lua_tointeger(lua, 1);
		g_emitters->at(index)->deActivate();
		return 0;
	}
	int setFocusEm(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);
		int index = (int)lua_tointeger(lua, 1);
		g_emitters->at(index)->setFocus((int)lua_tonumber(lua, 1));
		return 0;
		return 0;
	}
	int explodeEm(lua_State * lua)
	{
		assert(lua_gettop(lua) == 1);
		int index = (int)lua_tointeger(lua, 1);
		g_emitters->at(index)->explode();
		return 0;
	}

	int setDirectionEm(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);

		int index = (int)lua_tointeger(lua, 1);
		glm::vec3 dir;
		lua_getfield(lua, 2, "x");
		dir.x = (float)lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "y");
		dir.y = (float)lua_tonumber(lua, -1);

		lua_getfield(lua, 2, "z");
		dir.z = (float)lua_tonumber(lua, -1);
		g_emitters->at(index)->setDirection(dir);

		return 0;
	}
	int setExtroEm(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);
		g_emitters->at((int)lua_tointeger(lua, 1))->setExtrovert((bool)lua_toboolean(lua, 2));
		return 0;
	}
	int setTexture(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);
		lua_getfield(lua, 2, "__self");
		Importer::TextureAsset* texture = (Importer::TextureAsset*)lua_touserdata(lua, -1);
		g_emitters->at((int)lua_tointeger(lua, 1))->setTexture(texture, ass);
		return 0;
	}
}