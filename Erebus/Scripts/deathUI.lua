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
	imageTextures["deathMsg"] = Assets.LoadTexture("Textures/dead.png");
	imageTextures["continue"] = Assets.LoadTexture("Textures/buttonContinue.png");
	imageTextures["exit"] = Assets.LoadTexture("Textures/buttonExit.png");

	screenImages["deathMsg"] = UI.load(465, 100, 350, 60);
	screenImages["continue"] = UI.load(465, 240, 350, 60);
	screenImages["exit"] = UI.load(465, 310, 350, 60);
end

function UnloadDeathUI()

end

function UpdateDeathUI(dt)
	DrawDeathUI()
	if timer < DEATH_MESSAGE_TIME then
		timer = timer + dt
		currentSizeX = currentSizeX + (DEATH_MESSAGE_MULTIPLY * dt)
		currentSizeY = currentSizeY + ((DEATH_MESSAGE_MULTIPLY) * dt)

		currentPosX = currentPosX - (DEATH_MESSAGE_MULTIPLY * dt)
		currentPosY = currentPosY - (DEATH_MESSAGE_MULTIPLY * dt)

		UI.resize(screenImages["deathMsg"], currentSizeX, currentSizeY)
		UI.repos(screenImages["deathMsg"], currentPosX, currentPosY)
	end

	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()
		if UI.mousePick(screenImages["continue"], x,y) then
			gamestate.ChangeState(GAMESTATE_MAIN_MENU)
		end

		if UI.mousePick(screenImages["exit"], x,y) then
			Erebus.Running(false)
		end
	end
end

function DrawDeathUI()
	UI.drawImage(screenImages["deathMsg"], imageTextures["deathMsg"]);

	if(timer >= DEATH_MESSAGE_TIME) then
		UI.drawImage(screenImages["continue"], imageTextures["continue"]);
		UI.drawImage(screenImages["exit"], imageTextures["exit"]);
	end
end

return { Load = LoadDeathUI, Unload = UnloadDeathUI, Update = UpdateDeathUI }