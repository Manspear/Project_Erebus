#include "SoundEngine.h"

SoundEngine::SoundEngine()
{
	engine = irrklang::createIrrKlangDevice();
	if(engine)
		engine->setSoundVolume(0.1f);		// 10% of max volume, cuz it's actually really loud
}

SoundEngine::~SoundEngine()
{
	for (auto s : sounds)
		s->drop();
	sounds.clear();

	if (engine)
		engine->drop();
}

void SoundEngine::play(std::string target, enum SndOptions options)
{
	if (!engine)
		return;

	std::string path = basePath + target;
	bool loop = (bool)(options & SND_LOOP);
	bool track = (bool)(options & (SND_LOOP | SND_TRACK));

	irrklang::ISound* s = engine->play2D(path.c_str(), loop, false, track);
	if (s)
		sounds.push_back(s);
}

void SoundEngine::pause()
{
	if (!engine)
		return;

	for (auto s : sounds)
		s->setIsPaused(true);
}

void SoundEngine::resume()
{
	if (!engine)
		return;

	for (auto s : sounds)
		s->setIsPaused(false);
}

void SoundEngine::setVolume(float v)
{
	if (!engine)
		return;

	v = v < 0.f ? 0.f : v > 1.f ? 1.f : v;
	engine->setSoundVolume(v);
}