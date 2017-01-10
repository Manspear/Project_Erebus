#pragma once
#include"AGI.h"

class FollowState:public EnemyState
{
public:
	AGI_API FollowState();
	AGI_API ~FollowState();
	
	AGI_API void update();
	AGI_API void enterState();
	AGI_API void exitState();


private:
};