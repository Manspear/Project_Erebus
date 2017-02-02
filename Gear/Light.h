#pragma once
#include "BaseIncludes.h"

namespace Lights {
	struct PointLight {
		glm::vec4 pos;
		glm::vec4 color;
		glm::vec4 radius;

		PointLight(glm::vec4 pos, glm::vec4 color, glm::vec4 radius) {
			this->pos = pos;
			this->color = color;
			this->radius = radius;
		}
	};

	struct DirLight {
		glm::vec3 direction;
		glm::vec3 color;
		glm::mat4 projection;
	};
}
