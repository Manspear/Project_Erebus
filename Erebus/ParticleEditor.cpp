#include "ParticleEditor.h"

ParticleEditor::ParticleEditor()
{
	this->running = true;
}

ParticleEditor::~ParticleEditor()
{
	delete this->inputs;
	delete this->camera;
	delete ps.at(0);
}

void ParticleEditor::start()
{
	Gear::GearEngine engine;
	Importer::Assets assets;

	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	this->inputs = new Inputs(w);
	this->camera = new Camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, inputs);

	
	Importer::TextureAsset* particlesTexture = assets.load<TextureAsset>("Textures/fireball.png");

	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = false;
	window.changeCursorStatus(lockMouse);

	engine.addDebugger(Debugger::getInstance());

	ps.push_back(new Gear::ParticleSystem(1, 10, 10, 1, 1));

	glm::vec3 tempVec = { 0, 0, 10 };

	ps.at(0)->setColor(255, 0, 0);
	ps.at(0)->setEmmiterPos(tempVec);
	ps.at(0)->isActive = true;
	ps.at(0)->setTextrue(particlesTexture);

	while (running == true && window.isWindowOpen())
	{
		deltaTime = counter.getDeltaTime();
		inputs->update();

		engine.queueParticles(&ps);

		engine.drawParticle(camera);

		if (inputs->keyPressed(GLFW_KEY_ESCAPE))
			running = false;

		window.update();
	}
	
	glfwTerminate();
}