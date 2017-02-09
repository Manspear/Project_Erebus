local scriptsMenu = {}
local scriptFilesMenu =
{
 "Scripts/optionsUI.lua"
}

function LoadOptionsMenu()
	-- run scripts
	for i=1, #scriptFilesMenu do
		scriptsMenu[i] = dofile(scriptFilesMenu[i])
	end

	-- call their load function
	for key,value in pairs(scriptsMenu) do
		if value.Load then value.Load() end
	end
end

function UnloadOptionsMenu()
end

function UpdateOptionsMenu(dt)
	for key,value in pairs(scriptsMenu) do
		value.Update(dt)
	end
	if gamestate.states[GAMESTATE_GAMEPLAY].gameStarted then
		gamestate.states[GAMESTATE_GAMEPLAY].Update(dt)
	end
end

function EnterOptionsMenu()
	Gear.QueueModels(false)
	CollisionHandler.Disable()
	Gear.CursorVisible(true)
end

function ExitOptionsMenu()
end

return { Load = LoadOptionsMenu, Unload = UnloadOptionsMenu, Update = UpdateOptionsMenu, Enter = EnterOptionsMenu, Exit = ExitOptionsMenu }