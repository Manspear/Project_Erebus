#include "LuaParticles.h"

namespace LuaParticles
{
	static std::vector<Gear::ParticleSystem*>* g_systems = nullptr;
	static Importer::Assets* ass;
	void registerFunctions(lua_State* lua, std::vector<Gear::ParticleSystem*>* particleSystems, Importer::Assets* assets)
	{
		g_systems = particleSystems;
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
			{ NULL, NULL }
		};
		luaL_setfuncs(lua, regs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");
		std::cout << g_systems << "\n";
		lua_setglobal(lua, "Particle");
	}

	int bind(lua_State* lua)
	{
		if (lua_gettop(lua) >= 1)
		{
			lua_pushinteger(lua, g_systems->size());
			g_systems->push_back(new Gear::ParticleSystem(lua_tostring(lua, 1), ass));
		}
		return 1;
	}

	int setPosition(lua_State* lua)
	{
		if (lua_gettop(lua) >= 4)
		{
			int index = lua_tointeger(lua, 1);
			if (index == 1)
				int x = 5;
			glm::vec3 pos(lua_tonumber(lua, 2), lua_tonumber(lua, 3), lua_tonumber(lua, 4));
			g_systems->at(index)->setSystemPos(pos);
		}
		return 0;
	}

	int setAlive(lua_State* lua)
	{
		if (lua_gettop(lua) >= 1)
		{
			int index = lua_tointeger(lua, 1);
			g_systems->at(index)->activate();
		}
		return 0;
	}
	int setDead(lua_State * lua)
	{
		if (lua_gettop(lua) >= 1)
		{
			int index = lua_tointeger(lua, 1);
			g_systems->at(index)->deActivate();
		}
		return 0;
	}
	int explode(lua_State * lua)
	{
		if (lua_gettop(lua) >= 1)
		{
			int index = lua_tointeger(lua, 1);
			g_systems->at(index)->explode();
		}
		return 0;
	}
	int setColor(lua_State * lua)
	{
		if (lua_gettop(lua) >= 4)
		{
			int index = lua_tointeger(lua, 1);
			//g_particles->at(index)->setColor(lua_tonumber(lua, 2), lua_tonumber(lua, 3), lua_tonumber(lua, 4));
		}
		return 0;
	}
	int setDirection(lua_State * lua)
	{
		if (lua_gettop(lua) >= 4)
		{
			int index = lua_tointeger(lua, 1);
			glm::vec3 dir(lua_tonumber(lua, 2), lua_tonumber(lua, 3), lua_tonumber(lua, 4));
			g_systems->at(index)->setDirection(dir);
		}
		return 0;
	}
}