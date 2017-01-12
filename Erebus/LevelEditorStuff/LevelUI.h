#pragma once
#include <AntTweakBar.h>
#include <BaseIncludes.h>
#include <memory>

#define USE_ANT


class LevelUI
{
private:

	TwBar* mainBar;
public:



	LevelUI(GLFWwindow* window);
	~LevelUI();
	void Draw();
};

