DEATH_MESSAGE_TIME = 0.5
DEATH_MESSAGE_MULTIPLY = 80

local screenImages = {}
local imageTextures = {}

function LoadWinUI()
	imageTextures["continue"] = Assets.LoadTexture("Textures/buttonContinue.dds");
	imageTextures["exit"] = Assets.LoadTexture("Textures/buttonExit.dds");

	screenImages["continue"] = UI.load(465, 240, 350, 60);
	screenImages["exit"] = UI.load(465, 310, 350, 60);
end

function UnloadWinUI()
	Assets.UnloadTexture( "Textures/buttonContinue.dds" )
	Assets.UnloadTexture( "Textures/buttonExit.dds" )

	screenImages = {}
	imageTextures = {}
end

function UpdateWinUI(dt)
	DrawWinUI()

	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()
		if UI.mousePick(screenImages["continue"], x,y) then
			Network.SendEndEventPacket(1) -- quit to menu event
			Sound.Play("Effects/button.wav", 2)
			--gamestate.ChangeState(GAMESTATE_MAIN_MENU)
			gamestate.ChangeState(GAMESTATE_CREDITS)
			Erebus.ShutdownNetwork()

			UnloadGameplay()
		end

		if UI.mousePick(screenImages["exit"], x,y) then
			Sound.Play("Effects/button.wav", 2)
			Erebus.Running(false)
		end
	end
end

function DrawWinUI()
	Gear.Print("YOU WIN" , 465, 100)

	UI.drawImage(screenImages["continue"], imageTextures["continue"]);
	UI.drawImage(screenImages["exit"], imageTextures["exit"]);
end

return { Load = LoadWinUI, Unload = UnloadWinUI, Update = UpdateWinUI }