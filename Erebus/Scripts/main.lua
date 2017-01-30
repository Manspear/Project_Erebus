	"Scripts/staticAoEType.lua",
	"Scripts/HUD.lua"
function Load()
	dofile( "Scripts/gamestate.lua" )
	gamestate.Load()
end

function Unload()
	gamestate.Unload()
end

function Update(dt)
	gamestate.Update(dt)
end