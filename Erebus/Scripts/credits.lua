local screenImages = {}
local imageTextures = {}
local verticalOffset = 0
local scrollSpeed = 60
local ScrollingTextX = 332
local CreditsHeight = 4600

function LoadCredits()
	screenImages.background = UI.load(0, 0, 1280, 720)
	screenImages.credits = UI.load(ScrollingTextX, 0, 640, 4600)
	screenImages.back = UI.load(32, 645, 200, 50)
end

function UnloadCredits()
end

function UpdateCredits(dt)
	DrawCredits()

	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()

		if UI.mousePick(screenImages.back, x,y) then
			Sound.Play("Effects/button.ogg", 2)
			gamestate.ChangeState(GAMESTATE_MAIN_MENU)
			UnloadGameplay()			
			Erebus.ShutdownNetwork()
		end
	end

	if Inputs.KeyReleased(Keys.Escape) or Inputs.KeyReleased(Keys.Space) or verticalOffset < -CreditsHeight then
		gamestate.ChangeState(GAMESTATE_MAIN_MENU)
		UnloadGameplay()
		Erebus.ShutdownNetwork()
	else
		verticalOffset = verticalOffset - dt * scrollSpeed
		UI.repos(screenImages.credits, ScrollingTextX, verticalOffset)
	end
end

function DrawCredits()
	UI.drawImage(screenImages.background, imageTextures.background)
	UI.drawImage(screenImages.credits, imageTextures.credits)
	UI.drawImage(screenImages.back, imageTextures.back)
end

function EnterCredits()
	Gear.QueueModels(false)
	CollisionHandler.Disable()
	Gear.CursorVisible(true)

	verticalOffset = 720

	imageTextures.background = Assets.LoadTexture("Textures/credits_background.dds")
	imageTextures.credits = Assets.LoadTexture("Textures/Credits.dds")
	imageTextures.back = Assets.LoadTexture("Textures/buttonReturn.dds")
end

function ExitCredits()
	Assets.UnloadTexture("Textures/credits_background.dds")
	Assets.UnloadTexture("Textures/Credits.dds")
	Assets.UnloadTexture("Textures/buttonReturn.dds")
end

return { Load = LoadCredits, Unload = UnloadCredits, Enter = EnterCredits, Exit = ExitCredits, Update = UpdateCredits }