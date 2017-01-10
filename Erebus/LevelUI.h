#pragma once
#include <AntTweakBar.h>
#include <BaseIncludes.h>
class LevelUI
{
private:


	TwBar* mainBar;
public:
	LevelUI(GLFWwindow* window);
	~LevelUI();
	void Draw();
};

