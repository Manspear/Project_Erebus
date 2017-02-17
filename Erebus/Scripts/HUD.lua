SHOW_TUTORIAL_IMAGE = -1
SHOW_TUTORIAL_IMAGE2 = -1
local screenImages = {}
local imageTextures = {}
local tutorialImages = {}
local tutorialTexture = {}

local playerHealthCurrent = 100;
local healthBarLength = 470;
local spellHeight = 40;
local TutorialCounter = 0;
local TutorialCounter2 = 0;
local showHealthbar = true;

function LoadHUD()
	imageTextures["healthBackground"] = Assets.LoadTexture("Textures/HealthBackground.dds");
	imageTextures["healthBar"] = Assets.LoadTexture("Textures/HealthBar.dds");
	imageTextures["cooldown"] = Assets.LoadTexture("Textures/cooldown.dds");
	imageTextures["number1"] = Assets.LoadTexture("Textures/spell1.dds");
	imageTextures["number2"] = Assets.LoadTexture("Textures/spell2.dds");
	imageTextures["number3"] = Assets.LoadTexture("Textures/spell3.dds")
	imageTextures["select"] = Assets.LoadTexture("Textures/select.dds")
	imageTextures["crosshair"] = Assets.LoadTexture("Textures/crosshair.dds")

	--screenImages["crosshair"] = UI.load(620, 340, 40, 40);

	screenImages["healthBackground"] = UI.load(371, 680, 538, 32);
	screenImages["healthBar"] = UI.load(405, 686, 470, 2);

	screenImages["cooldownSpell1"] = UI.load(375, 678, 40, 40);
	screenImages["cooldownSpell2"] = UI.load(420, 678, 40, 40);
	screenImages["cooldownSpell3"] = UI.load(465, 678, 40, 40);

	screenImages[1] = UI.load(375, 638, 40, 40);
	screenImages[2] = UI.load(420, 638, 40, 40);
	screenImages[3] = UI.load(465, 638, 40, 40);

	
	tutorialTexture[1] = Assets.LoadTexture("Textures/TUTORIAL_PressLeftToFire.dds")
	tutorialTexture[2] = Assets.LoadTexture("Textures/TUTORIALChangeSpell.dds")
	tutorialTexture[3] = Assets.LoadTexture("Textures/TUTORIAL_DASH.dds")

	tutorialTexture[4] = Assets.LoadTexture("Textures/TUTORIALCharge1.dds")
	tutorialTexture[5] = Assets.LoadTexture("Textures/TUTORIALCharge2.dds")
	tutorialTexture[6] = Assets.LoadTexture("Textures/TUTORIALChargeFriend1.dds")
	tutorialTexture[7] = Assets.LoadTexture("Textures/TUTORIALChargeFriend2.dds")
	
	

end

function UnloadHUD()

end

function UpdateHUD(dt)

	if playerHealthCurrent > player.health then
		playerHealthCurrent = playerHealthCurrent - (50 * dt)
		if  playerHealthCurrent < player.health then
			playerHealthCurrent = player.health
		end
	elseif playerHealthCurrent < player.health then
		playerHealthCurrent = playerHealthCurrent + (50 * dt)
		if  playerHealthCurrent > player.health then
			playerHealthCurrent = player.health
		end
	end

	a = (playerHealthCurrent * healthBarLength) / 100.0;
	UI.resize(screenImages["healthBar"], a, 20)

	if player.spells[1].maxcooldown >= 0 then
		sizeY = (player.spells[1].cooldown * spellHeight) / player.spells[1].maxcooldown;
		if sizeY < 0 then
			sizeY = 0
		end
		UI.resize(screenImages["cooldownSpell1"], spellHeight, -sizeY)
	else
		UI.resize(screenImages["cooldownSpell1"], spellHeight, 0)
	end

	if player.spells[2].maxcooldown >= 0 then
		sizeY = (player.spells[2].cooldown * spellHeight) / player.spells[2].maxcooldown;
		if sizeY < 0 then
			sizeY = 0
		end
		UI.resize(screenImages["cooldownSpell2"], spellHeight, -sizeY)
	else
		UI.resize(screenImages["cooldownSpell2"], spellHeight, 0)
	end 

	if player.spells[3].maxcooldown >= 0 then
		sizeY = (player.spells[3].cooldown * spellHeight) / player.spells[3].maxcooldown;
		if sizeY < 0 then
			sizeY = 0
		end
		UI.resize(screenImages["cooldownSpell3"], spellHeight, -sizeY)
	else
		UI.resize(screenImages["cooldownSpell3"], spellHeight, 0)
	end

	if Inputs.KeyReleased("H") then
		showHealthbar = not showHealthbar
	end

	DrawHUD()

end

function DrawHUD()
	UI.drawImage(screenImages["healthBackground"], imageTextures["healthBackground"]);
	UI.drawImage(screenImages["healthBar"], imageTextures["healthBar"]);

	UI.drawImage(screenImages[1], player.spells[1].hudtexture)
	UI.drawImage(screenImages[2], player.spells[2].hudtexture);
	UI.drawImage(screenImages[3], player.spells[3].hudtexture);

	UI.drawImage(screenImages[player.currentSpell], imageTextures["select"]);

	UI.drawImage(screenImages["cooldownSpell1"], imageTextures["cooldown"]);
	UI.drawImage(screenImages["cooldownSpell2"], imageTextures["cooldown"]);
	UI.drawImage(screenImages["cooldownSpell3"], imageTextures["cooldown"]);

	UI.drawImage(screenImages[1], imageTextures["number1"]);
	UI.drawImage(screenImages[2], imageTextures["number2"]);
	UI.drawImage(screenImages[3], imageTextures["number3"]);

	if SHOW_TUTORIAL_IMAGE ~= -1 then
		UI.drawWorldImage(tutorialImages[SHOW_TUTORIAL_IMAGE], tutorialTexture[SHOW_TUTORIAL_IMAGE])
	end

	if SHOW_TUTORIAL_IMAGE2 ~= -1 then
		UI.drawWorldImage(tutorialImages[SHOW_TUTORIAL_IMAGE2], tutorialTexture[SHOW_TUTORIAL_IMAGE2])
	end

	if player.ping > 0 then
		UI.drawWorldImage(player.pingImage, player.pingTexture);
	end
	if player2.ping > 0 then
		UI.drawWorldImage(player2.pingImage, player2.pingTexture);
	end
	--UI.drawImage(screenImages["crosshair"], imageTextures["crosshair"]);
	if showHealthbar then 
		for i=1, #enemies do
			UI.drawWorldImage(enemies[i].healthbar,  imageTextures["healthBar"])
		end
	end
end

function showTutorialImage(x,y,z,dt)
	TutorialCounter = TutorialCounter + dt
	
	if TutorialCounter < 2  then
		index = 1
	elseif TutorialCounter < 4 then
		index = 2
	elseif TutorialCounter < 6 then
		index = 3
	else
		TutorialCounter = 0
		index = 1
	end

	tutorialImages[index] = UI.load(x, y, z, 5, 5)
	SHOW_TUTORIAL_IMAGE = index
end

function showTutorialImage2(x,y,z,dt)
	TutorialCounter2 = TutorialCounter2 + dt
	
	if TutorialCounter2 < 2  then
		index = 4
	elseif TutorialCounter2 < 4 then
		index = 5
	elseif TutorialCounter2 < 6 then
		index = 6
	elseif TutorialCounter2 < 8 then
		index = 7
	else
		TutorialCounter2 = 0
		index = 1
	end



	tutorialImages[index] = UI.load(x, y, z, 5, 5)
	SHOW_TUTORIAL_IMAGE2 = index
end


function hideTutorialImage()
	SHOW_TUTORIAL_IMAGE = -1
end



function hideTutorialImage2()
	SHOW_TUTORIAL_IMAGE2 = -1
end



return { Load = LoadHUD, Unload = UnloadHUD, Update = UpdateHUD }