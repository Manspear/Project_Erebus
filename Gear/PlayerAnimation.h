#pragma once
#include "AnimationEnums.h"
#include "Animation.h"
#include <vector>
class PlayerAnimation : Animation
{
public:
	PlayerAnimation();
	~PlayerAnimation();
	void updateState(float dt, int state) override;
private:
	void blendAnimations(int blendTo, int blendFrom, float transitionTimer, float dt);

	std::vector<int> animationStack;
	bool isTransitionComplete = true;
};