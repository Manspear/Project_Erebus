#include <iostream>
#include "Gear.h"
#include "Importer.h"

int main()
{
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	Gear::GearEngine *engine = new Gear::GearEngine();
	Importer::ModelImporter* importer = new Importer::ModelImporter();
	importer->load( "Models/newmolebat.mole" );

	// TEMPORARY: För att kunna rita ut modellen
	engine->vbo = importer->getVertexBuffer( 0 );
	engine->size = importer->getBufferSize( 0 );

	glEnable( GL_DEPTH_TEST );

	while (engine->isRunning()) {
		engine->draw();
	}

	delete importer;
	delete engine;
	//system("pause");
	return 0;
}