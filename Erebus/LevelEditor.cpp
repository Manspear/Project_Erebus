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

	engine.addDebugger(Debugger::getInstance());

	Importer::ModelAsset* moleman = assets.load<ModelAsset>("Models/Robot.model");

	std::vector<ModelInstance> models;
	std::vector<AnimatedInstance> animatedModels;

	CollisionHandler collisionHandler;
	collisionHandler.setTransforms(transforms);

	std::vector<Gear::ParticleSystem*> ps;
	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	Inputs inputs(w);

	//window.changeCursorStatus(false);

	Camera camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, &inputs);

	engine.bindTransforms(&allTransforms, &boundTransforms);


	LuaBinds luaBinds;
	luaBinds.load(&engine, &assets, &collisionHandler, &controls, transforms, &boundTransforms, &models, &animatedModels, &camera, &ps);

	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = true;
	while (running && window.isWindowOpen())
	{
		deltaTime = counter.getDeltaTime();
		inputs.update();

		camera.updateLevelEditorCamera(deltaTime);

		for (int i = 0; i < ps.size(); i++)
			ps.at(i)->update(deltaTime);

		engine.queueDynamicModels(&models);
		engine.queueAnimModels(&animatedModels);
		engine.queueParticles(&ps);

		collisionHandler.checkCollisions();

		engine.draw(&camera);

		if (inputs.keyPressed(GLFW_KEY_ESCAPE))
			running = false;

		if (inputs.keyPressedThisFrame(GLFW_KEY_J))
			engine.setDrawMode(1);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_K))
			engine.setDrawMode(2);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_L))
			engine.setDrawMode(3);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_P))
			engine.setDrawMode(4);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_N))
			engine.setDrawMode(5);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_O))
			engine.setDrawMode(6);
		else if (inputs.keyPressedThisFrame(GLFW_KEY_R))
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

	luaBinds.unload();
	delete[] allTransforms;
	delete[] transforms;
	for (int i = 0; i < ps.size(); i++)
		delete ps.at(i);

	glfwTerminate();

}