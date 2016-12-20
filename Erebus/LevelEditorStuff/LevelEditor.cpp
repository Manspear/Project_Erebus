#include "LevelEditor.h"



LevelEditor::LevelEditor()
{
	this->running = true;
}


LevelEditor::~LevelEditor()
{
	delete this->inputs;
	delete this->camera;
}

void LevelEditor::start() {

	Gear::GearEngine engine;
	Importer::Assets assets;
	Importer::FontAsset* font = assets.load<FontAsset>("Fonts/System");

	LevelTransformHandler::createInstance(&engine);
	LevelModelHandler::createInstance(LevelTransformHandler::getInstance(), &engine, &assets);


	this->transformHandler = LevelTransformHandler::getInstance();
	modelHandler = LevelModelHandler::getInstance();

	factory = LevelActorFactory::getInstance();
	std::vector<LevelActor*> actors;

	for (size_t i = 0; i < 100; i++)
	{
		actors.push_back(factory->createActor("TestCharacter"));
	}
	
	actors.push_back(factory->createActor("TestTerrain"));
	//LevelActor* tempActor = factory->createActor("test");
	actors[0]->printAllComponents();
	//std::cout <<  << std::endl;
	
	
	engine.setFont(font);

	CollisionHandler collisionHandler;
	collisionHandler.setTransforms(this->transformHandler->getAllTransforms());

	glEnable(GL_DEPTH_TEST);
	
	GLFWwindow* w = window.getGlfwWindow();
	this->inputs = new Inputs(w);
	this->camera = new Camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, inputs);

	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = false;
	window.changeCursorStatus(lockMouse);

	engine.addDebugger(Debugger::getInstance());

	//for (size_t i = 0; i < 10; i++)
	//{
	//	if(i%2)
	//		modelHandler->loadModel("Robot");
	//	else
	//		modelHandler->loadModel("testGuy");
	//
	//
	//}


	ps.push_back(new Gear::ParticleSystem(100, 10, 10, 1, 100));
	while (running && window.isWindowOpen())
	{
		deltaTime = counter.getDeltaTime();
		inputs->update();
		camera->updateLevelEditorCamera(deltaTime);

		for (size_t i = 0; i < 100; i++)
		{
			Transform* derp = actors[i]->getComponent<LevelTransform>()->getTransformRef();
			derp->setPos(derp->getPos() + (glm::vec3(i/3.f)* deltaTime));
		}

		for (int i = 0; i < ps.size(); i++)
			ps.at(i)->update(deltaTime);

		engine.queueDynamicModels(modelHandler->getModels());
		engine.queueAnimModels(modelHandler->getAnimatedModels());
		engine.queueParticles(&ps);

		collisionHandler.checkCollisions();

		std::string fps = "FPS: " + std::to_string(counter.getFPS());
		engine.print(fps, 0.0f, 0.0f);


		engine.draw(camera);

		if (inputs->keyPressed(GLFW_KEY_ESCAPE))
			running = false;

		if (inputs->keyPressedThisFrame(GLFW_KEY_J))
			engine.setDrawMode(1);
		else if (inputs->keyPressedThisFrame(GLFW_KEY_K))
			engine.setDrawMode(2);
		else if (inputs->keyPressedThisFrame(GLFW_KEY_L))
			engine.setDrawMode(3);
		else if (inputs->keyPressedThisFrame(GLFW_KEY_P))
			engine.setDrawMode(4);
		else if (inputs->keyPressedThisFrame(GLFW_KEY_N))
			engine.setDrawMode(5);
		else if (inputs->keyPressedThisFrame(GLFW_KEY_O))
			engine.setDrawMode(6);
		else if (inputs->keyPressedThisFrame(GLFW_KEY_R))
		{
			if (lockMouse)
			{
				window.changeCursorStatus(false);
				lockMouse = false;
			}
			else
			{
				window.changeCursorStatus(true);
				lockMouse = true;
			}
		}

		window.update();
	}
	
	for (int i = 0; i < ps.size(); i++)
		delete ps.at(i);
	delete this->transformHandler;
	delete this->modelHandler;
	LevelActorFactory::deleteInstance();
	for (size_t i = 0; i < actors.size(); i++)
	{
		delete actors[i];
	}
	glfwTerminate();
	
}