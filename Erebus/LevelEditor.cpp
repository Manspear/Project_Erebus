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
	engine.setFont(font);
	Importer::ModelAsset* moleman = assets.load<ModelAsset>("Models/testGuy.model");

	CollisionHandler collisionHandler;
	collisionHandler.setTransforms(transforms);

	glEnable(GL_DEPTH_TEST);
	
	GLFWwindow* w = window.getGlfwWindow();
	this->inputs = new Inputs(w);
	this->camera = new Camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, inputs);
	//window.changeCursorStatus(false);

	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = false;
	window.changeCursorStatus(lockMouse);

	engine.addDebugger(Debugger::getInstance());

	//Model stuff START
	for (int i = 0; i < nrOfTransforms; i++)
		transforms[i].setThePtr(&allTransforms[i]);
	boundTransforms = 0;

	engine.allocateWorlds(nrOfTransforms);

	engine.bindTransforms(&allTransforms, &boundTransforms);

	//Loading a model!
	ModelAsset* testModel = assets.load<ModelAsset>("Models/Robot.model");
	int result = engine.generateWorldMatrix();

	int index = -1;
	for (int i = 0; i<models.size(); i++)
		if (models.at(i).asset == testModel)
			index = i;
	if (index ==-1)
	{
		ModelInstance instance;
		instance.asset = testModel;
		//TEMP TODO: move to importer
		//instance.asset-> = Material(&assets, "Materials/MaterialTextures/molerat_texturemap2.png", "Materials/MaterialTextures/molerat_normalmap.png");

		index = models.size();
		models.push_back(instance);

	}
	models.at(index).worldIndices.push_back(boundTransforms);

	boundTransforms++;

	testModel = assets.load<ModelAsset>("Models/Robot.model");
	result = engine.generateWorldMatrix();

	index = -1;
	for (int i = 0; i<models.size(); i++)
		if (models.at(i).asset == testModel)
			index = i;
	if (index == -1)
	{
		ModelInstance instance;
		instance.asset = testModel;
		//TEMP TODO: move to importer
		//instance.material = Material(&assets, "Materials/MaterialTextures/molerat_texturemap2.png", "Materials/MaterialTextures/molerat_normalmap.png");

		index = models.size();
		models.push_back(instance);

	}
	models.at(index).worldIndices.push_back(boundTransforms);
	transforms[boundTransforms].setPos(glm::vec3(5, 0, 5));

	boundTransforms++;
	//End load model

	ps.push_back(new Gear::ParticleSystem(100, 10, 10, 1, 100));
	//lua_pushinteger(lua, g_particles->size());
	//g_particles->push_back(new Gear::ParticleSystem(lua_tointeger(lua, 1), lua_tonumber(lua, 2), lua_tonumber(lua, 3), lua_tonumber(lua, 4), lua_tointeger(lua, 5)));

	//LuaBinds luaBinds;
	//luaBinds.load(&engine, &assets, &collisionHandler, &controls, transforms, &boundTransforms, &models, &animatedModels, &camera, &ps);
	//Model stuff END
	
	while (running && window.isWindowOpen())
	{
		deltaTime = counter.getDeltaTime();
		inputs->update();

		camera->updateLevelEditorCamera(deltaTime);

		for (int i = 0; i < ps.size(); i++)
			ps.at(i)->update(deltaTime);

		engine.queueDynamicModels(&models);
		engine.queueAnimModels(&animatedModels);
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

	//luaBinds.unload();
	delete[] allTransforms;
	delete[] transforms;
	for (int i = 0; i < ps.size(); i++)
		delete ps.at(i);

	glfwTerminate();

}