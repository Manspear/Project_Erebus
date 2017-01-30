local scriptsMenu = {}
local scriptFilesMenu =
{
 "Scripts/MenuUI.lua"
}

function LoadMainMenu()
	-- run scripts
	for i=1, #scriptFilesMenu do
		scriptsMenu[i] = dofile(scriptFilesMenu[i])
	end

	-- call their load function
	for key,value in pairs(scriptsMenu) do
		if value.Load then value.Load() end
	end
end

function UnloadMainMenu()
end

function UpdateMainMenu(dt)
	if Inputs.KeyPressed("W") then
		gamestate.ChangeState(GAMESTATE_GAMEPLAY)
	end
	for key,value in pairs(scriptsMenu) do
		value.Update(dt)
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