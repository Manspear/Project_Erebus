#include "SoundEngine.h"

SoundEngine::SoundEngine()
{
	int options = 0
		//| ESEO_DEFAULT_OPTIONS
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

int SoundEngine::play(std::string target, uint8_t options, glm::vec3 pos)
{
	int index = -1;

	if (!engine)
		return index;

	const std::string path = basePath + target;
	const vec3df ikpos = vec3df(pos.x, pos.y, pos.z);

	bool loop = static_cast<bool>(options & SOUND_LOOP);
	bool paused = static_cast<bool>(options & SOUND_PAUSED);
	bool track = static_cast<bool>(options & (SOUND_LOOP | SOUND_TRACK | SOUND_EFFECTS | SOUND_PAUSED));
	bool effects = static_cast<bool>(options & SOUND_EFFECTS);
	E_STREAM_MODE stream = (options & SOUND_STREAM) ? ESM_STREAMING : ESM_AUTO_DETECT;

	ISound* s;
	if (options & SOUND_3D)
		s = engine->play3D(path.c_str(), ikpos, loop, paused, track, stream, effects);
	else
		s = engine->play2D(path.c_str(), loop, paused, track, stream, effects);

	if (track && s)
	{
		index = sounds.size();
		sounds.push_back(s);
	}

	return index;
}

void SoundEngine::pause(int i)
{
	ValidateIndex(i, sounds.size());
	if (i == -1 || !sounds[i])
		return;

	sounds[i]->setIsPaused();
}

void SoundEngine::resume(int i)
{
	ValidateIndex(i, sounds.size());
	if (i == -1 || !sounds[i])
		return;

	sounds[i]->setIsPaused(false);
}

void SoundEngine::pauseAll()
{
	if (engine)
		engine->setAllSoundsPaused();
}

void SoundEngine::resumeAll()
{
	if (engine)
		engine->setAllSoundsPaused(false);
}

void SoundEngine::setMasterVolume(float v)
{
	if (!engine)
		return;

	Clamp(v, 0.f, 1.f);
	engine->setSoundVolume(v);
}

void SoundEngine::setVolume(int i, float v)
{
	ValidateIndex(i, sounds.size());
	if (!engine || i == -1 || !sounds[i])
		return;

	Clamp(v, 0.f, 1.f);
	sounds[i]->setVolume(v);
}

void SoundEngine::setPosition(int i, const glm::vec3 &pos)
{
	ValidateIndex(i, sounds.size());
	if (i == -1 || sounds[i])
		return;

	const vec3df ikpos = vec3df(pos.x, pos.y, pos.z);
	sounds[i]->setPosition(ikpos);
}

void SoundEngine::setVelocity(int i, const glm::vec3 &vel)
{
	ValidateIndex(i, sounds.size());
	if (i == -1 || sounds[i])
		return;

	const vec3df ikpos = vec3df(vel.x, vel.y, vel.z);
	sounds[i]->setVelocity(ikpos);
}

void SoundEngine::setPlayerTransform(const glm::vec3 &pos, const glm::vec3 &look)
{
	if (!engine)
		return;

	const vec3df ikpos	= vec3df(pos.x, pos.y, pos.z);
	const vec3df iklook	= -vec3df(look.x, look.y, look.z);

	engine->setListenerPosition(ikpos, iklook);
}