GAMESTATE_MAIN_MENU = 1
GAMESTATE_GAMEPLAY = 2

local currentState = GAMESTATE_MAIN_MENU
local gamestates = {}
local gamestateScripts = 
{
	"Scripts/main_menu.lua",
	"Scripts/gameplay.lua"
}

function LoadGamestates()
	for i=1, #gamestateScripts do
		gamestates[i] = dofile( gamestateScripts[i] )
	end

	for _,v in pairs(gamestates) do
		if v.Load then
			v.Load()
		end
	end
end

function UnloadGamestates()
	for _,v in pairs(gamestates) do
		if v.Unload then
			v.Unload()
		end
	end
end

function UpdateGamestates(dt)
	gamestates[currentState].Update(dt)
end

return { Load = LoadGamestates, Unload = UnloadGamestates, Update = UpdateGamestates }