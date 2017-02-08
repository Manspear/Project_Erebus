local screenImages = {}
local imageTextures = {}

function LoadiphostUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.png");
	screenImages["background"] = UI.load(0, 0, 1280, 720);
end

function UnloadiphostUI()
end

function UpdateiphostUI(dt)
	DrawiphostUI()
	
	Gear.Print("Waiting for connection", 465, 320)
	Gear.Print("press escape to exit", 465, 340)

	if Erebus.StartNetworkHost() then
		gamestate.ChangeState(GAMESTATE_GAMEPLAY)
	end

	if Inputs.KeyPressed(Keys.Escape) then
		gamestate.ChangeState(GAMESTATE_MAIN_MENU)
	end

end

function DrawiphostUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
end

return { Load = LoadiphostUI, Unload = UnloadiphostUI, Update = UpdateiphostUI }