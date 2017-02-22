GAMESTATE_MAIN_MENU = 1
GAMESTATE_GAMEPLAY = 2
GAMESTATE_OPTIONS = 3
GAMESTATE_SPELLBOOK = 4
GAMESTATE_PAUSEMENU = 5
GAMESTATE_DEATH = 6
GAMESTATE_IPCONNECT = 7
GAMESTATE_IPHOST = 8
GAMESTATE_KEYBINDING = 9

gamestate = {}
gamestate.currentState = -1
gamestate.states= {}
local gamestateScripts = 
{
	"Scripts/main_menu.lua",
	"Scripts/gameplay.lua",
	"Scripts/options_menu.lua",
	"Scripts/spellbook.lua",
	"Scripts/pauseMenu.lua",
	"Scripts/death.lua",
	"Scripts/ipconnect.lua",
	"Scripts/iphost.lua",
	"Scripts/keybinding.lua",
}

function gamestate.Load()
	for i=1, #gamestateScripts do
		gamestate.states[i] = dofile( gamestateScripts[i] )
	end

	for _,v in pairs(gamestate.states) do
		if v.Load then
			v.Load()
		end
	end

	local file
	if file_check("settings.lua") == false then
		file = io.open("settings.lua", "w")
		file:write("SETTING_FULLSCREEN = false\n")
		file:write("SETTING_DEBUG = true\n")

		file:write("SETTING_KEYBIND_FORWARD = \"W\"\n")
		file:write("SETTING_KEYBIND_LEFT = \"A\"\n")
		file:write("SETTING_KEYBIND_BACK = \"S\"\n")
		file:write("SETTING_KEYBIND_RIGHT = \"D\"\n")

		file:write("SETTING_KEYBIND_DASH = Keys.Space\n")

		file:write("SETTING_KEYBIND_NORMAL_ATTACK = Buttons.Left\n")
		file:write("SETTING_KEYBIND_CHARGED_ATTACK = Buttons.Right\n")

		file:write("SETTING_KEYBIND_SPELL_ONE = \"1\"\n")
		file:write("SETTING_KEYBIND_SPELL_TWO = \"2\"\n")
		file:write("SETTING_KEYBIND_SPELL_THREE = \"3\"\n")

		file:write("SETTING_KEYBIND_SPELLBOOK = \"B\"\n")

		file:write("SETTING_KEYBIND_MENU = Keys.Escape\n")
		file:write("SETTING_KEYBIND_COMBINE = Keys.Shift\n")

		file:write("SETTING_KEYBIND_PING = \"Q\"\n")
		file:close()
	end
	dofile("settings.lua")

	gamestate.ChangeState(GAMESTATE_MAIN_MENU)
end

function gamestate.Unload()
	for _,v in pairs(gamestate.states) do
		if v.Unload then
			v.Unload()
		end
	end
end

function gamestate.Update(dt)
	gamestate.states[gamestate.currentState].Update(dt)
end

function gamestate.ChangeState(newState)
	if gamestate.currentState > 0 then
		gamestate.states[gamestate.currentState].Exit()
	end

	if gamestate.currentState ~= newState then
		gamestate.currentState = newState
		gamestate.states[gamestate.currentState].Enter()
	end
end

function file_check(file_name)
	
  local file_found=io.open(file_name, "r")      
  
  if file_found==nil then
    file_found=false
  else
	file_found:close()
    file_found=true
  end
  return file_found
end

function boolToString(boolean)
	local output
	if boolean then
		output = "true"
	else
		output = "false"
	end
	return output
end