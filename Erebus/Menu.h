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

	sScreenImage background;
	Importer::TextureAsset* menuBackground;

	sScreenImage button;
	Importer::TextureAsset* buttonTex;

public:

	Menu(Gear::GearEngine * inEngine, Importer::Assets & assets);

	~Menu();

	enum GameState Update(Inputs& inputs);

	void Draw();
};