local scriptsMenu = {}
local scriptFilesMenu =
{
 "Scripts/spellbookUI.lua"
}

function LoadSpellbook()
	-- run scripts
	for i=1, #scriptFilesMenu do
		scriptsMenu[i] = dofile(scriptFilesMenu[i])
	end

	-- call their load function
	for key,value in pairs(scriptsMenu) do
		if value.Load then value.Load() end
	end
end

function UnloadSpellbook()
end

function UpdateSpellbook(dt)
	for key,value in pairs(scriptsMenu) do
		value.Update(dt)
	end

	if gameplayStarted then
		gamestate.states[GAMESTATE_GAMEPLAY].Update(dt)
	end
end

function EnterSpellbook()
	--Gear.QueueModels(false)
	if SETTING_DEBUG then 
		CollisionHandler.Enable()
	else
		CollisionHandler.Disable()
	end
	Gear.CursorVisible(true)
end

function ExitSpellbook()
end

return { Load = LoadSpellbook, Unload = UnloadSpellbook, Update = UpdateSpellbook, Enter = EnterSpellbook, Exit = ExitSpellbook }