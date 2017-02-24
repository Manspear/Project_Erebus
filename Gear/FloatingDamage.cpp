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

void FloatingDamage::draw()
{
	bool results = false;
	this->shader->use();
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	fDamageVertex* floatingData;
	size_t particleCount;
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glVertexAttribPointer(0, 10, GL_FLOAT, GL_FALSE, sizeof(floatingData), (GLvoid*)0);

	for (size_t i = 0; i < eDamageTypes::NUM_DAMAGE_TYPES; i++)
	{
		if (this->dataToSend[i].size() > 0) {
			floatingData = dataToSend->at(i);
			ps->at(i)->particleEmitters[j].getTexture()->bind(GL_TEXTURE0);
			particleCount = ps->at(i)->particleEmitters[j].getNrOfActiveParticles();
			glBufferData(GL_ARRAY_BUFFER, (sizeof(floatingData)) * particleCount, &pos[0], GL_STATIC_DRAW);
			glDrawArraysInstanced(GL_POINTS, 0, (GLsizei)particleCount, 1);
		}
	}


	for (size_t i = 0; i < ps->size(); i++)
	{
		if (ps->at(i)->isActive)
		{
			results = true;
			for (size_t j = 0; j < ps->at(i)->getNrOfEmitters(); j++)
			{
				if (ps->at(i)->particleEmitters->isActive)
				{
					pos = ps->at(i)->particleEmitters[j].getPositions();
					ps->at(i)->particleEmitters[j].getTexture()->bind(GL_TEXTURE0);
					particleCount = ps->at(i)->particleEmitters[j].getNrOfActiveParticles();
					glBufferData(GL_ARRAY_BUFFER, (sizeof(floatingData)) * particleCount, &pos[0], GL_STATIC_DRAW);
					glDrawArraysInstanced(GL_POINTS, 0, (GLsizei)particleCount, 1);
				}
			}
		}
	}

	for (size_t i = 0; i < emitters->size(); i++)
	{
		if (emitters->at(i)->isActive)
		{
			pos = emitters->at(i)->getPositions();
			emitters->at(i)->getTexture()->bind(GL_TEXTURE0);
			particleCount = emitters->at(i)->getNrOfActiveParticles();
			glBufferData(GL_ARRAY_BUFFER, (sizeof(SendStruct)) * particleCount, &pos[0], GL_STATIC_DRAW);
			glDrawArraysInstanced(GL_POINTS, 0, (GLsizei)particleCount, 1);
		}
	}
	glEnableVertexAttribArray(0);
	this->shader->unUse();
}

void FloatingDamage::updateBuffer()
{
	bufferedLines.clear();
	for (int i = 0; i<lines.size(); i++)
		bufferedLines.push_back(lines[i]);
	lines.clear();
}

void FloatingDamage::print(const std::string &s, const float &baseX, const float &baseY, const float &scale, const glm::vec4 &color)
{
	fDamageLine line;
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
			if (line.numberOfCharacters >= FLOATING_MAX_NUMBER) // Create new line if current line is filled
			{
				lines.push_back(line);
				line.numberOfCharacters = 0;
			}

			fDamageVertex vert;

			vert.pos = glm::vec2(x, y);
			vert.UV = font->getUV(c);
			vert.width = (int)(font->getWidth(c) * line.scale);

			x += vert.width; // Update position for next vertex

			line.characters[line.numberOfCharacters] = vert;
			line.numberOfCharacters++;
		}
	}
	lines.push_back(line);
}