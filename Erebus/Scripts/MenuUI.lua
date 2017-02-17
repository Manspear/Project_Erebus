local screenImages = {}
local imageTextures = {}
local tempLight

function LoadMenuUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.dds");
	imageTextures["play"] = Assets.LoadTexture("Textures/button.dds");
	imageTextures["network"] = Assets.LoadTexture("Textures/buttonNetwork.dds");
	imageTextures["options"] = Assets.LoadTexture("Textures/buttonOptions.dds");
	imageTextures["exit"] = Assets.LoadTexture("Textures/buttonExit.dds");

	screenImages["background"] = UI.load(0, 0, 1280, 720);
	screenImages["play"] = UI.load(465, 240, 350, 60);
	screenImages["network"] = UI.load(465, 310, 350, 60);
	screenImages["options"] = UI.load(465, 380, 350, 60);
	screenImages["exit"] = UI.load(465, 450, 350, 60);

end

function UnloadMenuUI()

end

function UpdateMenuUI(dt)

	DrawMenuUI()
	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()
		if UI.mousePick(screenImages["play"], x,y) then
			Sound.Play("Effects/button.wav", 2)
			gamestate.ChangeState(GAMESTATE_GAMEPLAY)
		end

		if UI.mousePick(screenImages["network"], x,y) then
			Sound.Play("Effects/button.wav", 2)
			gamestate.ChangeState(GAMESTATE_IPCONNECT)
		end

		if UI.mousePick(screenImages["options"], x,y) then
			Sound.Play("Effects/button.wav", 2)
			OPTIONS_RETURN_STATE = GAMESTATE_MAIN_MENU
			gamestate.ChangeState(GAMESTATE_OPTIONS)
		end
		if UI.mousePick(screenImages["exit"], x,y) then
			Sound.Play("Effects/button.wav", 2)
			Erebus.Running(false)
		end
	end
end

function DrawMenuUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
	UI.drawImage(screenImages["play"], imageTextures["play"]);
	UI.drawImage(screenImages["network"], imageTextures["network"]);
	UI.drawImage(screenImages["options"], imageTextures["options"]);
	UI.drawImage(screenImages["exit"], imageTextures["exit"]);
end

return { Load = LoadMenuUI, Unload = UnloadMenuUI, Update = UpdateMenuUI }