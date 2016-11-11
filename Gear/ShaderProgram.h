#pragma 
#include "BaseIncludes.h"


class ShaderProgram
{
public:
	ShaderProgram();
	ShaderProgram(int nrShaders, std::string* paths, GLuint* shaderTypes);
	~ShaderProgram();

	void framebufferInit(int nrTex, int width, int height, GLuint* internalFormat, GLuint* format, GLuint* type, GLuint* attachments);
	void use();
	void unUse();
	void bindTexToLocation(GLuint* textures);

	GLuint getProgramID();
	GLuint* getTextures();
private:
	GLuint programID;
	GLuint* shaderIDs;
	GLuint* textureIDs;
	GLuint framebufferID;
	int nrOfShaders;
	int nrOfTextures;
	int totalAttributes;
	int nrOfUniforms;
};