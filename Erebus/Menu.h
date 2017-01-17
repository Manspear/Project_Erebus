#pragma once
#include"BaseIncludes.h"
#include "Gear.h"

enum GameState
{
	MenuState,
	GameplayState,
	HostGameplayState,
	ClientGameplayState
};

class Menu
{
private:
	Gear::GearEngine * engine;

	sScreenImage background;
	Importer::TextureAsset* menuBackground;

	sScreenImage button;
	Importer::TextureAsset* buttonTex;

	sScreenImage hostButton;
	Importer::TextureAsset* hostButtonTex;
	sScreenImage clientButton;
	Importer::TextureAsset* clientButtonTex;

public:

	Menu(Gear::GearEngine * inEngine, Importer::Assets & assets);

	~Menu();

	enum GameState Update(Inputs& inputs);

	void Draw();
};