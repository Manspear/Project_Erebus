#pragma once
#include "BaseIncludes.h"


enum shaderBaseType
{
	VERTEX_FRAGMENT,
	VERTEX_GEOMETRY_FRAGMENT,
	COMPUTESHADER,
	NUM_BASE_TYPES
};

enum ShaderType {
	FORWARD,
	PARTICLES,
	SHADOW,
	G_BUFFER,
	NUM_SHADER_TYPES
};

static const std::string baseFolder = "Shaders/";
static const std::string vertEnd = ".vert";
static const std::string geomEnd = ".geom";
static const std::string fragEnd = ".frag";
static const std::string compEnd = ".comp";

class ShaderProgram
{
public:
	ShaderProgram();
	ShaderProgram(int nrShaders, std::string* paths, GLuint* shaderTypes);
	ShaderProgram(shaderBaseType type, std::string shaderName);
	~ShaderProgram();

	void framebufferInit(int nrTex, int width, int height, GLuint* internalFormat, GLuint* format, GLuint* type, GLuint* attachments);
	void deferredInit(int nrTex, int width, int height, GLuint* internalFormat, GLuint* format, GLuint* type, GLuint* attachments);
	void use();
	void unUse();
	void bindTexToLocation(GLuint* textures);
	void BindTexturesToProgram(ShaderProgram *shader, const char *name, GLuint texture);

	GLuint getProgramID();
	GLuint* getTextures();
	void addUniform(glm::mat4 &matrix4x4, std::string position, int count = 1);
	void addUniform(glm::vec3 &vec3, std::string position, int count = 1);


private:
	GLuint programID;
	GLuint* shaderIDs;
	GLuint* textureIDs;
	GLuint framebufferID;
	std::vector<int> uniformLocations;
	int nrOfShaders;
	int nrOfTextures;
	int totalAttributes;
	int nrOfUniforms;
	GLuint getUniformLocation(std::string pos);


	std::string* getPaths(const shaderBaseType& type, const std::string& path);
	GLuint* getTypes(const shaderBaseType& type);
	int getNumShaders(const shaderBaseType& type);
};