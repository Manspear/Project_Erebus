local screenImages = {}
local imageTextures = {}

function LoadCredits()
	imageTextures.background = Assets.LoadTexture("Textures/menuBackground.dds")
	imageTextures.credits = Assets.LoadTexture("Textures/menuBackground.dds")
	imageTextures.back = Assets.LoadTexture("Textures/buttonReturn.dds")

	screenImages.background = UI.load(0, 0, 1280, 720)
	screenImages.credits = UI.load(0, 0, 1280, 720)
	screenImages.back = UI.load(465, 650, 350, 60)
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
end

function DrawCredits()
	UI.drawImage(screenImages.background, imageTextures.background)
	UI.drawImage(screenImages.credits, imageTextures.credits)
	UI.drawImage(screenImages.back, imageTextures.back)
end

function EnterCredits()
end

function ExitCredits()
end

return { Load = LoadCredits, Unload = UnloadCredits, Enter = EnterCredits, Exit = ExitCredits, Update = UpdateCredits }