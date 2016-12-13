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

	//Collision handler
	CollisionHandler collisionHandler;
	collisionHandler.setTransforms(transforms);
	collisionHandler.setDebugger(Debugger::getInstance());

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

	//Importer::TextureAsset* moleratTexture = assets.load<Importer::TextureAsset>("Textures/molerat_texturemap2.png");
	//Importer::TextureAsset* moleratTexture2 = assets.load<Importer::TextureAsset>("Textures/red.png");
	//for (size_t i = 0; i < models.size(); i++)
	//{
	//	models.at(i).texAsset = moleratTexture;
	//}
	//models.at(1).texAsset = moleratTexture2;

	while (running && window.isWindowOpen())
	{


		deltaTime = counter.getDeltaTime();
		inputs.update();

		camera.updateLevelEditorCamera(deltaTime);
		window.update();
		engine.queueDynamicModels(&models);
		tempDebug->drawLine({ 0,10,0 }, { 256,10,256 });
		//Collisions
		collisionHandler.checkCollisions();
		//collisionHandler.drawHitboxes();

		engine.draw(&camera);
		lua_State* lua;
		if (inputs.keyPressed(GLFW_KEY_ESCAPE))
			running = false;
		if (inputs.keyPressedThisFrame(GLFW_KEY_1))
			engine.setDrawMode(1);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_2))
			engine.setDrawMode(2);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_3))
			engine.setDrawMode(3);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_4))
			engine.setDrawMode(4);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_5))
			engine.setDrawMode(5);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_6))
			engine.setDrawMode(6);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_7))
			engine.setDrawMode(7);
		frameCounter++;
		frameTime += deltaTime;
		if (frameTime >= 1.0)
		{
			double fps = double(frameCounter) / frameTime;
			std::cout << "FPS: " << fps << std::endl;
			frameTime -= 1.0;
			frameCounter = 0;
		}


	}

	luaBinds.unload();
	delete[] allTransforms;
	delete[] transforms;
	glfwTerminate();
}