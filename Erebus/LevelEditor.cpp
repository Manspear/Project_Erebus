#include "LevelEditor.h"



LevelEditor::LevelEditor()
{
	this->running = true;
}


LevelEditor::~LevelEditor()
{
}

void LevelEditor::start() {


	Window window;
	Gear::GearEngine engine;

	Importer::Assets assets;
	Importer::FontAsset* font = assets.load<FontAsset>("Fonts/System");
	engine.setFont(font);
	int nrOfTransforms = 100;
	int boundTransforms = 0;
	Transform* transforms = new Transform[nrOfTransforms];
	TransformStruct* allTransforms = new TransformStruct[nrOfTransforms];
	for (int i = 0; i < nrOfTransforms; i++)
		transforms[i].setThePtr(&allTransforms[i]);
	Controls controls;
	engine.allocateWorlds(nrOfTransforms);

	Importer::ModelAsset* moleman = assets.load<ModelAsset>("Models/moleman5.model");
	//engine.queue.animationObject.setAsset(moleman);

	std::vector<ModelInstance> models;
	std::vector<AnimatedInstance> animatedModels;
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
	//luaBinds.load(&engine, &assets, &collisionHandler, &controls, transforms, &boundTransforms, &models, &animatedModels, &camera);
	bool playerAlive = true;

	//Importer::TextureAsset* moleratTexture = assets.load<Importer::TextureAsset>("Textures/molerat_texturemap2.png");
	//Importer::TextureAsset* moleratTexture2 = assets.load<Importer::TextureAsset>("Textures/red.png");
	//for (size_t i = 0; i < models.size(); i++)
	//{
	//	models.at(i).texAsset = moleratTexture;
	//}
	//models.at(1).texAsset = moleratTexture2;


	std::string out = "FPS: -1";
	double updateRate = 4.0;

	while (running && window.isWindowOpen())
	{


		deltaTime = counter.getDeltaTime();
		inputs.update();
		controls.update(&inputs);
		luaBinds.update(&controls, deltaTime);
		//float angle = asinf(dir.y);
		//camera.follow(controls.getControl()->getPos(), dir, abs(inputs.getScroll())+5.f, -angle);

		engine.queueDynamicModels(&models);
		engine.queueAnimModels(&animatedModels);

		//Collisions
		collisionHandler.checkCollisions();
		//collisionHandler.drawHitboxes();
		//collisionHandler.printCollisions();

		frameCounter++;
		frameTime += deltaTime;

		if (frameTime > 1 / updateRate)
		{
			int fps = double(frameCounter) / frameTime;
			out = "FPS: " + std::to_string(fps);
			frameCounter = 0;
			frameTime -= 1 / updateRate;
		}


		engine.print(out, 0.f, 720.f);

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

		window.update();
	}

	luaBinds.unload();
	delete[] allTransforms;
	delete[] transforms;
	glfwTerminate();
}