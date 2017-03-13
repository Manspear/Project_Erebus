DEATH_MESSAGE_TIME = 0.5
DEATH_MESSAGE_MULTIPLY = 80

local screenImages = {}
local imageTextures = {}

function LoadWinUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.dds");
	imageTextures["return"] = Assets.LoadTexture("Textures/buttonExit.dds");

	screenImages["background"] = UI.load(0, 0, 1280, 720);
	screenImages["return"] = UI.load(465, 600, 350, 60);
end

function UnloadWinUI()
	Assets.UnloadTexture( "Textures/menuBackground.dds" )
	Assets.UnloadTexture( "Textures/buttonReturn.dds" )

	screenImages = {}
	imageTextures = {}
end

function UpdateWinUI(dt)
	DrawWinUI()

	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()
		if UI.mousePick(screenImages["return"], x,y) then
			Network.SendEndEventPacket(1) -- quit to menu event
			Sound.Play("Effects/button.ogg", 2)
			--gamestate.ChangeState(GAMESTATE_MAIN_MENU)
			gamestate.ChangeState(GAMESTATE_CREDITS)
			UnloadGameplay()
			Erebus.ShutdownNetwork()
		end
	end
end

function DrawWinUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
	UI.drawImage(screenImages["return"], imageTextures["return"]);
end

return { Load = LoadWinUI, Unload = UnloadWinUI, Update = UpdateWinUI }