#pragma once
#include"BaseIncludes.h"
#include "Gear.h"

enum GameState
{
	MenuState,
	GameplayState
};

class Menu
{
private:
	Gear::GearEngine * engine;

	sScreenQuad background;
	Importer::TextureAsset* menuBackground;

	sScreenQuad button;
	Importer::TextureAsset* buttonTex;

public:

	Menu(Gear::GearEngine * inEngine, Importer::Assets & assets)
	{
		engine = inEngine;

		background = sScreenQuad(glm::vec2(0, 0), WINDOW_WIDTH, WINDOW_HEIGHT);
		menuBackground = assets.load<TextureAsset>("Textures/menuBackground.png");

		button = sScreenQuad(glm::vec2(300, 300), 300, 140);
		buttonTex = assets.load<TextureAsset>("Textures/button.png");

	}

	~Menu()
	{

	}

	enum GameState Update(Inputs& inputs)
	{
		
		if (button.mousePick(inputs.getMousePos().x, inputs.getMousePos().y) && inputs.buttonReleasedThisFrame(0))
		{
			
			return  GameplayState;
		}
		
		return MenuState;
	}

	void Draw()
	{
		engine->addScreenQuad(background, menuBackground);
		engine->addScreenQuad(button, buttonTex);
	}
};