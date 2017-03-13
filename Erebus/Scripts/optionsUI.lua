OPTIONS_RETURN_STATE = 1
local screenImages = {}
local imageTextures = {}

function LoadOptionsUI()
	imageTextures["background"]		=	Assets.LoadTexture("Textures/menuBackground.dds");
	imageTextures["FullscreenOff"]	=	Assets.LoadTexture("Textures/buttonFullscreenOff.dds");
	imageTextures["FullscreenOn"]	=	Assets.LoadTexture("Textures/buttonFullscreenOn.dds");

	imageTextures["debugOff"]	=	Assets.LoadTexture("Textures/buttonDebugOff.dds");
	imageTextures["debugOn"]	=	Assets.LoadTexture("Textures/buttonDebugOn.dds");
	imageTextures["shadowsOff"] =	Assets.LoadTexture("Textures/buttonShadowsOff.dds");
	imageTextures["shadowsOn"]	=	Assets.LoadTexture("Textures/buttonShadowsOn.dds");
	imageTextures["shadowBlurOff"] =	Assets.LoadTexture("Textures/buttonShadowBlurOff.dds");
	imageTextures["shadowBlurOn"]	=	Assets.LoadTexture("Textures/buttonShadowBlurOn.dds");
	imageTextures["back"]		=	Assets.LoadTexture("Textures/buttonReturn.dds");
	imageTextures["keybinding"] =	Assets.LoadTexture("Textures/buttonKeybinding.dds");
	imageTextures["play"]		=	Assets.LoadTexture("Textures/buttonDebugMode.dds");

	screenImages["background"]	=	UI.load(0, 0, 1280, 720);
	screenImages["play"]		=	UI.load(10, 650, 350, 60);
	screenImages["fullscreen"]	=	UI.load(465, 240, 350, 60);
	screenImages["debug"]		=	UI.load(465, 310, 350, 60);
	screenImages["shadows"]		= UI.load(465, 380, 350, 60);
	screenImages["shadowBlur"]	= UI.load(465, 450, 350, 60);
	screenImages["keybinding"]	= UI.load(465, 520, 350, 60);
	screenImages["back"]		= UI.load(465, 590, 350, 60);
end

function UnloadOptionsUI()

end

function UpdateOptionsUI(dt)

	DrawOptionsUI()
	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()
		if UI.mousePick(screenImages["play"], x,y) then
			Sound.Play("Effects/button.ogg", 2)
			gamestate.ChangeState(GAMESTATE_GAMEPLAY)
		end

		if UI.mousePick(screenImages["fullscreen"], x,y) then
			Sound.Play("Effects/button.ogg", 2)
			if SETTING_FULLSCREEN then
				SETTING_FULLSCREEN = false
			else
				SETTING_FULLSCREEN = true
			end
			Gear.Fullscreen(SETTING_FULLSCREEN);
		end

		if UI.mousePick(screenImages["debug"], x,y) then
			Sound.Play("Effects/button.ogg", 2)
			if SETTING_DEBUG then
				SETTING_DEBUG = false
			else
				SETTING_DEBUG = true
			end
		end

		if UI.mousePick(screenImages["shadows"], x,y) then
			Sound.Play("Effects/button.ogg", 2)
			if SETTING_SHADOW then
				SETTING_SHADOW = false
			else
				SETTING_SHADOW = true
			end
			Sky.Shadows(SETTING_SHADOW)
		end

		if UI.mousePick(screenImages["shadowBlur"], x,y) then
			Sound.Play("Effects/button.ogg", 2)
			if SETTING_BLURRING then
				SETTING_BLURRING = false
			else
				SETTING_BLURRING = true
			end
			Sky.ShadowBlur(SETTING_BLURRING)
		end

		if UI.mousePick(screenImages["back"], x,y) then
			Sound.Play("Effects/button.ogg", 2)
			gamestate.ChangeState(OPTIONS_RETURN_STATE)
		end

		if UI.mousePick(screenImages["keybinding"], x,y) then
			Sound.Play("Effects/button.ogg", 2)
			gamestate.ChangeState(GAMESTATE_KEYBINDING)
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

	if SETTING_SHADOW then
		UI.drawImage(screenImages["shadows"], imageTextures["shadowsOn"]);
	else
		UI.drawImage(screenImages["shadows"], imageTextures["shadowsOff"]);
	end

	if SETTING_BLURRING then
		UI.drawImage(screenImages["shadowBlur"], imageTextures["shadowBlurOn"]);
	else
		UI.drawImage(screenImages["shadowBlur"], imageTextures["shadowBlurOff"]);
	end

	UI.drawImage(screenImages["keybinding"], imageTextures["keybinding"]);
	UI.drawImage(screenImages["back"], imageTextures["back"]);
	UI.drawImage(screenImages["play"], imageTextures["play"]);
end

return { Load = LoadOptionsUI, Unload = UnloadOptionsUI, Update = UpdateOptionsUI }