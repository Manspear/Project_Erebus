local screenImages = {}
local imageTextures = {}

function LoadPauseMenuUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.dds");
	imageTextures["return"] = Assets.LoadTexture("Textures/buttonReturn.dds");
	imageTextures["options"] = Assets.LoadTexture("Textures/buttonOptions.dds");
	imageTextures["exit"] = Assets.LoadTexture("Textures/buttonExit.dds");

	screenImages["background"] = UI.load(0, 0, 1280, 720);
	screenImages["return"] = UI.load(465, 240, 350, 60);
	screenImages["options"] = UI.load(465, 310, 350, 60);
	screenImages["exit"] = UI.load(465, 380, 350, 60);

end

function UnloadPauseMenuUI()

end

function UpdatePauseMenuUI(dt)

	DrawPauseMenuUI()
	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()
		if UI.mousePick(screenImages["return"], x,y) then
			Sound.Play("Effects/button.ogg", 2)
			gamestate.ChangeState(GAMESTATE_GAMEPLAY)
		end

		if UI.mousePick(screenImages["options"], x,y) then
			Sound.Play("Effects/button.ogg", 2)
			OPTIONS_RETURN_STATE = GAMESTATE_PAUSEMENU
			gamestate.ChangeState(GAMESTATE_OPTIONS)
		end

		if UI.mousePick(screenImages["exit"], x,y) then
			Network.SendEndEventPacket(1) -- quit to menu event
			Sound.Play("Effects/button.ogg", 2)
			gamestate.ChangeState(GAMESTATE_MAIN_MENU)
			UnloadGameplay()
			Erebus.ShutdownNetwork()
		end
	end
end

function DrawPauseMenuUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
	UI.drawImage(screenImages["return"], imageTextures["return"]);
	UI.drawImage(screenImages["options"], imageTextures["options"]);
	UI.drawImage(screenImages["exit"], imageTextures["exit"]);
end

return { Load = LoadPauseMenuUI, Unload = UnloadPauseMenuUI, Update = UpdatePauseMenuUI }