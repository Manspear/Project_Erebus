#pragma once

#include "FontAsset.h"
#include<map>

#define loop(i, n) for(int i = 0; i < n; i++)

class TextRenderer
{
public:


private:
	Importer::FontAsset* font;
	std::map<GLchar, glm::vec4> characters;

	void generate()
	{
		uint16_t width, height;
		uint16_t posX, posY;
		glm::vec4 uv;

		uint8_t size = font->getInfo()->size;
		uint8_t padX = font->getInfo()->paddingx;
		uint8_t padY = font->getInfo()->paddingy;
		uint8_t shadX = font->getInfo()->shadowx;
		uint8_t shadY = font->getInfo()->shadowy;
		
		width = 0;
		height = 0;
		posX = 0;
		posY = 0;
		
		loop(c, 128)
		{
			float minU;
			float minV;
			float maxU;
			float maxV;

			



			glm::vec4 uv = glm::vec4(minU, minV, maxU, maxV);
			characters.insert(std::pair<GLchar, glm::vec4>(c, uv));
		}
	}
};

