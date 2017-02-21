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

	Gear.Fullscreen(SETTING_FULLSCREEN);

end

function UnloadOptionsMenu()

	if file_check("settings.lua") and false then
		file = io.open("settings.lua", "w")
		file:write("SETTING_FULLSCREEN = " .. boolToString(SETTING_FULLSCREEN) .. "\n")
		file:write("SETTING_DEBUG = " .. boolToString(SETTING_DEBUG) .. "\n")

		file:write("SETTING_KEYBIND_FORWARD = \"" .. SETTING_KEYBIND_FORWARD .. "\"\n")
		file:write("SETTING_KEYBIND_LEFT = \"" .. SETTING_KEYBIND_LEFT .."\"\n")
		file:write("SETTING_KEYBIND_BACK = \"".. SETTING_KEYBIND_BACK .."\"\n")
		file:write("SETTING_KEYBIND_RIGHT = \"".. SETTING_KEYBIND_RIGHT.."\"\n")

		file:write("SETTING_KEYBIND_DASH = ".. SETTING_KEYBIND_DASH .."\n")

		file:write("SETTING_KEYBIND_NORMAL_ATTACK = ".. SETTING_KEYBIND_NORMAL_ATTACK .."\n")
		file:write("SETTING_KEYBIND_CHARGED_ATTACK = ".. SETTING_KEYBIND_CHARGED_ATTACK .."\n")

		file:write("SETTING_KEYBIND_SPELL_ONE = \"".. SETTING_KEYBIND_SPELL_ONE .."\"\n")
		file:write("SETTING_KEYBIND_SPELL_TWO = \"".. SETTING_KEYBIND_SPELL_TWO .."\"\n")
		file:write("SETTING_KEYBIND_SPELL_THREE = \"".. SETTING_KEYBIND_SPELL_THREE .."\"\n")

		file:write("SETTING_KEYBIND_SPELLBOOK = \"".. SETTING_KEYBIND_SPELLBOOK .."\"\n")

		file:write("SETTING_KEYBIND_MENU = ".. SETTING_KEYBIND_MENU .."\n")
		file:write("SETTING_KEYBIND_COMBINE = ".. SETTING_KEYBIND_COMBINE .."\n")

		file:write("SETTING_KEYBIND_PING = \"".. SETTING_KEYBIND_PING .."\"\n")
		file:close()
	end

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