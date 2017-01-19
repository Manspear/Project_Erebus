#pragma once

#include "irrKlang\irrKlang.h"
#pragma comment(lib, "irrKlang.lib")

#include <glm\glm.hpp>

#include <string>
#include <vector>

enum SndOptions : uint8_t
{
	SND_NO_FLAG		= 0x00,
	SND_LOOP		= 0x01,
	SND_TRACK		= 0x02,
	SND_EFFECTS		= 0x04,
	SND_STREAM		= 0x08,
	SND_BLURB2		= 0x10,
	SND_BLURB3		= 0x20,
	SND_BLURB4		= 0x40,
	SND_BLURB5		= 0x80
};

class SoundEngine
{
public:
	SoundEngine();
	~SoundEngine();

	void play(std::string target, enum SndOptions options = SND_NO_FLAG);
	void play3D(std::string target, glm::vec3 pos, enum SndOptions options = SND_NO_FLAG);
	void pause();
	void resume();

	void setMasterVolume(float v);		// Sets volume to a value between 0 (silent) and 1 (full volume)
	void setPlayerTransform(const glm::vec3 &pos, const glm::vec3 &look);

private:
	irrklang::ISoundEngine* engine;
	const std::string basePath = "./Audio/";

	std::vector<irrklang::ISound*> sounds;

};