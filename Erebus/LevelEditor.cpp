#include "LevelEditor.h"



LevelEditor::LevelEditor()
{
	this->running = true;
}


LevelEditor::~LevelEditor()
{
}

void LevelEditor::start() {

	Importer::Assets assets;
	int nrOfTransforms = 100;
	int boundTransforms = 0;
	Transform* transforms = new Transform[nrOfTransforms];
	TransformStruct* allTransforms = new TransformStruct[nrOfTransforms];
	for (int i = 0; i < nrOfTransforms; i++)
		transforms[i].setThePtr(&allTransforms[i]);
	Controls controls;
	Window window;
	Gear::GearEngine engine;
	engine.allocateWorlds(nrOfTransforms);



	std::vector<ModelInstance> models;
	engine.addDebugger(Debugger::getInstance());
	Debug* tempDebug = Debugger::getInstance();

	double deltaTime = 0.0;


	CollisionHandler collisionHandler;
	collisionHandler.setTransforms(transforms);

	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	Inputs inputs(w);

	window.changeCursorStatus(false);

	PerformanceCounter counter;
	counter.startCounter();
	double frameTime = 0.0;
	int frameCounter = 0;
	Camera camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, &inputs);

	engine.bindTransforms(&allTransforms, &boundTransforms);

	LuaBinds luaBinds;
	luaBinds.load(&engine, &assets, &collisionHandler, &controls, transforms, &boundTransforms, &models, &camera);
	bool playerAlive = true;

	Importer::TextureAsset* moleratTexture = assets.load<Importer::TextureAsset>("Textures/molerat_texturemap2.png");
	Importer::TextureAsset* moleratTexture2 = assets.load<Importer::TextureAsset>("Textures/red.png");
	for (size_t i = 0; i < models.size(); i++)
	{
		models.at(i).texAsset = moleratTexture;
	}
	//models.at(0).texAsset = moleratTexture2;

	while (running && window.isWindowOpen())
	{


		deltaTime = counter.getDeltaTime();
		inputs.update();
		//controls.update(&inputs);
		//luaBinds.update( &controls, deltaTime );
		//float angle = asinf(dir.y);
		//camera.follow(controls.getControl()->getPos(), dir, abs(inputs.getScroll())+5.f, -angle);
		camera.updateLevelEditorCamera(deltaTime);
		engine.draw(&camera, &models);
		window.update();
		engine.queueDynamicModels(&models);
		engine.draw(&camera);
		lua_State* lua;
		if (inputs.keyPressed(GLFW_KEY_ESCAPE))
			running = false;

		//Display FPS:
		frameCounter++;
		frameTime += deltaTime;
		if (frameTime >= 1.0)
		{
			double fps = double(frameCounter) / frameTime;
			std::cout << "FPS: " << fps << std::endl;
			frameTime -= 1.0;
			frameCounter = 0;
		}


		//Collisions
		collisionHandler.checkCollisions();
		//luaBinds.printLuaTop();
	}

	luaBinds.unload();
	delete[] allTransforms;
	delete[] transforms;

	glfwTerminate();
}