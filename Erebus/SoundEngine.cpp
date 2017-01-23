#include "SoundEngine.h"

SoundEngine::SoundEngine()
{
	int options = ESEO_DEFAULT_OPTIONS
		| ESEO_MULTI_THREADED
		//| ESEO_MUTE_IF_NOT_FOCUSED
		| ESEO_LOAD_PLUGINS
		| ESEO_USE_3D_BUFFERS
		| ESEO_PRINT_DEBUG_INFO_TO_DEBUGGER
		| ESEO_PRINT_DEBUG_INFO_TO_STDOUT
		//| ESEO_LINEAR_ROLLOFF
		;
	engine = createIrrKlangDevice(ESOD_AUTO_DETECT, options);
	if (engine)
	{
		engine->setSoundVolume(0.5f);
		engine->setRolloffFactor(0.05f);
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

	ISound* s = engine->play2D(path.c_str(), loop, false, track, ESM_AUTO_DETECT, effects);
	if (track && s)
		sounds.push_back(s);
}

void SoundEngine::play3D(std::string target, glm::vec3 pos, enum eSoundOptions options)
{
	if (!engine)
		return;

	std::string path = basePath + target;
	const vec3df ikpos = vec3df(pos.x, pos.y, pos.z);
	bool loop = static_cast<bool>(options & SOUND_LOOP);
	bool track = static_cast<bool>(options & (SOUND_LOOP | SOUND_TRACK | SOUND_EFFECTS));
	bool effects = static_cast<bool>(options & SOUND_EFFECTS);

	ISound* s = engine->play3D(path.c_str(), ikpos, loop, false, track, ESM_AUTO_DETECT, effects);
	if (track && s)
		sounds.push_back(s);
}

void SoundEngine::pause()
{
	if (engine)
		engine->setAllSoundsPaused();
}

void SoundEngine::resume()
{
	if (engine)
		engine->setAllSoundsPaused(false);
}

void SoundEngine::setMasterVolume(float v)
{
	if (!engine)
		return;

	v = v < 0.f ? 0.f : v > 1.f ? 1.f : v;	// Clamp v between 0 and 1
	engine->setSoundVolume(v);
}

void SoundEngine::setPlayerTransform(const glm::vec3 &pos, const glm::vec3 &look)
{
	if (!engine)
		return;

	const vec3df ikpos	= vec3df(pos.x, pos.y, pos.z);
	const vec3df iklook	= -vec3df(look.x, look.y, look.z);

	engine->setListenerPosition(ikpos, iklook);
}