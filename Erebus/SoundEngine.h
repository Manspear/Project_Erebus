#pragma once

#include "irrKlang\irrKlang.h"
#pragma comment(lib, "irrKlang.lib")

#include <glm\glm.hpp>

#include <string>
#include <vector>
#include <algorithm>

#include <iostream>

using namespace irrklang;

#define ValidateIndex(i,lim) i = i < 0 ? -1 : i >= lim ? -1 : i				// If 0 <= i < lim, i is valid. Otherwise, i is set to -1
#define Clamp(val,min,max) val = val < min ? min : val > max ? max : val	// Clamps val between min and max

enum eSoundOptions : uint8_t
{
	SOUND_NO_FLAG		= 0x00,
	SOUND_3D			= 0x01,
	SOUND_COPY			= 0x02,
	SOUND_EFFECTS		= 0x04,
	SOUND_STREAM		= 0x08,
	SOUND_LOOP			= 0x10,
	SOUND_PAUSED		= 0x20,
	SOUND_BLURB4		= 0x40,
	SOUND_BLURB5		= 0x80
};

class SoundEngine
{
public:
	SoundEngine();
	~SoundEngine();

	void update(const double &dt);
	void fade(size_t i, float t);
	void crossfade(size_t from, size_t to, float t);

	size_t play(std::string target, uint8_t options = SOUND_NO_FLAG, glm::vec3 pos = glm::vec3(0, 0, 0));

	void pause(size_t i);
	void resume(size_t i);
	void stop(size_t i);
	void pauseAll();
	void resumeAll();
	void clearAll();

	void setMasterVolume(float v);		// Sets volume to a value between 0 (silent) and 1 (full volume)
	void setVolume(size_t i, float v);
	void setPosition(size_t i, const glm::vec3 &pos);
	void setVelocity(size_t i, const glm::vec3 &vel);
	void setPlayerTransform(const glm::vec3 &pos, const glm::vec3 &look);

	std::string getDbgTxt();

private:
	struct sSound
	{
		size_t id;
		ISound* sound;

		inline bool operator==(const size_t &val) { return id == val; }
	};

	struct sFade
	{
		ISound* sound;
		float elapsedTime = 0;
		float targetTime;
		float targetVolume;
		float initialVolume;

		sFade(ISound* s, float t, float v = 0.f)
			: sound(s), targetTime(t), targetVolume(v), initialVolume(s->getVolume()) {}
	};


	ISoundEngine* engine;
	const std::string basePath = "./Audio/";

	std::vector<sSound> sounds;
	std::vector<sFade> fades;
	size_t currSoundID;

private:
	inline void processFade(sFade &f, const float &dt);
};