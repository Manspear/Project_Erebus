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
			{ "drawWorldImage", drawWorldImage },
			{ "mousePick", mousePick },
			{ "load", loadScreenImage },
			{ "resize", resizeScreenImage },
			{ "repos", repositionScreenImage },
			{ "resizeWorld", resizeWorldImage },
			{ "reposWorld", repositionWorldImage },
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
	void printStack(lua_State* lua) {
		int i;
		int top = lua_gettop(lua);

		printf("total in stack %d\n", top);

		for (i = 1; i <= top; i++)
		{  /* repeat for each level */
			int t = lua_type(lua, i);
			switch (t) {
			case LUA_TSTRING:  /* strings */
				printf("%d. string: '%s'\n", i, lua_tostring(lua, i));
				break;
			case LUA_TBOOLEAN:  /* booleans */
				printf("%d. boolean %s\n", i, lua_toboolean(lua, i) ? "true" : "false");
				break;
			case LUA_TNUMBER:  /* numbers */
				printf("%d. number: %g\n", i, lua_tonumber(lua, i));
				break;
			default:  /* other values */
				printf("%d. %s\n", i, lua_typename(lua, t));
				break;
			}
			printf("  ");  /* put a separator */
		}
		printf("\n");  /* end the listing */
	}

	int LuaUI::drawImage(lua_State * lua)
	{
		int numArgs = lua_gettop(lua);
		if (numArgs >= 2)
		{
			lua_getfield(lua, 2, "__self");
			TextureAsset* texture = (TextureAsset*)lua_touserdata(lua, -1);

			
			lua_getfield(lua, 1, "__self");
			sScreenImage* image = (sScreenImage*)lua_touserdata(lua, -1);
			if (image != NULL)
			{
				g_gearEngine->showImage(*image, texture);
			}
		}



		return 0;
	}

	int drawWorldImage(lua_State * lua)
	{
		int numArgs = lua_gettop(lua);
		if (numArgs >= 2)
		{
			lua_getfield(lua, 2, "__self");
			TextureAsset* texture = (TextureAsset*)lua_touserdata(lua, -1);

			lua_getfield(lua, 1, "__self");
			sWorldImage* worldImage = (sWorldImage*)lua_touserdata(lua, -1);

			if (worldImage != NULL)
			{
				g_gearEngine->showWorldImage(*worldImage, texture);
			}
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
		if (lua_gettop(lua) >= 5)
		{
			int posX = (int)lua_tonumber(lua, 1);
			int posY = (int)lua_tonumber(lua, 2);
			int posZ = (int)lua_tonumber(lua, 3);
			int sizeX = (int)lua_tonumber(lua, 4);
			int sizeY = (int)lua_tonumber(lua, 5);

			sWorldImage* image = new sWorldImage(glm::vec3(posX, posY, posZ), (float)sizeX, (float)sizeY);
			if (image)
			{
				lua_newtable(lua);
				luaL_setmetatable(lua, "imageMeta");
				lua_pushlightuserdata(lua, image);
				lua_setfield(lua, -2, "__self");
				result = 1;
			}
		}else if (lua_gettop(lua) >= 4)
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

		if (image != NULL)
		{
			delete image;
		}
		else {
			lua_getfield(lua, 1, "__self");
			sWorldImage* worldImage = (sWorldImage*)lua_touserdata(lua, -1);

			if (worldImage != NULL)
			{
				delete worldImage;
			}
		}
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

		
		if (lua_gettop(lua) >= 3) {
			lua_getfield(lua, 1, "__self");
			sScreenImage* image = (sScreenImage*)lua_touserdata(lua, -1);


			int posX = (int)lua_tonumber(lua, 2);
			int posY = (int)lua_tonumber(lua, 3);

			image->pos = glm::vec2(posX, posY);
		}
		return result;
	}
	int resizeWorldImage(lua_State * lua)
	{
		if (lua_gettop(lua) >= 3)
		{
			lua_getfield(lua, 1, "__self");
			sWorldImage* worldImage = (sWorldImage*)lua_touserdata(lua, -1);

			if (worldImage != NULL)
			{
				int sizeX = (int)lua_tonumber(lua, 2);
				int sizeY = (int)lua_tonumber(lua, 3);

				worldImage->height = (float)sizeY;
				worldImage->width = (float)sizeX;
			}
		}
		return 0;
	}
	int repositionWorldImage(lua_State * lua)
	{
		if (lua_gettop(lua) >= 4)
		{
			lua_getfield(lua, 1, "__self");
			sWorldImage* image = (sWorldImage*)lua_touserdata(lua, -1);


			float posX = (float)lua_tonumber(lua, 2);
			float posY = (float)lua_tonumber(lua, 3);
			float posZ = (float)lua_tonumber(lua, 4);

			image->pos = glm::vec3(posX, posY, posZ);
		}
		return 0;
	}
}
