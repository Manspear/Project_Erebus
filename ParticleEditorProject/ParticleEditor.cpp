#include "ParticleEditor.h"

//namespace ParticleEditor
//{
ParticleEngine::ParticleEngine()
{
	this->running = true;
	//nrPs.numPS = 1;
	//p.numOfParticles = 10;
	//p.lifeTime = 1;
	//p.speed = 10;
	//p.extPerSecond = 8;
	//p.nrOfParticlesPerExt = 10;

	lifeTime = 3;
}

ParticleEngine::~ParticleEngine()
{
	delete ps.at(0);
}

void ParticleEngine::start()
{
	Gear::GearEngine engine;
	Importer::Assets assets;

	glEnable(GL_DEPTH_TEST);

	GLFWwindow* w = window.getGlfwWindow();
	Inputs inputs(w);

	Camera camera(45.f, 1280.f / 720.f, 0.1f, 2000.f, &inputs);

	Importer::TextureAsset* particlesTexture = assets.load<TextureAsset>("Textures/fireball.png");

	/*writeToFile();*/

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

void ParticleEngine::update(float dt)
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

void ParticleEngine::setAlive()
{
	ps.at(0)->activate();
}

void ParticleEngine::die(const float & dt)
{
	ps.at(0)->deActivate();
	ps.at(0)->updateWhenDead(dt);

}

void ParticleEngine::writeToFile()
{

	FILE* file;
	file = fopen("particle.bin", "wb");
	if (file)
	{
		char* ptr = "fireball";
		memcpy(&nrPs, ptr, sizeof(const char[32]));

		fwrite(&nrPs, sizeof(numParticleSystems), nrPs.numPS, file);

		fclose(file);
	}


}
//}