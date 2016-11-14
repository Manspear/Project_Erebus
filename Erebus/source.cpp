#include <iostream>
#include "Gear.h"

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Gear::GearEngine *engine = new Gear::GearEngine();

	while (engine->isRunning()) {
		engine->draw();
	}

	delete engine;
	
	return 0;
}