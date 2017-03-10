#include "FloatingDamage.h"
#include "ImageAsset.h"
#include "Assets.h"


FloatingDamage::FloatingDamage()
{
	//randoms between -.5 / .5
	for (size_t i = 0; i < RANDOM_NUMBER_TOTAL; i++)
	{
		xOffsetRandom[i] = (((float)((rand() % 100) - 50)) / 100.f) * 2.f;
		yOffsetRandom[i] = (((float)((rand() % 100))) / 125.f);
		damageRandom[i] = (((float)((rand() % 100))) / 1000) + 0.95f;
	}

	currentOffset = 0;

	font = nullptr;
	shader = nullptr;
	VAO = 0;
	VBO = 0;

	diffColors[eDamageTypes::FIRE] = glm::vec4(1, 0, 0, baseAlpha);
	diffColors[eDamageTypes::GRASS] = glm::vec4(20/255.0, 109/255.0, 27/255.0, baseAlpha);
	diffColors[eDamageTypes::COLD] = glm::vec4(0, 0, 1, baseAlpha);
	diffColors[eDamageTypes::NEUTRAL] = glm::vec4(1, 1, 1, baseAlpha);
	diffColors[eDamageTypes::HEAL] = glm::vec4(0, 1, 0, baseAlpha);
}


FloatingDamage::~FloatingDamage()
{
	delete shader;
}

void FloatingDamage::setFont(Importer::FontAsset * font)
{
	this->font = font;
	this->font->getTexture()->setMinimizeFilter(GL_NEAREST);
	this->font->getTexture()->setMagnifyFilter(GL_NEAREST);
}

void FloatingDamage::init(int screenWidth, int screenHeight)
{
	shader = new ShaderProgram(shaderBaseType::VERTEX_GEOMETRY_FRAGMENT, "floatDamage");
	shader->use();
	glGenVertexArrays(1, &VAO);
	glGenBuffers(1, &VBO);
	shader->addUniform("projectionMatrix");
	shader->addUniform("viewMatrix");
	//shader->setUniform(glm::ortho(0.0f, (float)screenWidth, (float)screenHeight, 0.0f), "projectionMatrix");
	glBindVertexArray(VAO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);

	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(fDamageSomeData), (GLvoid*)0);						//Vec3 Pos
	glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, sizeof(fDamageSomeData), (GLvoid*)(sizeof(float) * 3));	//Vec4 UV
	glVertexAttribPointer(2, 4, GL_FLOAT, GL_FALSE, sizeof(fDamageSomeData), (GLvoid*)(sizeof(float) * 7));
	glVertexAttribPointer(3, 4, GL_FLOAT, GL_FALSE, sizeof(fDamageSomeData), (GLvoid*)(sizeof(float) * 11));	//float width & index (attributes)
	
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
	shader->unUse();
}

void FloatingDamage::draw(Camera* camera)
{
	if (dataToSendYeah.size() > 0)
	{
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

		glBufferData(GL_ARRAY_BUFFER, sizeof(fDamageSomeData) * dataToSendYeah.size(), &dataToSendYeah[0], GL_STATIC_DRAW);

		glDrawArrays(GL_POINTS, 0, dataToSendYeah.size());

		glEnable(GL_DEPTH_TEST);
		glDisable(GL_BLEND);

		glBindVertexArray(0);

		shader->unUse();
	}
	
}

void FloatingDamage::updateBuffer()
{
	bufferedLines.clear();
	for (int i = 0; i<lines.size(); i++)
		bufferedLines.push_back(lines[i]);
	lines.clear();
}

void FloatingDamage::addDamage(float damage, int damageType, glm::vec3 positionOverHead)
{
	damage *= baseDamage/30 * (damageRandom[currentOffset]);
	if (damage < 1)
		damage = baseDamage / 30 * (damageRandom[currentOffset]);;
	positionOverHead.x += xOffsetRandom[currentOffset];
	positionOverHead.y += yOffsetRandom[currentOffset];
	positionOverHead.z += xOffsetRandom[currentOffset];
	float scale = minScale + glm::min(pow(damage / baseDamage, 2), maxScale);
	print(std::to_string((int)damage),
		scale,
		this->diffColors[damageType],
		positionOverHead);

	currentOffset++;
	if (currentOffset >= RANDOM_NUMBER_TOTAL-1)
		currentOffset = 0;


}

fDamageVertex FloatingDamage::printDamage(const std::string & s, const float & scale, const glm::vec4 & color, glm::vec3 worldPos)
{
	return fDamageVertex();
}

void FloatingDamage::Update(const float & dt)
{
	for (size_t i = 0; i < this->dataToSendYeah.size();)
	{
		dataToSendYeah[i].data.pos.y += (dt * this->upSpeed);
		dataToSendYeah[i].lifetime -= dt;

		if (dataToSendYeah[i].lifetime <= this->maxLifeTime / 2) {
			float amount =  dataToSendYeah[i].lifetime / (this->maxLifeTime / 2);
			dataToSendYeah[i].data.color.a = this->baseAlpha * amount;
		}

		if (dataToSendYeah[i].lifetime <= 0)
			dataToSendYeah.erase(dataToSendYeah.begin() + i);
		else
			i++;
	}
}

void FloatingDamage::print(const std::string &s, const float &scale, const glm::vec4 &color, glm::vec3 worldPos)
{

	int index = 0;
	
	for (auto c : s)
	{
		fDamageSomeData floatingContainer;
		
		fDamageVertex vert;

		vert.pos = worldPos;
		vert.UV = font->getUV(c);
		float ratioX = (float)font->getWidth(c) / (float)font->getInfo()->size;
		float ratioY = (float)font->getInfo()->size / (float)font->getWidth(c);
		vert.attributes.x = ratioX * scale;// (int)(font->getWidth(c) * scale);
		vert.attributes.w = ratioY*scale;
		vert.attributes.y = index;
		vert.attributes.z = s.size();
		vert.color = color;
		
		floatingContainer.data = vert;
		floatingContainer.lifetime = maxLifeTime;

		this->dataToSendYeah.push_back(floatingContainer);

		index++;
	}
}