local scriptsMenu = {}
local scriptFilesMenu =
{
 "Scripts/pauseMenuUI.lua"
}

function LoadPauseMenu()
	-- run scripts
	for i=1, #scriptFilesMenu do
		scriptsMenu[i] = dofile(scriptFilesMenu[i])
	end

	-- call their load function
	for key,value in pairs(scriptsMenu) do
		if value.Load then value.Load() end
	end
end

function UnloadPauseMenu()
end

function UpdatePauseMenu(dt)
	for key,value in pairs(scriptsMenu) do
		value.Update(dt)
	end
end

function EnterPauseMenu()
	Gear.QueueModels(false)
	CollisionHandler.Disable()
	Gear.CursorVisible(true)
end

function ExitPauseMenu()
end

return { Load = LoadPauseMenu, Unload = UnloadPauseMenu, Update = UpdatePauseMenu, Enter = EnterPauseMenu, Exit = ExitPauseMenu }