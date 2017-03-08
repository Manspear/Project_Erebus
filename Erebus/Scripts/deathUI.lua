DEATH_MESSAGE_TIME = 0.5
DEATH_MESSAGE_MULTIPLY = 80

local screenImages = {}
local imageTextures = {}

local timer = 0
local currentPosX = 465
local currentPosY = 100
local currentSizeX = 350
local currentSizeY = 60


function LoadDeathUI()
	imageTextures["loseMsg"] = Assets.LoadTexture("Textures/lose.dds");
	imageTextures["winMsg"] = Assets.LoadTexture("Textures/win.dds");
	imageTextures["continue"] = Assets.LoadTexture("Textures/buttonContinue.dds");
	imageTextures["exit"] = Assets.LoadTexture("Textures/buttonExit.dds");

	screenImages["loseMsg"] = UI.load(465, 100, 350, 60);
	screenImages["winMsg"] = UI.load(465, 100, 350, 60);
	screenImages["continue"] = UI.load(465, 240, 350, 60);
	screenImages["exit"] = UI.load(465, 310, 350, 60);
end

function UnloadDeathUI()
	Assets.UnloadTexture( "Textures/lose.dds" )
	Assets.UnloadTexture( "Textures/win.dds" )
	Assets.UnloadTexture( "Textures/buttonContinue.dds" )
	Assets.UnloadTexture( "Textures/buttonExit.dds" )

	screenImages = {}
	imageTextures = {}
end

function UpdateDeathUI(dt)
	DrawDeathUI()
	if timer < DEATH_MESSAGE_TIME then
		timer = timer + dt
		currentSizeX = currentSizeX + (DEATH_MESSAGE_MULTIPLY * dt)
		currentSizeY = currentSizeY + ((DEATH_MESSAGE_MULTIPLY) * dt)

		currentPosX = currentPosX - (DEATH_MESSAGE_MULTIPLY * dt)
		currentPosY = currentPosY - (DEATH_MESSAGE_MULTIPLY * dt)

		UI.resize(screenImages["loseMsg"], currentSizeX, currentSizeY)
		UI.repos(screenImages["loseMsg"], currentPosX, currentPosY)
	end

	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()
		if UI.mousePick(screenImages["continue"], x,y) then
			Sound.Play("Effects/button.wav", 2)
			gamestate.ChangeState(GAMESTATE_MAIN_MENU)
			Erebus.ShutdownNetwork()
			UnloadGameplay()
		end

		if UI.mousePick(screenImages["exit"], x,y) then
			Sound.Play("Effects/button.wav", 2)
			Erebus.Running(false)
		end
	end
end

function DrawDeathUI()
	if(not BOSS_DEAD) then
		UI.drawImage(screenImages["loseMsg"], imageTextures["loseMsg"]);
	else
		UI.drawImage(screenImages["winMsg"], imageTextures["winMsg"]);
	end

	if(timer >= DEATH_MESSAGE_TIME) then
		UI.drawImage(screenImages["continue"], imageTextures["continue"]);
		UI.drawImage(screenImages["exit"], imageTextures["exit"]);
	end
end

return { Load = LoadDeathUI, Unload = UnloadDeathUI, Update = UpdateDeathUI }