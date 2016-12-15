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
	luaBinds.load(&engine, &assets, &collisionHandler, &controls, transforms, &boundTransforms, &models, &animatedModels, &camera);
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

	float currentAnimation = 0;
	float addSyntax = 1;
	float minMax = 1;


	//		Debugger::getInstance()->drawLine({ i, l, 0 }, { i, l, 255 });
	while (running && window.isWindowOpen())
	{
		
		deltaTime = counter.getDeltaTime();
		currentAnimation += addSyntax * deltaTime;
		if (currentAnimation > minMax)
			addSyntax = -1;
		if (currentAnimation < .2f)
			addSyntax = 1;

		//for (size_t l = 0; l < 255; l++)
		//{
		//	for (size_t i = 0; i < 255; i++)
		//	{
		//		//down
		//		tempDebug->drawLine({ 0, l, i }, { 255, l, i }, { i / 255.f, l / 255.f, (l+i) / 510.f });
		//		Debugger::getInstance()->drawLine({ i, l, 0 }, { i, l, 255 });
		//	}
		//}
		const float cubeLoop = 36;
		for (int y = 0; y < cubeLoop; y++)
		{
			for (int x = 0; x < cubeLoop; x++)
			{
				for (int i = 0; i < cubeLoop; i++)
				{

					//Debugger::getInstance()->drawLines({ i*.005f,10,0 }, { i*.005f,10 + currentAnimation*3,10 },
					//{ (float)i / 10000, (float)i / 10000, (float)i});
					//Debugger::getInstance()->drawLine({ i * 10,y * 10,x * 10 }, { i * 11,y * 11,x * 11 }, { i / 36.f, y / 36.f, x / 36.f });
					tempDebug->drawAABB({ x * 5,y*5,i * 5 }, { (x + 1) * 5,(y+1)*5,(i + 1) * 5 },
					{ i / cubeLoop , y / cubeLoop , x / cubeLoop   });

					//tempDebug->drawSphere({ x * 5+2,y * 5+2,i * 5+2 }
					//, 1.2f,
					//{i/ cubeLoop , y / cubeLoop , x / cubeLoop   });
					//tempDebug->drawSphere({i * 10, y * 10, x * 10
					//}, 1.2f,
					//{i/ cubeLoop * currentAnimation, y / cubeLoop * currentAnimation, x / cubeLoop  * currentAnimation });

				}
			}
		}
		//Debugger::getInstance()->drawLine({ 0, 10, 0 }, { 255, 10, 255 });
		
		
		

		inputs.update();
		//controls.update(&inputs);
		//luaBinds.update(&controls, deltaTime);
		camera.updateLevelEditorCamera(deltaTime);
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