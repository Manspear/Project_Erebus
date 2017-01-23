#include "SoundEngine.h"

SoundEngine::SoundEngine()
{
	engine = irrklang::createIrrKlangDevice();
	if (engine)
	{
		engine->setSoundVolume(0.1f);		// 10% of max volume, cuz it's actually really loud
		engine->setDefault3DSoundMaxDistance(100.f);
		engine->setRolloffFactor(8.0);
	}
}

SoundEngine::~SoundEngine()
{
	for (auto s : sounds)
		s->drop();
	sounds.clear();

	if (engine)
		engine->drop();
}

void SoundEngine::play(std::string target, enum eSoundOptions options)
{
	if (!engine)
		return;

	std::string path = basePath + target;
	bool loop = static_cast<bool>(options & SOUND_LOOP);
	bool track = static_cast<bool>(options & (SOUND_LOOP | SOUND_TRACK | SOUND_EFFECTS));
	bool effects = static_cast<bool>(options & SOUND_EFFECTS);

	irrklang::ISound* s = engine->play2D(path.c_str(), loop, false, track);
	if (track && s)
		sounds.push_back(s);
}

void SoundEngine::play3D(std::string target, glm::vec3 pos, enum eSoundOptions options)
{
	if (!engine)
		return;

	std::string path = basePath + target;
	irrklang::vec3df ikpos = irrklang::vec3df(pos.x, pos.y, pos.z);
	bool loop = static_cast<bool>(options & SOUND_LOOP);
	bool track = static_cast<bool>(options & (SOUND_LOOP | SOUND_TRACK | SOUND_EFFECTS));
	bool effects = static_cast<bool>(options & SOUND_EFFECTS);

	irrklang::ISound* s = engine->play3D(path.c_str(), ikpos, loop, false, track, irrklang::ESM_AUTO_DETECT, effects);
	if (track && s)
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

void SoundEngine::setMasterVolume(float v)
{
	if (!engine)
		return;

	v = v < 0.f ? 0.f : v > 1.f ? 1.f : v;
	engine->setSoundVolume(v);
}

void SoundEngine::setPlayerTransform(const glm::vec3 &pos, const glm::vec3 &look)
{
	if (!engine)
		return;

	const irrklang::vec3df ikpos	= irrklang::vec3df(pos.x, pos.y, pos.z);
	const irrklang::vec3df iklook	= irrklang::vec3df(look.x, look.y, look.z);

	engine->setListenerPosition(ikpos, iklook);
}