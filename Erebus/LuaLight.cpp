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
			//{"__gc", unloadLight },
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
		//if (lua_gettop(lua) >= 9)
		//{
		//	float posX = (float)lua_tonumber(lua, 1);
		//	float posY = (float)lua_tonumber(lua, 2);
		//	float posZ = (float)lua_tonumber(lua, 3);
		//	float colorR = (float)lua_tonumber(lua, 4);
		//	float colorG = (float)lua_tonumber(lua, 5);
		//	float colorB = (float)lua_tonumber(lua, 6);
		//	float radius = (float)lua_tonumber(lua, 7);
		//	float intensity = (float)lua_tonumber(lua, 8);
		//	
		//	Lights::PointLight* light = new Lights::PointLight(glm::vec4(posX, posY, posZ, 0), glm::vec4(colorR, colorG, colorB, 0), glm::vec4(radius, intensity, 0, 0));
		//	
		//	g_gearEngine->queueAddDynamicLights(light);
		//	
		//	if (light)
		//	{
		//		lua_newtable(lua);
		//		luaL_setmetatable(lua, "lightMeta");
		//		lua_pushlightuserdata(lua, light);
		//		lua_setfield(lua, -2, "__self");
		//		result = 1;
		//	}
		//}
		//else if (lua_gettop(lua) >= 8)
		//{
		//	float posX = (float)lua_tonumber(lua, 1);
		//	float posY = (float)lua_tonumber(lua, 2);
		//	float posZ = (float)lua_tonumber(lua, 3);
		//	float colorR = (float)lua_tonumber(lua, 4);
		//	float colorG = (float)lua_tonumber(lua, 5);
		//	float colorB = (float)lua_tonumber(lua, 6);
		//	float radius = (float)lua_tonumber(lua, 7);
		//	float intensity = (float)lua_tonumber(lua, 8);
		//
		//	Lights::PointLight* light = new Lights::PointLight(glm::vec4(posX, posY, posZ, 0), glm::vec4(colorR, colorG, colorB, 0), glm::vec4(radius, intensity, 0, 0));
		//
		//	g_gearEngine->queueAddLights(light);
		//
		//	if (light)
		//	{
		//		lua_newtable(lua);
		//		luaL_setmetatable(lua, "lightMeta");
		//		lua_pushlightuserdata(lua, light);
		//		lua_setfield(lua, -2, "__self");
		//		result = 1;
		//	}
		//}

		if (lua_gettop(lua) >= 8)
		{
			Lights::PointLight l;
			l.pos.x = (float)lua_tonumber(lua, 1);
			l.pos.y = (float)lua_tonumber(lua, 2);
			l.pos.z = (float)lua_tonumber(lua, 3);
			l.color.r = (float)lua_tonumber(lua, 4);
			l.color.g = (float)lua_tonumber(lua, 5);
			l.color.b = (float)lua_tonumber(lua, 6);
			l.radius.r = (float)lua_tonumber(lua, 7);
			l.radius.g = (float)lua_tonumber(lua, 8);

			int index;

			if (lua_gettop(lua) >= 9)
				index = g_gearEngine->addDynamicLight(l);
			else
				index = g_gearEngine->addStaticLight(l);

			lua_pushinteger(lua, index);
			result = 1;
		}
		

		return result;
	}

	int LuaLight::updatePos(lua_State * lua)
	{
		//if (lua_gettop(lua) >= 5)
		//{
		//	lua_getfield(lua, 1, "__self");
		//	Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);
		//
		//	float posX = (float)lua_tonumber(lua, 2);
		//	float posY = (float)lua_tonumber(lua, 3);
		//	float posZ = (float)lua_tonumber(lua, 4);
		//
		//	light->pos = glm::vec4(posX, posY, posZ, 0);
		//
		//	g_gearEngine->queueUpdateDynamicLights(light);
		//
		//}
		//else if (lua_gettop(lua) >= 4)
		//{
		//	lua_getfield(lua, 1, "__self");
		//	Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);
		//
		//	float posX = (float)lua_tonumber(lua, 2);
		//	float posY = (float)lua_tonumber(lua, 3);
		//	float posZ = (float)lua_tonumber(lua, 4);
		//
		//	light->pos = glm::vec4(posX, posY, posZ, 0);
		//
		//	g_gearEngine->queueUpdateLights(light);
		//}

		if (lua_gettop(lua) >= 4)
		{
			int index = lua_tointeger(lua, 1);
			glm::vec4 pos(0);
			pos.x = (float)lua_tonumber(lua, 2);
			pos.y = (float)lua_tonumber(lua, 3);
			pos.z = (float)lua_tonumber(lua, 4);
			g_gearEngine->updateLightPosition(index, pos);
		}

		return 0;
	}

	int LuaLight::updateColor(lua_State * lua)
	{
		//if (lua_gettop(lua) >= 5)
		//{
		//	lua_getfield(lua, 1, "__self");
		//	Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);
		//	
		//	float colorR = (float)lua_tonumber(lua, 2);
		//	float colorG = (float)lua_tonumber(lua, 3);
		//	float colorB = (float)lua_tonumber(lua, 4);
		//	
		//	light->color = glm::vec4(colorR, colorG, colorB, 0);
		//	
		//	g_gearEngine->queueUpdateDynamicLights(light);
		//}
		//else if (lua_gettop(lua) >= 4)
		//{
		//	lua_getfield(lua, 1, "__self");
		//	Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);
		//
		//	float colorR = (float)lua_tonumber(lua, 2);
		//	float colorG = (float)lua_tonumber(lua, 3);
		//	float colorB = (float)lua_tonumber(lua, 4);
		//
		//	light->color = glm::vec4(colorR, colorG, colorB, 0);
		//
		//	g_gearEngine->queueUpdateLights(light);
		//}

		if (lua_gettop(lua) >= 4)
		{
			int index = lua_tointeger(lua, 1);
			glm::vec4 col(0);
			col.x = (float)lua_tonumber(lua, 2);
			col.y = (float)lua_tonumber(lua, 3);
			col.z = (float)lua_tonumber(lua, 4);
			g_gearEngine->updateLightColor(index, col);
		}

		return 0;
	}

	int LuaLight::updateRadius(lua_State * lua)
	{
		//if (lua_gettop(lua) >= 3)
		//{
		//	lua_getfield(lua, 1, "__self");
		//	Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);
		//	
		//	float radius = (float)lua_tonumber(lua, 2);
		//	
		//	light->radius.r = radius;
		//	
		//	g_gearEngine->queueUpdateDynamicLights(light);
		//
		//}
		//else if (lua_gettop(lua) >= 2)
		//{
		//	lua_getfield(lua, 1, "__self");
		//	Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);
		//
		//	float radius = (float)lua_tonumber(lua, 2);
		//
		//	light->radius.r = radius;
		//
		//	g_gearEngine->queueUpdateLights(light);
		//}

		if (lua_gettop(lua) >= 2)
		{
			int index = lua_tointeger(lua, 1);
			float r = (float)lua_tonumber(lua, 2);
			g_gearEngine->updateLightRadius(index, r);
		}
		return 0;
	}

	int LuaLight::updateIntensity(lua_State * lua)
	{
		//if (lua_gettop(lua) >= 3)
		//{
		//	lua_getfield(lua, 1, "__self");
		//	Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);
		//	
		//	float intensity = (float)lua_tonumber(lua, 2);
		//	
		//	light->radius.g = intensity;
		//	g_gearEngine->queueUpdateDynamicLights(light);
		//
		//}
		//else if (lua_gettop(lua) >= 2)
		//{
		//	lua_getfield(lua, 1, "__self");
		//	Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);
		//
		//	float intensity = (float)lua_tonumber(lua, 2);
		//
		//	light->radius.g = intensity;
		//	g_gearEngine->queueUpdateLights(light);
		//}

		if (lua_gettop(lua) >= 2)
		{
			int index = lua_tointeger(lua, 1);
			float i = (float)lua_tonumber(lua, 2);
			g_gearEngine->updateLightIntensity(index, i);
		}

		return 0;
	}

	int LuaLight::removeLight(lua_State * lua)
	{
		//if (lua_gettop(lua) >= 2)
		//{
		//	lua_getfield(lua, 1, "__self");
		//	Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);
		//	
		//	g_gearEngine->queueRemoveDynamicLights(light);
		//}
		//else if (lua_gettop(lua) >= 1)
		//{
		//	lua_getfield(lua, 1, "__self");
		//	Lights::PointLight* light = (Lights::PointLight*)lua_touserdata(lua, -1);
		//
		//	g_gearEngine->queueRemoveLights(light);
		//}

		if (lua_gettop(lua) >= 1)
		{
			int index = lua_tointeger(lua, 1);

			if (lua_gettop(lua) >= 2)
				g_gearEngine->removeDynamicLight(index);
			else
				g_gearEngine->removeStaticLight(index);
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