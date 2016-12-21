#include "TextRenderer.h"

TextRenderer::TextRenderer()
{
	font = nullptr;
	shader = nullptr;
	VAO = 0;
	VBO = 0;
}

TextRenderer::~TextRenderer()
{
	if(shader)
		delete shader;
}

void TextRenderer::init(int screenWidth, int screenHeight)
{
	shader = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "text");
	shader->use();
	glGenVertexArrays(1, &VAO);
	glGenBuffers(1, &VBO);
	shader->addUniform(glm::ortho(0.0f, (float)screenWidth, (float)screenHeight, 0.0f), "projectionMatrix");
	shader->unUse();
}

void TextRenderer::setFont(Importer::FontAsset* font)
{
	this->font = font;
}

void TextRenderer::print(const std::string &s, const float &baseX, const float &baseY, const float &scale, const glm::vec4 &color)
{
	sTextLine line;
	line.numberOfCharacters = 0;
	line.scale = scale;
	line.color = color;

	float x = baseX;
	float y = baseY;

	for (auto c : s)
	{
		if (c == '\n') // Handle newline character
		{
			lines.push_back(line);
			line.numberOfCharacters = 0;

			x = baseX;
			y += font->getInfo()->size * scale;
		}
		else
		{
			if (line.numberOfCharacters >= TEXTRENDER_MAXLINESIZE) // Create new line if current line is filled
			{
				lines.push_back(line);
				line.numberOfCharacters = 0;
			}

			sTextVertex vert;

			vert.pos = glm::vec2(x, y);
			vert.UV = font->getUV(c);
			vert.width = font->getWidth(c) * line.scale;

			x += vert.width; // Update position for next vertex

			line.characters[line.numberOfCharacters] = vert;
			line.numberOfCharacters++;
		}
	}
	lines.push_back(line);
}

void TextRenderer::draw()
{
	shader->use();

	glBindVertexArray(VAO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);

	glDisable(GL_DEPTH_TEST);
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	font->getTexture()->bind(GL_TEXTURE0);

	glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(sTextVertex), (GLvoid*)0);
	glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, sizeof(sTextVertex), (GLvoid*)(sizeof(float) * 2));
	glVertexAttribPointer(2, 1, GL_INT, GL_FALSE, sizeof(sTextVertex), (GLvoid*)(sizeof(float) * 6));

	glEnableVertexAttribArray(0);
	glEnableVertexAttribArray(1);
	glEnableVertexAttribArray(2);

	for (auto l : lines)
	{
		glUniform1f(glGetUniformLocation(shader->getProgramID(), "height"), font->getInfo()->size * l.scale);
		glUniform4f(glGetUniformLocation(shader->getProgramID(), "color"), l.color.r, l.color.g, l.color.b, l.color.a);
		glBufferData(GL_ARRAY_BUFFER, sizeof(sTextLine), &l, GL_STATIC_DRAW);
		glDrawArrays(GL_POINTS, 0, l.numberOfCharacters);
	}
	lines.clear();

	glEnable(GL_DEPTH_TEST);
	glDisable(GL_BLEND);

	glBindVertexArray(0);

	shader->unUse();
}