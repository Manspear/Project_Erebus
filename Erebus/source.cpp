#include <iostream>
#include "Gear.h"

int main()
{
	Gear::GearEngine *engine = new Gear::GearEngine();

	while (engine->isRunning()) {
		engine->draw();
	}

	delete engine;
	//system("pause");
	return 0;
}