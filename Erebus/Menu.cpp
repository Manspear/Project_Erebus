#include "Menu.h"

Menu::Menu(Gear::GearEngine * inEngine, Importer::Assets & assets)
{
	engine = inEngine;

	background = sScreenImage(glm::vec2(0, 0), WINDOW_WIDTH, WINDOW_HEIGHT);
	menuBackground = assets.load<TextureAsset>("Textures/menuBackground.png");

	button = sScreenImage(glm::vec2(300, 300), 350, 100);
	buttonTex = assets.load<TextureAsset>("Textures/button.png");

	hostButton = sScreenImage(glm::vec2(300, 500), 32, 32);
	hostButtonTex = assets.load<TextureAsset>("Textures/red.png");
	clientButton = sScreenImage(glm::vec2(350, 500), 32, 32);
	clientButtonTex = assets.load<TextureAsset>("Textures/green.dds");

}

Menu::~Menu()
{

}

enum GameState Menu::Update(Inputs& inputs)
{

	if (button.mousePick(inputs.getMousePos().x, inputs.getMousePos().y) && inputs.buttonReleasedThisFrame(0))
	{

		return  GameplayState;
	}
	else if (hostButton.mousePick(inputs.getMousePos().x, inputs.getMousePos().y) && inputs.buttonReleasedThisFrame(0))
	{

		return  HostGameplayState;
	}
	else if (clientButton.mousePick(inputs.getMousePos().x, inputs.getMousePos().y) && inputs.buttonReleasedThisFrame(0))
	{

		return  ClientGameplayState;
	}

	return MenuState;
}

void Menu::Draw()
{
	engine->showImage(background, menuBackground);
	engine->showImage(button, buttonTex);
	engine->showImage(hostButton, hostButtonTex);
	engine->showImage(clientButton, clientButtonTex);
}