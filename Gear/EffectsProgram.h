#pragma once
#include "BaseIncludes.h"

struct UniformValues {
	int location;
	GLfloat value;
};
class EffectsProgram {
public:
	EffectsProgram();
	~EffectsProgram();

	std::vector<UniformValues>* getUniformValues();
	GEAR_API void addUniformValue(GLuint location, GLfloat value);
	GEAR_API void setUniformValue(int vectorIndex, GLfloat value);
	GEAR_API void setUniformLocation(int vectorIndex, int location);
private:
	std::vector<UniformValues> uniformStructs;
};