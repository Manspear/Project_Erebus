local stateScript = require("Scripts.AI.states")

local baseReturn = {}

local enemyManager = {nrOfOuterCircleEnemies = 0,nrOfInnerCircleEnemies = 0,actionEnemy = -1}


local function updateEnemyManager(enemies,player)

	--if ).nrOfOuterCircleEnemies ~= player.nrOfOuterCircleEnemies then
		outerCounter = 0
		innerCounter = 0
		for i=1, #enemies do
			if enemies[i].state.stateName == "PositioningOuterState" then
				if enemies[i].target == nil and AI.DistanceTransPos(enemies[i].transformID, Transform.GetPosition(player.transformID)) > player.outerCirclerange  then
					inPos = AI.SetSpecificTarget(player.transformID,player.outerCirclerange,player.nrOfOuterCircleEnemies,outerCounter);
				
					if inPos.y ~= -1 then
						enemies[i].target = inPos
					end
				
				--print(enemies[i].target.x,enemies[i].target.z)
				end
				outerCounter = outerCounter+1
			end

			if enemies[i].insideInnerCircleRange == true then
			--print("DISTANCE",AI.DistanceTransTrans(enemies[i].transformID,player.transformID))
				if( enemies[i].target == nil and  AI.DistanceTransTrans(enemies[i].transformID,player.transformID) > player.innerCirclerange +2 )or (AI.DistanceTransTrans(enemies[i].transformID, player.transformID) < enemies[i].range+4 and enemies[i].target == nil) then
					inPos = AI.SetSpecificTarget(player.transformID,player.innerCirclerange,player.nrOfInnerCircleEnemies,innerCounter)
				
					if inPos.y ~= -1 then
						enemies[i].target = inPos
					end
				
				--print(enemies[i].target.x,enemies[i].target.z)
				end
				innerCounter = innerCounter+1
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