#pragma once

#include "irrKlang\irrKlang.h"
#pragma comment(lib, "irrKlang.lib")

#include <string>

class SoundEngine
{
public:
	SoundEngine();
	~SoundEngine();

	void play(std::string target, bool loop = false);

	void setVolume(float v);		// Sets volume to a value between 0 (silent) and 1 (full volume)

private:
	irrklang::ISoundEngine* engine;
	const std::string basePath = "../Assets/";
};