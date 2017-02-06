function Load()
	dofile( "Scripts/gamestate.lua" )
	gamestate.Load()
	ZoomOutCamera()
end

function Unload()
	gamestate.Unload()
end

function Update(dt)
	gamestate.Update(dt)
end