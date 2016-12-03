#include "LuaBinds.h"
using namespace Importer;
using namespace Gear;

namespace LuaBinds
{
	void registerFunctions( lua_State* lua,
							GearEngine* gearEngine,
							Assets* assets,
							CollisionHandler* collisionHandler,
							Transform* transforms,
							std::vector<ModelInstance>* models )
	{
		LuaAssets::registerFunctions( lua, assets );
		LuaCollision::registerFunctions( lua, collisionHandler );
		LuaControls::registerFunctions( lua );
		LuaGear::registerFunctions( lua, gearEngine, models );
		LuaParticles::registerFunctions( lua );
		LuaTransform::registerFunctions( lua, transforms );
	}
}