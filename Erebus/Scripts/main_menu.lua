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
	Gear.QueueModels(false)
	CollisionHandler.Disable()

	for key,value in pairs(scriptsMenu) do
		value.Update(dt)
	end

	if Inputs.KeyPressed("W") then
		gamestate.currentState = GAMESTATE_GAMEPLAY
	end
end

return { Load = LoadMainMenu, Unload = UnloadMainMenu, Update = UpdateMainMenu }