#include "LuaUI.h"
using namespace Gear;

namespace LuaUI {
	static GearEngine* g_gearEngine = nullptr;

	void LuaUI::registerFunctions(lua_State * lua,
		Gear::GearEngine* gearEngine)
	{
		g_gearEngine = gearEngine;

		luaL_newmetatable(lua, "imageMeta");
		luaL_Reg imageRegs[] =
		{
			{ "drawImage", drawImage },
			{ "mousePick", mousePick },
			{ "load", loadScreenImage },
			{ "resize", resizeScreenImage },
			{ "repos", repositionScreenImage },
			{ "mousePick", mousePick },
			{ "__gc", unloadScreenImage },
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, imageRegs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");

		lua_newtable(lua);
		luaL_setmetatable(lua, "imageMeta");
		lua_setglobal(lua, "UI");
		lua_pop(lua, 1);
	}

	int LuaUI::drawImage(lua_State * lua)
	{

		int numArgs = lua_gettop(lua);
		if (numArgs >= 2)
		{
			lua_getfield(lua, 1, "__self");
			sScreenImage* image = (sScreenImage*)lua_touserdata(lua, -1);

			lua_getfield(lua, 2, "__self");
			TextureAsset* texture = (TextureAsset*)lua_touserdata(lua, -1);

			g_gearEngine->showImage(*image, texture);
		}
		return 0;
	}

	int LuaUI::mousePick(lua_State * lua)
	{
		if (lua_gettop(lua) >= 3)
		{
			lua_getfield(lua, 1, "__self");
			sScreenImage* image = (sScreenImage*)lua_touserdata(lua, -1);
			int posX = (int)lua_tonumber(lua, 2);
			int posY = (int)lua_tonumber(lua, 3);
			bool x = (image->mousePick((float)posX, (float)posY));
			lua_pushboolean(lua, x);
		}

		return 1;
	}

	int LuaUI::loadScreenImage(lua_State * lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 4)
		{
			int posX = (int)lua_tonumber(lua, 1);
			int posY = (int)lua_tonumber(lua, 2);
			int sizeX = (int)lua_tonumber(lua, 3);
			int sizeY = (int)lua_tonumber(lua, 4);

			sScreenImage* image = new sScreenImage(glm::vec2(posX, posY), (float)sizeX, (float)sizeY);
			if (image)
			{
				lua_newtable(lua);
				luaL_setmetatable(lua, "imageMeta");
				lua_pushlightuserdata(lua, image);
				lua_setfield(lua, -2, "__self");
				result = 1;
			}
		}

		return result;
	}

	int unloadScreenImage(lua_State * lua)
	{
		lua_getfield(lua, 1, "__self");
		sScreenImage* image = (sScreenImage*)lua_touserdata(lua, -1);
		delete image;
		return 0;
	}

	int resizeScreenImage(lua_State * lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 3)
		{
			lua_getfield(lua, 1, "__self");
			sScreenImage* image = (sScreenImage*)lua_touserdata(lua, -1);
			int sizeX = (int)lua_tonumber(lua, 2);
			int sizeY = (int)lua_tonumber(lua, 3);

			image->height = (float)sizeY;
			image->width = (float)sizeX;
		}
		return result;
	}

	int repositionScreenImage(lua_State * lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 3)
		{
			lua_getfield(lua, 1, "__self");
			sScreenImage* image = (sScreenImage*)lua_touserdata(lua, -1);
			int sizeX = (int)lua_tonumber(lua, 2);
			int sizeY = (int)lua_tonumber(lua, 3);

			image->pos = glm::vec2(sizeX, sizeY);
		}
		return result;
	}
}
