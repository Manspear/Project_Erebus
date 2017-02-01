local screenImages = {}
local imageTextures = {}
local isFullscreen

function LoadOptionsUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.png");
	imageTextures["FullscreenOff"] = Assets.LoadTexture("Textures/buttonFullscreenOff.png");
	imageTextures["FullscreenOn"] = Assets.LoadTexture("Textures/buttonFullscreenOn.png");
	imageTextures["back"] = Assets.LoadTexture("Textures/buttonReturn.png");

	screenImages["background"] = UI.load(0, 0, 1280, 720);
	screenImages["fullscreen"] = UI.load(465, 240, 350, 60);
	screenImages["back"] = UI.load(465, 310, 350, 60);

	isFullscreen = false
end

function UnloadOptionsUI()

end

function UpdateOptionsUI(dt)

	DrawOptionsUI()
	x,y = Inputs.GetMousePos()
	if UI.mousePick(screenImages["fullscreen"], x,y) then
		if Inputs.ButtonReleased(Buttons.Left) then
			if isFullscreen then
				isFullscreen = false
			else
				isFullscreen = true
			end
			Gear.Fullscreen(isFullscreen);
		end
	end

	x,y = Inputs.GetMousePos()
	if UI.mousePick(screenImages["back"], x,y) then
		if Inputs.ButtonReleased(Buttons.Left) then
			gamestate.ChangeState(GAMESTATE_MAIN_MENU)
		end
	end
end

function DrawOptionsUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
	if isFullscreen then
		UI.drawImage(screenImages["fullscreen"], imageTextures["FullscreenOn"]);
	else
		UI.drawImage(screenImages["fullscreen"], imageTextures["FullscreenOff"]);
	end
	UI.drawImage(screenImages["back"], imageTextures["back"]);
end

return { Load = LoadOptionsUI, Unload = UnloadOptionsUI, Update = UpdateOptionsUI }