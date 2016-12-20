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
	this->transformHandler = new LevelTransformHandler(&engine);
	modelHandler = new LevelModelHandler(transformHandler, &engine, &assets);

	factory = LevelActorFactory::getInstance(this->transformHandler, this->modelHandler);

	LevelActor* tempActor = factory->createActor("test");

	std::cout << tempActor->toXml() << std::endl;

	std::cout << factory->getPath(tempActor->id) << std::endl;
	
	Importer::FontAsset* font = assets.load<FontAsset>("Fonts/System");
	engine.setFont(font);
	Importer::ModelAsset* moleman = assets.load<ModelAsset>("Models/testGuy.model");

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

	for (size_t i = 0; i < 10; i++)
	{
		if(i%2)
			modelHandler->loadModel("Robot");
		else
			modelHandler->loadModel("testGuy");
	
	
	}


	modelHandler->loadModel("niclasland_sclae2");

	ps.push_back(new Gear::ParticleSystem(100, 10, 10, 1, 100));
	
	while (running && window.isWindowOpen())
	{
		deltaTime = counter.getDeltaTime();
		inputs->update();

		camera->updateLevelEditorCamera(deltaTime);

		for (int i = 0; i < ps.size(); i++)
			ps.at(i)->update(deltaTime);

		engine.queueDynamicModels(modelHandler->getModels());
		engine.queueAnimModels(modelHandler->getAnimatedModels());
		engine.queueParticles(&ps);

		collisionHandler.checkCollisions();

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


		std::string fps = "FPS: " + std::to_string(counter.getFPS());
		engine.print(fps, 0.f, 720.f);

		window.update();
	}
	
	for (int i = 0; i < ps.size(); i++)
		delete ps.at(i);
	delete this->transformHandler;
	delete this->modelHandler;
	LevelActorFactory::deleteInstance();
	delete tempActor;
	glfwTerminate();
	
}