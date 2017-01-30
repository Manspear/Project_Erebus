local screenImages = {}
local imageTextures = {}

local playerHealthCurrent = 100;
local healthBarLength = 470;
local spellHeight = 64;

function LoadHUD()
	imageTextures["healthBackground"] = Assets.LoadTexture("Textures/HealthBackground.png");
	imageTextures["healthBar"] = Assets.LoadTexture("Textures/HealthBar.png");
	imageTextures["cooldown"] = Assets.LoadTexture("Textures/cooldown.png");
	imageTextures["number1"] = Assets.LoadTexture("Textures/spell1.png");
	imageTextures["number2"] = Assets.LoadTexture("Textures/spell2.png");
	imageTextures["number3"] = Assets.LoadTexture("Textures/spell3.png")

	screenImages["healthBackground"] = UI.load(371, 680, 538, 32);
	screenImages["healthBar"] = UI.load(405, 686, 470, 2);

	screenImages["cooldownSpell1"] = UI.load(375, 646, 32, 32);
	screenImages["cooldownSpell1"] = UI.load(410, 646, 32, 32);
	screenImages["cooldownSpell1"] = UI.load(445, 646, 32, 32);

	screenImages["numberSpell1"] = UI.load(375, 646, 32, 32);
	screenImages["numberSpell2"] = UI.load(410, 646, 32, 32);
	screenImages["numberSpell3"] = UI.load(445, 646, 32, 32);
	
end

function UnloadHUD()

end

function UpdateHUD(dt)

	if playerHealthCurrent > player.health then
	
		playerHealthCurrent  = playerHealthCurrent - (50 * dt);

		if playerHealthCurrent < 0 then
		
			playerHealthCurrent = 0;
		end
	end

	a = (playerHealthCurrent * healthBarLength) / 100.0;

	UI.resize(screenImages["healthBar"], a, 20)

	DrawHUD()

end

function DrawHUD()
	UI.drawImage(screenImages["healthBackground"], imageTextures["healthBackground"]);
	UI.drawImage(screenImages["healthBar"], imageTextures["healthBar"]);

	UI.drawImage(screenImages["numberSpell1"], player.spells[1].hudtexture)
	UI.drawImage(screenImages["numberSpell2"], player.spells[2].hudtexture);
	UI.drawImage(screenImages["numberSpell3"], player.spells[3].hudtexture);

	UI.drawImage(screenImages["numberSpell1"], imageTextures["number1"]);
	UI.drawImage(screenImages["numberSpell2"], imageTextures["number2"]);
	UI.drawImage(screenImages["numberSpell3"], imageTextures["number3"]);
end

return { Load = LoadHUD, Unload = UnloadHUD, Update = UpdateHUD }