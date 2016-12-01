#pragma once
#include "BaseIncludes.h"

namespace Lights {
	struct PointLight {
		glm::vec3 pos;
		glm::vec3 color;
		float radius;
	};
}
