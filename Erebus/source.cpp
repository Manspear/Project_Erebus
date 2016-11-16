#include <iostream>
#include "Gear.h"
#include "Importer.h"
#include "Model.h"
#include <ctime>

void calculateDt(float& dt, const clock_t& start, const clock_t& end, const int& ticks);

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Gear::GearEngine *engine = new Gear::GearEngine();

	Importer::ModelAsset molebat;
	molebat.load( "Models/newmolebat.mole" );

	Gear::Model model;
	model.setModelAsset( &molebat );

	// TEMP: Ritar ut modellen från Gear.
	engine->model = &model;

	glEnable( GL_DEPTH_TEST );
	
	clock_t c_start, c_end;
	float dt = 0, totalTicks = 0;
	float totalTime = 0;
	while (engine->isRunning()) {
		totalTicks++;
		c_start = clock();
		engine->draw();
		c_end = clock();
		calculateDt(dt, c_start, c_end, totalTicks);

	}

	delete engine;
	//system("pause");
	return 0;
}

void calculateDt(float& dt, const clock_t& start, const clock_t& end, const int& ticks) {
	
	dt = ((float)end - (float)start) / CLOCKS_PER_SEC;
	//std::cout << dt << std::endl;
}