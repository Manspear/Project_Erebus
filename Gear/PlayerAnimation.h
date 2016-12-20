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
	PlayerStates previousState;
	PlayerStates currentState;
	std::vector<PlayerStates> animationStack;
	bool isTransitionComplete = true;
};