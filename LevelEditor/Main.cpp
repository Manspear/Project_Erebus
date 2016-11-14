#include<AntTweakBar.h>


#include"MenuTest.h"
#include "Gear.h"
#include "BaseIncludes.h"

int main()
{

	Gear::GearEngine *engine = new Gear::GearEngine();

	TwInit(TW_OPENGL_CORE, NULL);

	MenuTest menuTest;

	TwWindowSize(500, 320);
	
	while (engine->isRunning())
	{
		
		engine->draw();
		TwDraw();
		engine->updateWindow();
		
	}

	return 0;
}
