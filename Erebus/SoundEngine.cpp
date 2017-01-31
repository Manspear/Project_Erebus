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
}

SoundEngine::~SoundEngine()
{
	clearAll();

	if (engine)
		engine->drop();
}

void SoundEngine::update(const double &dt)
{
	
}

size_t SoundEngine::play(std::string target, uint8_t options, glm::vec3 pos)
{
	size_t id = -1;
	if (!engine)
		return id;

	const std::string path = basePath + target;
	const char* c_path = path.c_str();
	if ( (options & SOUND_COPY) || !engine->isCurrentlyPlaying(c_path) )
	{
		const vec3df ikpos = vec3df(pos.x, pos.y, pos.z);
		bool loop = static_cast<bool>(options & SOUND_LOOP);
		bool paused = static_cast<bool>(options & SOUND_PAUSED);
		bool effects = static_cast<bool>(options & SOUND_EFFECTS);
		E_STREAM_MODE stream = static_cast<bool>(options & SOUND_STREAM) ? ESM_STREAMING : ESM_AUTO_DETECT;

		sSound s;
		if (options & SOUND_3D)
			s.sound = engine->play3D(c_path, ikpos, loop, paused, true, stream, effects);
		else
			s.sound = engine->play2D(c_path, loop, paused, true, stream, effects);

		if (s.sound)
		{
			s.id = id = currSoundID;
			sounds.push_back(s);
			currSoundID++;
		}
	}

	return id;
}

#pragma region Pause/resume/stop
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
#pragma endregion Functions for pausing/playing sounds

#pragma region Setters
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
#pragma endregion Functions for manipulating sound attributes