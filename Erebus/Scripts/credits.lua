local screenImages = {}
local imageTextures = {}
local verticalOffset = 0

function LoadCredits()
	screenImages.background = UI.load(0, 0, 1280, 720)
	screenImages.credits = UI.load(0, 720, 1280, 720)
	screenImages.back = UI.load(32, 650, 350, 60)
end

function UnloadCredits()
end

function UpdateCredits(dt)
	DrawCredits()

	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()

		if UI.mousePick(screenImages.back, x,y) then
			Sound.Play("Effects/button.wav", 2)
			gamestate.ChangeState(GAMESTATE_MAIN_MENU)
		end
	end

	if Inputs.KeyReleased(Keys.Escape) or Inputs.KeyReleased(Keys.Space) or verticalOffset < -720 then
		gamestate.ChangeState(GAMESTATE_MAIN_MENU)
	else
		verticalOffset = verticalOffset - dt*15
		UI.repos(screenImages.credits, 0, verticalOffset)
	end
end

function DrawCredits()
	UI.drawImage(screenImages.background, imageTextures.background)
	UI.drawImage(screenImages.credits, imageTextures.credits)
	UI.drawImage(screenImages.back, imageTextures.back)
end

function EnterCredits()
	verticalOffset = 720

	imageTextures.background = Assets.LoadTexture("Textures/menuBackground.dds")
	imageTextures.credits = Assets.LoadTexture("Textures/menuBackground.dds")
	imageTextures.back = Assets.LoadTexture("Textures/buttonReturn.dds")
end

function ExitCredits()
	Assets.UnloadTexture("Textures/menuBackground.dds")
	Assets.UnloadTexture("Textures/menuBackground.dds")
	Assets.UnloadTexture("Textures/buttonReturn.dds")
end

return { Load = LoadCredits, Unload = UnloadCredits, Enter = EnterCredits, Exit = ExitCredits, Update = UpdateCredits }