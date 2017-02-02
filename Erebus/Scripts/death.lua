local scriptsMenu = {}
local scriptFilesMenu =
{
 "Scripts/deathUI.lua"
}

function LoadDeath()
	-- run scripts
	for i=1, #scriptFilesMenu do
		scriptsMenu[i] = dofile(scriptFilesMenu[i])
	end

	-- call their load function
	for key,value in pairs(scriptsMenu) do
		if value.Load then value.Load() end
	end
end

function UnloadDeath()
end

function UpdateDeath(dt)
	for key,value in pairs(scriptsMenu) do
		value.Update(dt)
	end
	if gamestate.states[GAMESTATE_GAMEPLAY].gameStarted then
		gamestate.states[GAMESTATE_GAMEPLAY].Update(dt)
	end
end

function EnterDeath()
	--Gear.QueueModels(false)
	CollisionHandler.Disable()
	Gear.CursorVisible(true)
end

function ExitDeath()
end

return { Load = LoadDeath, Unload = UnloadDeath, Update = UpdateDeath, Enter = EnterDeath, Exit = ExitDeath }