#pragma once
#include <AntTweakBar.h>
#include <BaseIncludes.h>
class LevelUI
{
private:
	float changeValue;
	TwBar* mainBar;
public:
	LevelUI(GLFWwindow* window);
	~LevelUI();
	void Draw();
};

