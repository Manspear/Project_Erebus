#include "SoundEngine.h"

SoundEngine::SoundEngine()
{
	engine = irrklang::createIrrKlangDevice();
	engine->setSoundVolume(0.1f);		// 10% of max volume, cuz it's actually really loud
}

SoundEngine::~SoundEngine()
{

}

void SoundEngine::play(std::string target, bool loop)
{
	std::string path = basePath + target;
	engine->play2D(path.c_str(), loop);
}

void SoundEngine::setVolume(float v)
{
	v = v < 0.f ? 0.f : v > 1.f ? 1.f : v;
	engine->setSoundVolume(v);
}