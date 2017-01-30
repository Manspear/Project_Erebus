#include "LevelEditor.h"

LevelEditor::LevelEditor()
{
	this->running = true;
}


LevelEditor::~LevelEditor()
{
	delete this->inputs;
	delete this->camera;

	for (int i = 0; i < ps.size(); i++)
		delete ps.at(i);
	//delete this->transformHandler;
	//delete this->modelHandler;
	//delete this->levelGizmo;
	
	LevelActorFactory::deleteInstance();
	LevelActorHandler::deleteInstance();
	LevelAssetHandler::deleteInstance();
	LevelActionHandler::deleteInstance();
	LevelLightHandler::deleteInstance();
	LevelTransformHandler::deleteInstance();
	LevelModelHandler::deleteInstance();
	LevelWorldHandler::deleteInstance();
	
	delete this->assets;
	delete this->engine;
	delete this->ui;
}



void LevelEditor::start() {
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
	this->engine = new Gear::GearEngine();
	assets = new Importer::Assets();
	Importer::FontAsset* font = assets->load<FontAsset>("Fonts/System");
	LevelTransformHandler::createInstance(engine);
	LevelModelHandler::createInstance(LevelTransformHandler::getInstance(), engine, assets);

	
	//std::vector<Lights::PointLight*> lights;// = new std::vector<Lights::PointLight>();


	//std::vector<LevelActor*>* actors = new std::vector<LevelActor*>[actorTypes::NR_ACTOR_TYPES];

	//for (size_t i = 0; i < 100; i++)
	//{
	//	actors.push_back(factory->createActor("TestCharacter"));
	//	float x = rand() % 256;
	//	float y = rand() % 100;
	//	float z = rand() % 256;
	//	Transform* derp = actors[i]->getComponent<LevelTransform>()->getTransformRef();
	//	derp->setPos(derp->getPos() + (glm::vec3(x, y, z)));
	//	
	//	//actors[i]->printAllComponents();
	//}
	//actors.push_back(factory->createActor("TestTerrain"));
	//actors.push_back(factory->createActor("TestTerrain"));
	//LevelActor* tempActor = factory->createActor("test");
	//actors[0]->printAllComponents();
	//std::cout <<  << std::endl;
	
	//factory->saveWorld("Level2", &actors);

	//factory->loadWorld("Level2", &actors);
	LevelActorFactory::getInstance()->loadWorld("Level2");

	engine->setFont(font);

	glEnable(GL_DEPTH_TEST);
	
	GLFWwindow* w = window.getGlfwWindow();
	this->inputs = new Inputs(w);
	this->camera = new Camera(45.f, WINDOW_WIDTH / WINDOW_HEIGHT, 0.1f, 2000.0f, inputs);

	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = false;
	window.changeCursorStatus(lockMouse);

	this->ui = new LevelUI(w);
	engine->addDebugger(Debugger::getInstance());

	//for (size_t i = 0; i < 10; i++)
	//{
	//	if(i%2)
	//		modelHandler->loadModel("Robot");
	//	else
	//		modelHandler->loadModel("testGuy");
	//
	//
	//}

	HeightMap* hm = assets->load<HeightMap>( "Textures/mikael_stor2_heights_128a.png" );
	//glm::vec3 hitPoint;
	bool hasHit = false;
	
	//LevelAssetHandler assetHandler( &assets );
	//assetHandler.load( "Models" );

	//ps.push_back(new Gear::ParticleSystem(100, 10, 10, 1, 100));

	LevelAssetHandler::getInstance()->setAssets( assets );
	LevelAssetHandler::getInstance()->setInputs( inputs );
	LevelAssetHandler::getInstance()->load();

	LevelActionHandler::getInstance()->setupGizmo( Debugger::getInstance(), camera, inputs );
	LevelHeightmap::setDebugger( Debugger::getInstance() );
	LevelCollider::setDebugger( Debugger::getInstance() );
	LevelSound::setDebugger( Debugger::getInstance() );

	//levelGizmo = new LevelGizmo();
	//levelGizmo->addVariables(Debugger::getInstance(), this->camera, this->inputs);
	LevelLightHandler::getInstance()->addDebugger(Debugger::getInstance());

	
	//resetWorld();
	//resetWorld();
	//resetWorld();
	LevelWorldHandler::getInstance()->addStuff(engine, assets, ui, &window, inputs, camera, Debugger::getInstance());

	int boundAnimations = 0;
	Animation* animations = nullptr;
	engine->bindAnimations( &animations, &boundAnimations );

	int actorID = 0;
	glm::vec3 hitPoint;
	glm::vec3 hitNormal;



	float elapsedTime = 0.0f;
	engine->pickActorFromWorld(LevelModelHandler::getInstance()->getModels(), LevelModelHandler::getInstance()->getModelInstanceAgentIDs(), camera, inputs->getMousePos(), actorID, hitPoint);


	engine->queueParticles(ps);
	engine->queueDynamicModels(LevelModelHandler::getInstance()->getModels());
	engine->queueAnimModels(LevelModelHandler::getInstance()->getAnimatedModels());
	while (running && window.isWindowOpen())
	{
		deltaTime = counter.getDeltaTime();
		inputs->update();


		
		camera->updateLevelEditorCamera(deltaTime);
		//if (inputs->buttonPressedThisFrame(GLFW_MOUSE_BUTTON_1))
		
		//for (size_t i = 0; i < 100; i++)
		//{
		//	//Transform* derp = actors[i]->getComponent<LevelTransform>()->getTransformRef();
		//	//derp->setPos(derp->getPos() + (glm::vec3(i/100.f)* deltaTime));
		//}

		//for (int i = 0; i < ps.size(); i++)
		//	ps.at(i)->update(deltaTime);

		//for (size_t i = 0; i < actors.size(); i++)
		//{
		//	std::cout << actors.at(i)->id << std::endl;
		//	//std::cout<<actors.at(i)->getComponent<LevelModel>()->
		//}


		


		if(LevelActorHandler::getInstance()->getSelected() != nullptr)
			LevelActorHandler::getInstance()->getSelected()->update();

		LevelWorldHandler::getInstance()->updateAutosave( deltaTime );

		//for (int n = 0; n < actors.size(); n++)
		//{
		//	actors[n]->update();
		//}
		//LevelActorHandler::getInstance()->updateActors();
		std::string fps = "FPS: " + std::to_string(counter.getFPS())
			+ "\nVRAM: " + std::to_string(counter.getVramUsage()) + " MB"
			+ "\nRAM: " + std::to_string(counter.getRamUsage()) + " MB";
		engine->print(fps, 0.0f, 0.0f);
		engine->update();
		camera->updateBuffer();
		engine->draw(camera);
		
		this->ui->Draw();

		if (inputs->keyPressed(GLFW_KEY_ESCAPE))
			running = false;

		if (inputs->keyPressed(GLFW_KEY_LEFT_CONTROL)) {
			if (inputs->keyPressedThisFrame(GLFW_KEY_D)) {
				if (LevelActorHandler::getInstance()->getSelected() != nullptr) {
					LevelActorFactory::getInstance()->saveActor(LevelActorHandler::getInstance()->getSelected(), "Temporary");
					LevelActor* temp = LevelActorFactory::getInstance()->loadActor("Temporary");
					LevelActorHandler::getInstance()->setSelected(temp);
					}
				
			}
		}

		LevelActionHandler::getInstance()->update( inputs, engine, camera,Debugger::getInstance());
		engine->queueLights(LevelLightHandler::getInstance()->getPointLights());
		


		window.update();
	}
	
	
	
	/*for (size_t i = 0; i < actors.size(); i++)
	{
		delete actors[i];
	}*/
	glfwTerminate();
	
}

void LevelEditor::pick() {
	////////////int actorID = 0;
	////////////glm::vec3 hitPoint = { 0,0,0 };
	//////////////if (LevelModelHandler::getInstance()->getModels()->size() > 0) {
	//////////////	engine->pickActorFromWorld(modelHandler->getModels(), this->modelHandler->getModelInstanceAgentIDs(), this->camera,
	//////////////		this->inputs->getMousePos(), tempSelectedActorID, tempSelectedHitPoint);
	//////////////}
	//////////////else {

	//////////////}

}