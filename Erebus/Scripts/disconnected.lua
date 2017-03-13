local screenImages = {}
local imageTextures = {}
local tempLight

function LoadDisconnected()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.dds")
	imageTextures["hostLeft"] = Assets.LoadTexture("Textures/buttonHostLeft.dds")
	imageTextures["clientLeft"] = Assets.LoadTexture("Textures/buttonClientLeft.dds")
	imageTextures["return"] = Assets.LoadTexture("Textures/buttonReturn.dds")

	screenImages["background"] = UI.load(0, 0, 1280, 720)
	screenImages["left"] = UI.load(284,232,700,220)
	screenImages["return"] = UI.load(465, 450, 350, 60)

end

function UnloadDisconnected()

end

function UpdateDisconnected(dt)
	DrawDisconnected()

	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()
		if UI.mousePick(screenImages["return"], x,y) then
			Sound.Play("Effects/button.ogg", 2)
			gamestate.ChangeState(GAMESTATE_MAIN_MENU)
		end
	end
end

function DrawDisconnected()
	UI.drawImage(screenImages["background"], imageTextures["background"])
	if Network.GetNetworkHost() then
		UI.drawImage(screenImages["left"], imageTextures["clientLeft"])
	else
		UI.drawImage(screenImages["left"], imageTextures["hostLeft"])
	end
	UI.drawImage(screenImages["return"], imageTextures["return"])
end

function EnterDisconnected()
	Erebus.EnableControls(false)
	player.controlsEnabled = false
	Gear.QueueModels(false)
	Gear.CursorVisible(true)
end

function ExitDisconnected()
end

return { Load = LoadDisconnected, Unload = UnloadDisconnected, Enter = EnterDisconnected, Exit = ExitDisconnected, Update = UpdateDisconnected }