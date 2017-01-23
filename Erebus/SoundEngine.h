#pragma once

#include "irrKlang\irrKlang.h"
#pragma comment(lib, "irrKlang.lib")

#include <glm\glm.hpp>

#include <string>
#include <vector>

using namespace irrklang;

enum eSoundOptions : uint8_t
{
	SOUND_NO_FLAG		= 0x00,
	SOUND_LOOP			= 0x01,
	SOUND_TRACK			= 0x02,
	SOUND_EFFECTS		= 0x04,
	SOUND_STREAM		= 0x08,
	SOUND_BLURB2		= 0x10,
	SOUND_BLURB3		= 0x20,
	SOUND_BLURB4		= 0x40,
	SOUND_BLURB5		= 0x80
};

class SoundEngine
{
public:
	SoundEngine();
	~SoundEngine();

	void play(std::string target, enum eSoundOptions options = SOUND_NO_FLAG);
	void play3D(std::string target, glm::vec3 pos, enum eSoundOptions options = SOUND_NO_FLAG);
	void pause();
	void resume();

	void setMasterVolume(float v);		// Sets volume to a value between 0 (silent) and 1 (full volume)
	void setPlayerTransform(const glm::vec3 &pos, const glm::vec3 &look);

	std::string getDbgText();

private:
	ISoundEngine* engine;
	const std::string basePath = "./Audio/";

	std::vector<ISound*> sounds;
	std::string dbgText = "No sound";

};