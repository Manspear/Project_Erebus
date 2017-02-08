local screenImages = {}
local imageTextures = {}
local tempLight

function LoadMenuUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.png");
	imageTextures["play"] = Assets.LoadTexture("Textures/button.png");
	imageTextures["host"] = Assets.LoadTexture("Textures/buttonHost.png");
	imageTextures["connect"] = Assets.LoadTexture("Textures/buttonConnect.png");
	imageTextures["options"] = Assets.LoadTexture("Textures/buttonOptions.png");
	imageTextures["exit"] = Assets.LoadTexture("Textures/buttonExit.png");

	screenImages["background"] = UI.load(0, 0, 1280, 720);
	screenImages["play"] = UI.load(465, 240, 350, 60);
	screenImages["host"] = UI.load(465, 310, 350, 60);
	screenImages["connect"] = UI.load(465, 380, 350, 60);
	screenImages["options"] = UI.load(465, 450, 350, 60);
	screenImages["exit"] = UI.load(465, 520, 350, 60);

end

function UnloadMenuUI()

end

function UpdateMenuUI(dt)

	DrawMenuUI()
	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()
		if UI.mousePick(screenImages["play"], x,y) then
			gamestate.ChangeState(GAMESTATE_GAMEPLAY)
		end

		if UI.mousePick(screenImages["host"], x,y) then
			Erebus.InitNetworkHost()
			gamestate.ChangeState(GAMESTATE_IPHOST)
		end

		if UI.mousePick(screenImages["connect"], x,y) then
			gamestate.ChangeState(GAMESTATE_IPCONNECT)
		end

		if UI.mousePick(screenImages["options"], x,y) then
			OPTIONS_RETURN_STATE = GAMESTATE_MAIN_MENU
			gamestate.ChangeState(GAMESTATE_OPTIONS)
		end
		if UI.mousePick(screenImages["exit"], x,y) then
			Erebus.Running(false)
		end
	end
end

function DrawMenuUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
	UI.drawImage(screenImages["play"], imageTextures["play"]);
	UI.drawImage(screenImages["host"], imageTextures["host"]);
	UI.drawImage(screenImages["connect"], imageTextures["connect"]);
	UI.drawImage(screenImages["options"], imageTextures["options"]);
	UI.drawImage(screenImages["exit"], imageTextures["exit"]);
end

return { Load = LoadMenuUI, Unload = UnloadMenuUI, Update = UpdateMenuUI }