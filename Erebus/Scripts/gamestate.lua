GAMESTATE_MAIN_MENU = 1
GAMESTATE_GAMEPLAY = 2

gamestate = {}
gamestate.currentState = GAMESTATE_MAIN_MENU
gamestate.states= {}
local gamestateScripts = 
{
	"Scripts/main_menu.lua",
	"Scripts/gameplay.lua"
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