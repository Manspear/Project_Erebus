#pragma once
#include "BaseIncludes.h"

namespace Lights {
	struct PointLight {
		glm::vec3 pos;
		glm::vec3 color;
		float radius;
	};

	struct DirLight {
		glm::vec3 direction;
		glm::vec3 color;
	};
}
