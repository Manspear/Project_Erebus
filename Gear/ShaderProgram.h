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
	ANIM,
	ANIMSHADOW,
	PARTICLES,
	SHADOW,
	GEOMETRY,
	GEOMETRYSHADOW,
	GEOMETRY_NON,
	HEIGHTMAP,
	DEBUG_LINE,
	DEBUG_SPHERE,
	DEBUG_AABB,
	DEBUG_OBB,
	GEOMETRY_PICKING,
	SKYBOX,
	NUM_SHADER_TYPES
};

static const std::string baseFolder = "../Erebus/Shaders/";
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
	void deferredInit(int nrTex, int width, int height, GLuint* internalFormat, GLuint* format, GLenum* type, GLuint* attachments);
	void initFramebuffer(int nrTex, int width, int height, GLfloat* filter, GLenum* internalFormat, GLenum* format, GLenum* type, GLenum* attachments, bool clamp);
	void initFramebuffer(int nrTex, int width, int height, GLfloat filter, GLenum internalFormat, GLenum format, GLenum type, GLenum attachments, bool clamp);
	void use();
	void unUse();
	void bindTexToLocation(GLuint* textures);
	void BindTexturesToProgram(ShaderProgram *shader, const char *name, GLuint textureLoc, GLuint textureid);

	GLuint getProgramID();
	GLuint* getTextures();
	GLuint getFramebufferID();
	void addUniform(glm::mat4 &matrix4x4, std::string position, int count = 1);
	void addUniform(glm::vec3 &vec3, std::string position, int count = 1);
	void addUniform(float &floatValue, std::string position);
	void addUniform(int &intValue, std::string position);

	void addUniform(glm::mat4 &matrix4x4, GLuint location, int count = 1);
	void addUniform(glm::vec3 &vec3, GLuint location, int count = 1);
	void addUniform(float &floatValue, GLuint location);
	void addUniform(int &intValue, GLuint location);

	int getWidth() { return width; }
	int getHeight() { return height; }

	GLuint getUniformLocation(std::string pos);


private:
	GLuint programID;
	GLuint* shaderIDs;
	GLuint* textureIDs;
	GLuint framebufferID;
	GLuint renderBuffer;
	int width, height;
	std::vector<GLuint> uniformLocations;
	int nrOfShaders;
	int nrOfTextures;
	int totalAttributes;
	int nrOfUniforms;


	std::string* getPaths(const shaderBaseType& type, const std::string& path);
	GLuint* getTypes(const shaderBaseType& type);
	int getNumShaders(const shaderBaseType& type);
	void InitTextures(GLfloat* filter, GLenum* internalFormat, GLenum* format, GLenum* type, bool clamp);
	void InitRenderTargets(GLenum* attachments);
};