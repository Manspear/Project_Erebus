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

	Menu(Gear::GearEngine * inEngine, Importer::Assets & assets);

	~Menu();

	enum GameState Update(Inputs& inputs);

	void Draw();
};