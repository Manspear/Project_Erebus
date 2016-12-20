#pragma once
#include"AGI.h"

class IdleState :public EnemyState
{
public:
	AGI_API IdleState();
	AGI_API ~IdleState();
	AGI_API void update();
	AGI_API void enterState();
	AGI_API void exitState();

};

