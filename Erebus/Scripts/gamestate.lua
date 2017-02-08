GAMESTATE_MAIN_MENU = 1
GAMESTATE_GAMEPLAY = 2
GAMESTATE_OPTIONS = 3
GAMESTATE_SPELLBOOK = 4
GAMESTATE_PAUSEMENU = 5
GAMESTATE_DEATH = 6
GAMESTATE_IPCONNECT = 7
GAMESTATE_IPHOST = 8

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
	"Scripts/iphost.lua"
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

	gamestate.currentState = newState
	gamestate.states[gamestate.currentState].Enter()
end