#pragma once
#include "BaseIncludes.h"

namespace Lights {
	enum ePointLightStatus
	{
		INACTIVE = -1,
		ACTIVE = 0,
		TO_ADD = 1,
		TO_REMOVE = 2
	};

	struct PointLight {
		glm::vec4 pos;
		glm::vec4 color;
		glm::vec4 radius;

		PointLight(glm::vec4 pos = glm::vec4(0), glm::vec4 color = glm::vec4(0), glm::vec4 radius = glm::vec4(0,0,0,INACTIVE)) {
			this->pos = pos;
			this->color = color;
			this->radius = radius;
		}
	};

	struct DirLight {
		glm::vec3 direction;
		glm::vec3 color;
	};
}
