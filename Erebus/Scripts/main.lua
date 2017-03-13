require("Scripts/assets_debug")
local console = dofile("Scripts/console.lua")

function Load()
	dofile("Scripts/gamestate.lua")
	gamestate.Load()
	console.Load()
end

function Unload()
	console.Unload()
	gamestate.Unload()
end

function Update(dt)
	gamestate.Update(dt)
	console.Update(dt)
	--UpdateDebugAssets()
end