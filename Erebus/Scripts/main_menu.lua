function LoadMainMenu()
	--dofile( "Scripts/HUD.lua" )
end

function UnloadMainMenu()
end

function UpdateMainMenu(dt)
	if Inputs.KeyPressed("W") then
		gamestate.ChangeState(GAMESTATE_GAMEPLAY)
	end
end

function EnterMainMenu()
	Gear.QueueModels(false)
	CollisionHandler.Disable()
	Gear.CursorVisible(true)
end

function ExitMainMenu()
end

return { Load = LoadMainMenu, Unload = UnloadMainMenu, Update = UpdateMainMenu, Enter = EnterMainMenu, Exit = ExitMainMenu }