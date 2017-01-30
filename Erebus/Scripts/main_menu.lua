function LoadMainMenu()
	--dofile( "Scripts/HUD.lua" )
end

function UnloadMainMenu()
end

function UpdateMainMenu(dt)
	Gear.QueueModels(false)
	CollisionHandler.Disable()


	if Inputs.KeyPressed("W") then
		gamestate.currentState = GAMESTATE_GAMEPLAY
	end
end

return { Update = UpdateMainMenu }