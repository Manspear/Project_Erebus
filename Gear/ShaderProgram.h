#pragma once
#include "BaseIncludes.h"
#include <map>


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
	TEXTURE_BLENDING,
	QUAD,
	LIGHT_PASS,
	BLUR,

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
	void bindTexToLocation(GLuint* textures);
	void BindTexturesToProgram(ShaderProgram *shader, const char *name, GLuint textureLoc, GLuint textureid);

	GLuint getProgramID();
	GLuint* getTextures();
	GLuint getFramebufferID();
	void addUniform(glm::vec2& vec2, GLuint location, int count = 1);

	void addUniform(std::string uniform);
	void addAllUniforms(std::string shaderText);
	void addUniform(glm::vec2 &vec2, std::string position, int count = 1);
	void setUniform(glm::mat4 &matrix4x4, std::string position, int count = 1);
	void setUniform(glm::vec3 &vec3, std::string position, int count = 1);
	void setUniform4fv(glm::mat4 *matrix4x4, std::string position, int count = 1);
	void setUniform4cfv(const GLfloat *matrix4x4, std::string position, int count = 1);
	void setUniform1fv(float &vec1, std::string position, int count = 1);
	void setUniform(float &floatValue, std::string position);
	void setUniform(int &intValue, std::string position);

	int getWidth() { return width; }
	int getHeight() { return height; }

	GLuint getUniformLocation(std::string pos);

public:		// Inlined functions
	inline void use() {
		glUseProgram(programID);
		if (framebufferID != 0)
		{
			glBindFramebuffer(GL_FRAMEBUFFER, framebufferID);
			glViewport(0, 0, width, height);
		}
		for (int i = 0; i < totalAttributes; i++)
			glEnableVertexAttribArray(i);
	}

	inline void unUse() {
		glUseProgram(0);
		for (int i = 0; i < totalAttributes; i++)
			glDisableVertexAttribArray(i);
		if (framebufferID != 0)
			glBindFramebuffer(GL_FRAMEBUFFER, 0);
	}

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
	std::string shaderName;

	std::map<std::string, int> uniforms;

	std::string* getPaths(const shaderBaseType& type, const std::string& path);
	GLuint* getTypes(const shaderBaseType& type);
	int getNumShaders(const shaderBaseType& type);
	void InitTextures(GLfloat* filter, GLenum* internalFormat, GLenum* format, GLenum* type, bool clamp);
	void InitRenderTargets(GLenum* attachments);
};