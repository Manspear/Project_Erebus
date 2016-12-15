#pragma once
#include "BaseIncludes.h"

namespace Lights {
	struct PointLight {
		glm::vec4 pos;
		glm::vec4 color;
		glm::vec4 radius;
	};

	struct DirLight {
		glm::vec3 direction;
		glm::vec3 color;
	};
}
