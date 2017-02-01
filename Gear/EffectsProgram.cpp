#include "EffectsProgram.h"

EffectsProgram::EffectsProgram()
{
}

EffectsProgram::~EffectsProgram()
{
}

std::vector<UniformValues>* EffectsProgram::getUniformValues()
{
	return &uniformStructs;
}

void EffectsProgram::addUniformValue(GLuint location, GLfloat value)
{
	UniformValues x = { location, value };
	uniformStructs.push_back(x);
}

void EffectsProgram::setUniformValue(int vectorIndex, GLfloat value)
{
	uniformStructs.at(vectorIndex).value = value;
}

void EffectsProgram::setUniformLocation(int vectorIndex, int location)
{
	uniformStructs.at(vectorIndex).location = location;
}

