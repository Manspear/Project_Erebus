local stateScript = require("Scripts.AI.states")

local baseReturn = {}

local function updateState(enemy, player,dt)
	enemy.state.update(enemy,player,dt)
end


baseReturn.update = updateState


return baseReturn