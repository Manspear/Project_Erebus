OPTIONS_RETURN_STATE = 1
local screenImages = {}
local imageTextures = {}

function LoadOptionsUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.png");
	imageTextures["FullscreenOff"] = Assets.LoadTexture("Textures/buttonFullscreenOff.png");
	imageTextures["FullscreenOn"] = Assets.LoadTexture("Textures/buttonFullscreenOn.png");

	imageTextures["debugOff"] = Assets.LoadTexture("Textures/buttonDebugOff.png");
	imageTextures["debugOn"] = Assets.LoadTexture("Textures/buttonDebugOn.png");
	imageTextures["back"] = Assets.LoadTexture("Textures/buttonReturn.png");

	screenImages["background"] = UI.load(0, 0, 1280, 720);
	screenImages["fullscreen"] = UI.load(465, 240, 350, 60);
	screenImages["debug"] = UI.load(465, 310, 350, 60);
	screenImages["back"] = UI.load(465, 380, 350, 60);
end

function UnloadOptionsUI()

end

function UpdateOptionsUI(dt)

	DrawOptionsUI()
	x,y = Inputs.GetMousePos()
	if UI.mousePick(screenImages["fullscreen"], x,y) then
		if Inputs.ButtonReleased(Buttons.Left) then
			Sound.Play("Effects/button.wav", 2)
			if SETTING_FULLSCREEN then
				SETTING_FULLSCREEN = false
			else
				SETTING_FULLSCREEN = true
			end
			Gear.Fullscreen(SETTING_FULLSCREEN);
		end
	end

	if UI.mousePick(screenImages["debug"], x,y) then
		if Inputs.ButtonReleased(Buttons.Left) then
			Sound.Play("Effects/button.wav", 2)
			if SETTING_DEBUG then
				SETTING_DEBUG = false
			else
				SETTING_DEBUG = true
			end
		end
	end

	if UI.mousePick(screenImages["back"], x,y) then
		Sound.Play("Effects/button.wav", 2)
		if Inputs.ButtonReleased(Buttons.Left) then
			gamestate.ChangeState(OPTIONS_RETURN_STATE)
		end
	end
end

function DrawOptionsUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
	if SETTING_FULLSCREEN then
		UI.drawImage(screenImages["fullscreen"], imageTextures["FullscreenOn"]);
	else
		UI.drawImage(screenImages["fullscreen"], imageTextures["FullscreenOff"]);
	end

	if SETTING_DEBUG then
		UI.drawImage(screenImages["debug"], imageTextures["debugOn"]);
	else
		UI.drawImage(screenImages["debug"], imageTextures["debugOff"]);
	end

	UI.drawImage(screenImages["back"], imageTextures["back"]);
end

return { Load = LoadOptionsUI, Unload = UnloadOptionsUI, Update = UpdateOptionsUI }