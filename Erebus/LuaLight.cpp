#include "LuaLight.h"
namespace LuaLight {
	static Gear::GearEngine* g_gearEngine = nullptr;

	void LuaLight::registerFunctions(lua_State * lua,
		Gear::GearEngine* gearEngine)
	{
		g_gearEngine = gearEngine;

		luaL_newmetatable(lua, "lightMeta");
		luaL_Reg imageRegs[] =
		{
			{ "addLight", addLight },
			{ "updatePos", updatePos },
			{ "updateColor", updateColor },
			{ "updateRadius", updateRadius },
			{ "updateIntensity", updateIntensity },
			{ "removeLight", removeLight },
			{ "__gc", unloadLight },
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, imageRegs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");

		lua_newtable(lua);
		luaL_setmetatable(lua, "lightMeta");
		lua_setglobal(lua, "Light");
		lua_pop(lua, 1);
	}

	int LuaLight::addLight(lua_State * lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 8)
		{
			float posX = lua_tonumber(lua, 1);
			float posY = lua_tonumber(lua, 2);
			float posZ = lua_tonumber(lua, 3);
			float colorR = lua_tonumber(lua, 4);
			float colorG = lua_tonumber(lua, 5);
			float colorB = lua_tonumber(lua, 6);
			float radius = lua_tonumber(lua, 7);
			float intensity = lua_tonumber(lua, 8);

			Lights::PointLight* light = new Lights::PointLight(glm::vec4(posX, posY, posZ, 0), glm::vec4(colorR, colorG, colorB, 0), glm::vec4(radius, intensity, 0, 0));

			g_gearEngine->queueAddLights(light);

			if (light)
			{
				lua_newtable(lua);
				luaL_setmetatable(lua, "lightMeta");
				lua_pushlightuserdata(lua, light);
				lua_setfield(lua, -2, "__self");
				result = 1;
			}
		}

		return result;
	}

	int LuaLight::updatePos(lua_State * lua)
	{
		if (lua_gettop(lua) >= 4)
		{
			lua_getfield(lua, 1, "__self");
			Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);

			float posX = lua_tonumber(lua, 2);
			float posY = lua_tonumber(lua, 3);
			float posZ = lua_tonumber(lua, 4);

			light->pos = glm::vec4(posX, posY, posZ, 0);

			g_gearEngine->queueUpdateLights(light);
		}
		return 0;
	}

	int LuaLight::updateColor(lua_State * lua)
	{
		if (lua_gettop(lua) >= 4)
		{
			lua_getfield(lua, 1, "__self");
			Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);

			float colorR = lua_tonumber(lua, 2);
			float colorG = lua_tonumber(lua, 3);
			float colorB = lua_tonumber(lua, 4);

			light->color = glm::vec4(colorR, colorG, colorB, 0);

			g_gearEngine->queueUpdateLights(light);
		}
		return 0;
	}

	int LuaLight::updateRadius(lua_State * lua)
	{
		if (lua_gettop(lua) >= 2)
		{
			lua_getfield(lua, 1, "__self");
			Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);

			float radius = lua_tonumber(lua, 2);

			light->radius.r = radius;

			g_gearEngine->queueUpdateLights(light);
		}
		return 0;
	}

	int LuaLight::updateIntensity(lua_State * lua)
	{
		if (lua_gettop(lua) >= 2)
		{
			lua_getfield(lua, 1, "__self");
			Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);

			float intensity = lua_tonumber(lua, 2);

			light->radius.g = intensity;
			g_gearEngine->queueUpdateLights(light);
		}
		return 0;
	}

	int LuaLight::removeLight(lua_State * lua)
	{
		if (lua_gettop(lua) >= 1)
		{
			lua_getfield(lua, 1, "__self");
			Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);

			g_gearEngine->queueRemoveLights(light);
		}

		return 0;
	}

	int LuaLight::unloadLight(lua_State * lua)
	{
		lua_getfield(lua, 1, "__self");
		Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);
		delete light;
		return 0;
	}


}