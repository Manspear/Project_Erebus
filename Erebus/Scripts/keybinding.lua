local scriptsMenu = {}
local scriptFilesMenu =
{
 "Scripts/keybindingUI.lua"
}

function LoadKeybindingMenu()
	-- run scripts
	for i=1, #scriptFilesMenu do
		scriptsMenu[i] = dofile(scriptFilesMenu[i])
	end

	-- call their load function
	for key,value in pairs(scriptsMenu) do
		if value.Load then value.Load() end
	end

	Gear.Fullscreen(SETTING_FULLSCREEN);

end

function UnloadKeybindingMenu()

end

function UpdateKeybindingMenu(dt)
	for key,value in pairs(scriptsMenu) do
		value.Update(dt)
	end
	if gamestate.states[GAMESTATE_GAMEPLAY].gameStarted then
		gamestate.states[GAMESTATE_GAMEPLAY].Update(dt)
	end
end

function EnterKeybindingMenu()
	Gear.QueueModels(false)
	CollisionHandler.Disable()
	Gear.CursorVisible(true)
end

function ExitKeybindingMenu()
	
end

return { Load = LoadKeybindingMenu, Unload = UnloadKeybindingMenu, Update = UpdateKeybindingMenu, Enter = EnterKeybindingMenu, Exit = ExitKeybindingMenu }