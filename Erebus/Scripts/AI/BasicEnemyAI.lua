local stateScript = require("Scripts.AI.states")

local baseReturn = {}

enemyManager = {actionEnemy = 0, maxAttackingEnemies = 3}


local function updateEnemyManager(enemies)
		outerCounter = 0
		innerCounter = 0
		for i=1, #enemies do
			--if enemies[i].state.stateName == "PositioningOuterState" then
			--	
			--	 inPos = AI.SetSpecificTarget(enemies[i].playerTarget.transformID,player.outerCirclerange,player.nrOfOuterCircleEnemies,outerCounter)
			--
			--	 length = AI.DistanceTransPos(enemies[i].transformID,inPos)
			--
			--		if inPos.y ~= -1 and length >1 then
			--			enemies[i].pathTarget = inPos
			--			AI.AStarSearch(enemies[i].lastPos,inPos,enemies[i].transformID)
			--		else
			--		AI.ClearAStar(enemies[i].transformID)
			--		end
			--	outerCounter = outerCounter+1
			--end

			if enemies[i].insideInnerCircleRange == true then
				if enemies[i].state.stateName == "PositioningInnerState" then
					inPos = AI.SetSpecificTarget(enemies[i].playerTarget.transformID,player.innerCirclerange,player.nrOfInnerCircleEnemies,innerCounter)
					length = AI.DistanceTransPos(enemies[i].transformID,inPos)

					
					if inPos.y ~= -1 and length >1 then
						enemies[i].pathTarget = inPos
						AI.AStarSearch(enemies[i].lastPos,inPos,enemies[i].transformID)
					else
						AI.ClearAStar(enemies[i].transformID)
					end
				end
				innerCounter = innerCounter+1
			end

		end
end

local function updateState(enemy, player,dt)
	enemy.state.update(enemy,player,dt,enemyManager)
end


baseReturn.update = updateState
baseReturn.updateEnemyManager = updateEnemyManager
baseReturn.enemyManager = enemyManager

return baseReturn