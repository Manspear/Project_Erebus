#include "ParticleEditor.h"

ParticleEditor::ParticleEditor()
{
	this->running = true;
	lifeTime = 3;
}

ParticleEditor::~ParticleEditor()
{
	delete ps.at(0);
}

void ParticleEditor::start()
{
	Gear::GearEngine engine;
	Importer::Assets assets;

	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	Inputs inputs(w);

	Camera camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, &inputs);
	
	Importer::TextureAsset* particlesTexture = assets.load<TextureAsset>("Textures/fireball.png");

	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = false;
	window.changeCursorStatus(lockMouse);

	engine.addDebugger(Debugger::getInstance());

	ps.push_back(new Gear::ParticleSystem(10, 1, 10, 8, 10));

	glm::vec3 tempVec = { 0, 0, -2 };

	ps.at(0)->setEmmiterPos(tempVec);
	ps.at(0)->isActive = true;
	ps.at(0)->setTextrue(particlesTexture);

	while (running == true && window.isWindowOpen())
	{
		deltaTime = counter.getDeltaTime();
		inputs.update();

		update(deltaTime);

		camera.updateLevelEditorCamera(deltaTime);

		ps.at(0)->updateParticleEditor(deltaTime);

		engine.queueParticles(&ps);

		engine.drawParticle(&camera);
		
		if (inputs.keyPressed(GLFW_KEY_ESCAPE))
			running = false;

		window.update();
	}
	
	glfwTerminate();
}

void ParticleEditor::update(float dt)
{
	if (lifeTime = lifeTime)
	{
		setAlive();
	}

	lifeTime = lifeTime - dt;
	if (lifeTime <= 0)
	{
		die(dt);
	}
}

void ParticleEditor::setAlive()
{
	ps.at(0)->activate();
}

void ParticleEditor::die(const float & dt)
{
	ps.at(0)->deActivate();
	ps.at(0)->updateWhenDead(dt);

}
