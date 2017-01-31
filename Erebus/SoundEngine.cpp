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
		engine->setDefault3DSoundMinDistance(10);
	}

	currSoundID = 0;
	currSoundSourceID = 0;
}

SoundEngine::~SoundEngine()
{
	clearAll();

	if (engine)
		engine->drop();
}

void SoundEngine::update(const float &dt)
{
	for (auto s : sounds)
	{
		if (s.sound->isFinished())
		{
			s.sound->drop();
			s = std::move(sounds.back());
			sounds.pop_back();
		}
	}
}

size_t SoundEngine::play(size_t sourceID, uint8_t options, glm::vec3 pos)
{
	size_t id = -1;
	auto s = std::find(sources.begin(), sources.end(), sourceID);

	if (!engine || s == sources.end())
		return id;

	sSoundSource ss = *s;

	if (!isPlaying(ss.sourceID) || (options & SOUND_COPY))
	{
		const vec3df ikpos = vec3df(pos.x, pos.y, pos.z);
		bool loop = static_cast<bool>(options & SOUND_LOOP);
		bool paused = static_cast<bool>(options & SOUND_PAUSED);
		bool track = static_cast<bool>(options & (SOUND_LOOP | SOUND_TRACK | SOUND_EFFECTS | SOUND_PAUSED));
		bool effects = static_cast<bool>(options & SOUND_EFFECTS);

		sSound newSound;
		if (options & SOUND_3D)
			newSound.sound = engine->play3D(ss.source, ikpos, loop, paused, track, effects);
		else
			newSound.sound = engine->play2D(ss.source, loop, paused, track, effects);

		if (track && newSound.sound)
		{
			id = ss.sourceID + currSoundID;
			newSound.id = id;
			sounds.push_back(newSound);
			currSoundID++;
		}
	}

	return id;
}

// TODO: Integrate with soundsource system
size_t SoundEngine::play(std::string target, uint8_t options, glm::vec3 pos)
{
	size_t sourceID = addSource(target, (options & SOUND_STREAM));
	size_t soundID = play(sourceID, options, pos);
	return soundID;
}

void SoundEngine::pause(size_t i)
{
	auto s = std::find(sounds.begin(), sounds.end(), i);
	if (s != sounds.end())
		(*s).sound->setIsPaused();
}

void SoundEngine::resume(size_t i)
{
	auto s = std::find(sounds.begin(), sounds.end(), i);
	if (s != sounds.end())
		(*s).sound->setIsPaused(false);
}

void SoundEngine::stop(size_t i)
{
	auto s = std::find(sounds.begin(), sounds.end(), i);
	if (s != sounds.end())
		(*s).sound->stop();
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

void SoundEngine::clearAll()
{
	for (auto s : sounds)
		s.sound->drop();
	sounds.clear();
}

void SoundEngine::setMasterVolume(float v)
{
	if (!engine)
		return;

	Clamp(v, 0.f, 1.f);
	engine->setSoundVolume(v);
}

void SoundEngine::setVolume(size_t i, float v)
{
	auto s = std::find(sounds.begin(), sounds.end(), i);
	if (s != sounds.end())
	{
		Clamp(v, 0.f, 1.f);
		(*s).sound->setVolume(v);
	}
}

void SoundEngine::setPosition(size_t i, const glm::vec3 &pos)
{
	auto s = std::find(sounds.begin(), sounds.end(), i);
	if (s != sounds.end())
	{
		const vec3df ikpos = vec3df(pos.x, pos.y, pos.z);
		(*s).sound->setPosition(ikpos);
	}
}

void SoundEngine::setVelocity(size_t i, const glm::vec3 &vel)
{
	auto s = std::find(sounds.begin(), sounds.end(), i);
	if (s != sounds.end())
	{
		const vec3df ikvel = vec3df(vel.x, vel.y, vel.z);
		(*s).sound->setVelocity(ikvel);
	}
}

void SoundEngine::setPlayerTransform(const glm::vec3 &pos, const glm::vec3 &look)
{
	if (!engine)
		return;

	const vec3df ikpos	= vec3df(pos.x, pos.y, pos.z);
	const vec3df iklook	= -vec3df(look.x, look.y, look.z);

	engine->setListenerPosition(ikpos, iklook);
}

size_t SoundEngine::addSource(std::string target, bool stream)
{
	size_t id = -1;

	if (!engine)
		return id;

	const std::string path = basePath + target;
	ISoundSource* source = engine->getSoundSource(path.c_str());

	E_STREAM_MODE mode = stream ? ESM_STREAMING : ESM_AUTO_DETECT;
	source->setStreamMode(mode);

	auto s = std::find(sources.begin(), sources.end(), source);
	if (s == sources.end())
	{
		sSoundSource newSource;
		newSource.source = source;
		newSource.target = target;
		id = currSoundSourceID << S_ID_SHIFT;
		newSource.sourceID = id;
		sources.push_back(newSource);
		currSoundSourceID++;
	}
	else
	{
		id = (*s).sourceID;
	}

	return id;
}

bool SoundEngine::isPlaying(size_t sourceID)
{
	for (auto s : sounds)
		if (s.id >> S_ID_SHIFT == sourceID >> S_ID_SHIFT)
			if (!s.sound->isFinished())
				return true;
	return false;
}