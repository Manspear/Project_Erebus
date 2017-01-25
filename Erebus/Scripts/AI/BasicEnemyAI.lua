local stateScript = require("Scripts.AI.states")

local baseReturn = {}

local enemyManager = {nrOfOuterCircleEnemies = 0,nrOfInnerCircleEnemies = 0}


local function updateEnemyManager(enemies,playerenemyManager)

	--if ).nrOfOuterCircleEnemies ~= player.nrOfOuterCircleEnemies then
		outerCounter = 1

		for i=1, #enemies do
			if enemies[i].state.stateName == "PositioningOuterState" then
				inPos = AI.SetSpecificTarget(player.transformID,enemies[i].outerCirclerange,player.nrOfOuterCircleEnemies,outerCounter);
				
				if inPos.y ~= -1 then
					print("Set Pos")
					enemies[i].target = inPos
				end
				
				--print(enemies[i].target.x,enemies[i].target.z)

				outerCounter = outerCounter+1
			end


		end
		--enemyManager.nrOfOuterCircleEnemies = player.nrOfOuterCircleEnemies
	--end
end

local function updateState(enemy, player,dt)
	enemy.state.update(enemy,player,dt,enemyManager)
end


baseReturn.update = updateState
baseReturn.updateEnemyManager = updateEnemyManager

return baseReturn