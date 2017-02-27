#include "FloatingDamage.h"



FloatingDamage::FloatingDamage()
{
	//randoms between -.5 / .5
	for (size_t i = 0; i < RANDOM_NUMBER_TOTAL; i++)
	{
		xOffsetRandom[i] = ((rand() % 100) - 50) / 100;
		yOffsetRandom[i] = ((rand() % 100) - 50) / 100;
	}

	currentOffset = 0;

	font = nullptr;
	shader = nullptr;
	VAO = 0;
	VBO = 0;
	for (size_t i = 0; i < NUM_DAMAGE_TYPES; i++)
	{
		this->dataToSend2[i] = new DamageValue[100];
	}


	DamageValue temp;
	this->dataToSend2[0][0] = DamageValue();
}


FloatingDamage::~FloatingDamage()
{
}

void FloatingDamage::setFont(Importer::FontAsset * font)
{
	this->font = font;
}

void FloatingDamage::init(int screenWidth, int screenHeight)
{
	shader = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "floatDamage");
	shader->use();
	glGenVertexArrays(1, &VAO);
	glGenBuffers(1, &VBO);

	projectionLoc = glGetUniformLocation(shader->getProgramID(), "projectionMatrix");
	viewLoc = glGetUniformLocation(shader->getProgramID(), "viewMatrix");
	//shader->setUniform(glm::ortho(0.0f, (float)screenWidth, (float)screenHeight, 0.0f), "projectionMatrix");
	glBindVertexArray(VAO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);

	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(fDamageVertex), (GLvoid*)0);
	glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, sizeof(fDamageVertex), (GLvoid*)(sizeof(float) * 3));
	glVertexAttribPointer(2, 4, GL_FLOAT, GL_FALSE, sizeof(fDamageVertex), (GLvoid*)(sizeof(float) * 5));
	glVertexAttribPointer(3, 1, GL_INT, GL_FALSE, sizeof(fDamageVertex), (GLvoid*)(sizeof(float) * 9));
	glBufferData(GL_ARRAY_BUFFER, sizeof(fDamageLine), NULL, GL_STREAM_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
	heightLoc = glGetUniformLocation(shader->getProgramID(), "height");
	colorLoc = glGetUniformLocation(shader->getProgramID(), "color");
	shader->unUse();
}

void FloatingDamage::draw(Camera* camera)
{
	//updateBuffer();
	shader->use();

	glBindVertexArray(VAO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);

	glDisable(GL_DEPTH_TEST);
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	font->getTexture()->bind(GL_TEXTURE0);

	glEnableVertexAttribArray(0);
	glEnableVertexAttribArray(1);
	glEnableVertexAttribArray(2);
	glEnableVertexAttribArray(3);

	shader->setUniform4fv(&camera->getProjectionMatrix(), "projectionMatrix");
	shader->setUniform4fv(&camera->getViewMatrix(), "viewMatrix");

	//for (auto l : lines)
	for (auto l : bufferedLines)
	{
		glUniform1f(heightLoc, font->getInfo()->size * l.scale);
		glUniform4f(colorLoc, l.color.r, l.color.g, l.color.b, l.color.a);
		glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(fDamageLine), &l);
		glDrawArrays(GL_POINTS, 0, (GLsizei)l.numberOfCharacters);
	}
	//lines.clear();
	bufferedLines.clear();

	glEnable(GL_DEPTH_TEST);
	glDisable(GL_BLEND);

	glBindVertexArray(0);

	shader->unUse();
}

void FloatingDamage::updateBuffer()
{
	bufferedLines.clear();
	for (int i = 0; i<lines.size(); i++)
		bufferedLines.push_back(lines[i]);
	lines.clear();
}

void FloatingDamage::addDamage(float damage)
{
	print(std::to_string((int)damage), 1, { 1,0,0,0 }, glm::vec3(20, 8, 165));
	updateBuffer();
}

void FloatingDamage::print(const std::string &s, const float &scale, const glm::vec4 &color, glm::vec3 worldPos)
{
	fDamageLine line;
	line.numberOfCharacters = 0;
	line.scale = scale;
	line.color = color;


	for (auto c : s)
	{
		if (line.numberOfCharacters >= FLOATING_MAX_NUMBER) // Create new line if current line is filled
		{
			lines.push_back(line);
			line.numberOfCharacters = 0;
		}

		fDamageVertex vert;

		vert.pos = worldPos;
		vert.UV = font->getUV(c);
		vert.width = (int)(font->getWidth(c) * line.scale);
		vert.attributes.z += vert.width;
		vert.attributes.x = 1;
		vert.attributes.y = 1;

		//worldPos.x += vert.width; // Update position for next vertex

		line.characters[line.numberOfCharacters] = vert;
		line.numberOfCharacters++;
	}
	lines.push_back(line);
}