local scriptsMenu = {}
local scriptFilesMenu =
{
 "Scripts/winStateUI.lua"
}

function LoadWin()
	-- run scripts
	for i=1, #scriptFilesMenu do
		scriptsMenu[i] = dofile(scriptFilesMenu[i])
	end

	-- call their load function
	for key,value in pairs(scriptsMenu) do
		if value.Load then value.Load() end
	end
end

function UnloadWin()
end

function UpdateWin(dt)
	for key,value in pairs(scriptsMenu) do
		value.Update(dt)
	end
	if gamestate.states[GAMESTATE_GAMEPLAY].gameStarted then
		gamestate.states[GAMESTATE_GAMEPLAY].Update(dt)
	end
end

function EnterWin()
	Gear.QueueModels(false)
	CollisionHandler.Disable()
	Gear.CursorVisible(true)
end

function ExitWin()
end

return { Load = LoadWin, Unload = UnloadWin, Update = UpdateWin, Enter = EnterWin, Exit = ExitWin }