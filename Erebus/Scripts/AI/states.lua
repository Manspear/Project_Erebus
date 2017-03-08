local baseReturn ={}

state = {idleState = {},followState = {},attackState = {},positioningInnerState = {},positioningOuterState = {},leapState = {},deadState = {},doNothingState = {},runAwayState = {},dummyState = {}}

function state.idleState.enter(enemy,player)
	enemy.animationController:doNothing()
end

function state.idleState.update(enemy,player,dt,enemyManager)
	
	length = AI.DistanceTransTrans(enemy.transformID,enemy.playerTarget.transformID)
	if length <enemy.visionRange and enemy.playerTarget.isAlive then
		--print("Idle ", length)
		inState = FOLLOW_STATE
		changeToState(enemy,enemy.playerTarget,inState)
	end

end

function state.idleState.exit(enemy,player)
	
end

function state.followState.enter(enemy,player)
	enemy.animationController:doWalk()
	--AI.FollowPlayer(player.transformID)
end

function state.followState.update(enemy,player,dt)
	--Transform.Follow(player.transformID, enemy.transformID, enemy.movementSpeed , dt)

	if enemy.subPathtarget == nil then
		length =  AI.DistanceTransTrans(enemy.transformID,enemy.playerTarget.transformID)

		if length >enemy.visionRange and enemy.aggro == false then
			inState = IDLE_STATE
			changeToState(enemy,player,inState)
			--print("hehe idle")
		end

		if enemy.playerTarget.nrOfInnerCircleEnemies < 1000 then 
			if length < enemy.playerTarget.innerCirclerange then
	
				inState = POSITIONING_INNER_STATE
				changeToState(enemy,enemy.playerTarget,inState)
	
				do return end
			end
		else
			if length < enemy.playerTarget.outerCirclerange then
				inState = POSITIONING_OUTER_STATE 
				changeToState(enemy,enemy.playerTarget,inState)
				do return end
			end
		end
		

		local dir = AI.NavigateMesh(enemy.transformID)
		AI.AStarSearch(enemy.lastPos,enemy.playerTarget.position,enemy.transformID)

		if dir.y ~= -1  then
			enemy.subPathtarget = dir
		end
	
	elseif enemy.subPathtarget ~= 0 then
			--local pos = enemy.pos
			local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)

			--Transform.SetLookAt(enemy.transformID,direction)
			--vec3print(direction)
			Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			
			enemy.pos.x = enemy.pos.x + direction.x * enemy.movementSpeed * dt
			--pos.y = pos.y + direction.y * enemy.movementSpeed * dt
			enemy.pos.z = enemy.pos.z + direction.z * enemy.movementSpeed * dt

			--Transform.SetPosition(enemy.transformID,pos)

			if AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget) < 0.8 then
				enemy.subPathtarget = nil
			end
			--local dist = AI.distanceTransTrans(enemy.transformID,player.transformID)
	end


end

function state.followState.exit(enemy,player)
	AI.ClearAStar(enemy.transformID)
	enemy.aggro = false
end


function state.positioningInnerState.enter(enemy,player)

	enemy.playerTarget.nrOfInnerCircleEnemies = enemy.playerTarget.nrOfInnerCircleEnemies + 1

	local direction = AI.NormalizeDir(enemy.transformID,enemy.playerTarget.position)

 	--Transform.SetLookAt(enemy.transformID,direction)
	Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			

	enemy.insideInnerCircleRange = true
end

function state.positioningInnerState.update(enemy,player,dt,enemyManager)
	enemy.actionCountDown = enemy.actionCountDown - dt

	if enemy.subPathtarget ~= nil then
		local pos = enemy.pos
		local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)

		--Transform.SetLookAt(enemy.transformID,direction)
		Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			
		
		pos.x = pos.x + direction.x * enemy.movementSpeed * dt
		pos.z = pos.z + direction.z * enemy.movementSpeed * dt
		
		Transform.SetPosition(enemy.transformID,pos)

		rangeTest = AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
		if rangeTest < 0.8 then
			enemy.subPathtarget = nil

			--Transform.SetLookAt(enemy.transformID,direction)
			Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			
		end
	else
		local dir = AI.NavigateMesh(enemy.transformID)
		if dir.y ~= -1 and enemy.pathTarget ~= nil  then
			enemy.subPathtarget = dir

		end
	end
		--- TIME TO DO ACTIONS
		length = AI.DistanceTransTrans(enemy.transformID,enemy.playerTarget.transformID)

		if length > enemy.playerTarget.innerCirclerange then
			enemy.playerTarget.nrOfInnerCircleEnemies = enemy.playerTarget.nrOfInnerCircleEnemies -1
			enemy.insideInnerCircleRange = false
			inState = FOLLOW_STATE
			changeToState(enemy,enemy.playerTarget,inState)
		else
			--print(enemyManager.actionEnemy, "TOO MANY")
			if enemyManager.actionEnemy < enemyManager.maxAttackingEnemies  then
				enemyManager.actionEnemy = enemyManager.actionEnemy +1
				randomNum = math.random(0, 1)
				if randomNum == 0 then
					--print("NORMAL ATTACK  ",enemy.playerTarget.nrOfInnerCircleEnemies)
					inState = ATTACK_STATE 
					changeToState(enemy,enemy.playerTarget,inState)

				end
				if randomNum == 1 then
					--print("LEAP ATTACK  ",enemy.playerTarget.nrOfInnerCircleEnemies)
					inState = LEAP_STATE 
					changeToState(enemy,enemy.playerTarget,inState)

				end

			end
			
			if enemy.health< enemy.maxHealth*0.4 then
				inState = RUN_AWAY_STATE
				changeToState(enemy,enemy.playerTarget,inState)
			end

		end

end

function state.positioningInnerState.exit(enemy,player)
		AI.ClearAStar(enemy.transformID)
end

function state.positioningOuterState.enter(enemy,player)

	enemy.playerTarget.nrOfOuterCircleEnemies = enemy.playerTarget.nrOfOuterCircleEnemies +1


	--Transform.SetLookAt(enemy.transformID,direction)
	Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			
end

function state.positioningOuterState.update(enemy,player,dt)


	if (enemy.playerTarget.nrOfInnerCircleEnemies >= 3) then
		if enemy.subPathtarget ~= nil then

			local pos = enemy.pos
				local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)

				--Transform.SetLookAt(enemy.transformID,direction)
				Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			
			
				pos.x = pos.x + direction.x * enemy.movementSpeed * dt
				pos.z = pos.z + direction.z * enemy.movementSpeed * dt

				Transform.SetPosition(enemy.transformID,pos)

				rangeTest = AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
				if rangeTest < 0.9 then
					enemy.subPathtarget = nil
			
					--Transform.SetLookAt(enemy.transformID,direction)
					Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			
				end
		else
		local dir = AI.NavigateMesh(enemy.transformID)
			if dir.y ~= -1 and enemy.pathTarget ~= nil  then
				enemy.subPathtarget = dir
			end
		end
	else

		enemy.playerTarget.nrOfOuterCircleEnemies = enemy.playerTarget.nrOfOuterCircleEnemies -1
		inState = FOLLOW_STATE
		changeToState(enemy,enemy.playerTarget,inState)
	end

		
end

function state.positioningOuterState.exit(enemy,player)
	
end


function state.attackState.enter(enemy,player)
	enemy.animationController:doAttack()
	--enemy.attackCountdown = 1



	--Transform.SetLookAt(enemy.transformID,direction)
	Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			

	enemy.actionCountDown = 1.2
	enemy.subPathtarget = enemy.playerTarget.position
end

function state.attackState.update(enemy,player,dt,enemyManager)

	length =  AI.DistanceTransTrans(enemy.transformID,enemy.playerTarget.transformID)

	enemy.actionCountDown= enemy.actionCountDown - dt

	if length < enemy.range then
		if enemy.actionCountDown <0 then
			if enemy.playerTarget.transformID == player2.transformID then
				Network.SendDamagePacket(enemy.transformID, 12, enemy.elementType)
			else
				player:Hurt(12, enemy)
			end
			inState = POSITIONING_INNER_STATE
			changeToState(enemy,enemy.playerTarget,inState)
		end
	else
		if enemy.actionCountDown <0 then
			inState = POSITIONING_INNER_STATE
			changeToState(enemy,enemy.playerTarget,inState)
		end
		local direction = AI.NormalizeDir(enemy.transformID, enemy.playerTarget.position)
		
		--Transform.SetLookAt(enemy.transformID,direction)
		--Transform.SetFacing(enemy.transformID,player.transformID)
		Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			
		
		enemy.pos.x = enemy.pos.x + direction.x * enemy.movementSpeed * dt
		enemy.pos.z = enemy.pos.z + direction.z * enemy.movementSpeed * dt
		
		--Transform.SetPosition(enemy.transformID,pos)
	end
	if length > 8 then
		inState = FOLLOW_STATE
		changeToState(enemy,enemy.playerTarget,inState)
	end
end

function state.attackState.exit(enemy,player)

	enemy.animationController:doWalk()
	
	enemy.playerTarget.nrOfInnerCircleEnemies = enemy.playerTarget.nrOfInnerCircleEnemies - 1
	enemy.subPathtarget = nil
	enemyManager.actionEnemy = enemyManager.actionEnemy -1
end 


function state.leapState.enter(enemy,player)
	--enemy.animationState = 1
	enemy.animationController:doStartLeap()
	enemy.subPathtarget = enemy.playerTarget.position
	enemy.actionCountDown = 1.0
end

function state.leapState.update(enemy,player,dt,enemyManager)
------StartAnim state

	length =  AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)

	if enemy.actionCountDown >0 and length >1 then

		enemy.actionCountDown= enemy.actionCountDown - dt
	
		if enemy.actionCountDown <0 then
			enemy.animationController:doLeap()
			enemy.subPathtarget = enemy.playerTarget.position
			length =  AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
			enemy.tempVariable = length
			local pos = enemy.pos
			enemy.whatEver = pos.y

			length =  AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
			if length > 22 then
				inState = POSITIONING_INNER_STATE
				changeToState(enemy,enemy.playerTarget,inState)
			end
		end
	
---------------------------------------- Mid Flight
	elseif length >1 then

			--length =  AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)


				local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)
		
				Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			
		
				enemy.pos.x = enemy.pos.x + direction.x * (enemy.movementSpeed+4) * dt
				enemy.pos.z = enemy.pos.z + direction.z * (enemy.movementSpeed+4) * dt

				local maxHeight = 12

				local checker =  length/enemy.tempVariable

				if checker > 0.5 then
					enemy.pos.y  = enemy.whatEver + (maxHeight * (1-checker))
				else
					enemy.pos.y  = enemy.whatEver + (maxHeight * (checker))
					enemy.animationController:doEndLeap()
				end

		
				--Transform.SetPosition(enemy.transformID,pos)

			--if enemy.actionCountDown <0 then
			--	--player:Hurt(12)
			--	inState = "FollowState" 
			--	changeToState(enemy,player,inState)
			--end
		
		--end
--------------------------------------------
	else
		
		length =  AI.DistanceTransTrans(enemy.transformID,enemy.playerTarget.transformID)
		if length < enemy.range then
			if enemy.playerTarget.transformID == player2.transformID then
				Network.SendDamagePacket(enemy.transformID, 12, enemy.elementType)
			else
				player:Hurt(12, enemy)
			end
		end	

		inState = POSITIONING_INNER_STATE
		changeToState(enemy,enemy.playerTarget,inState)
	end
		

end

function state.leapState.exit(enemy,player)
	enemy.animationController:doWalk()
	enemyManager.actionEnemy = enemyManager.actionEnemy -1
	enemy.playerTarget.nrOfInnerCircleEnemies = enemy.playerTarget.nrOfInnerCircleEnemies - 1
	enemy.subPathtarget = nil
	enemy.actionCountDown = 1.5
end

function state.deadState.enter(enemy,player)
	enemy.actionCountDown = 3
	SpawnNewHealthOrb(Transform.GetPosition(enemy.transformID))
	enemy.animationController:doDeath()
end

function state.deadState.update(enemy,player,dt)	
	enemy.actionCountDown= enemy.actionCountDown - dt	
	

	if enemy.actionCountDown > 0 then		
		enemy.pos.x = enemy.pos.x + math.random(-3,3) * dt
		enemy.pos.y = enemy.pos.y - 0.6 * dt
		enemy.pos.z = enemy.pos.z + math.random(-3,3)  * dt
		--Transform.SetPosition(enemy.transformID,pos)
	else
		Transform.ActiveControl(enemy.transformID, false)
		SphereCollider.SetActive(enemy.collider, false)
		enemy.alive = false
	end
end

function state.deadState.exit(enemy,player)

end 

function state.doNothingState.enter(enemy,player)

end

function state.doNothingState.update(enemy,player)

end

function state.doNothingState.exit(enemy,player)

end 

function state.runAwayState.enter(enemy, playerTarget)
	------- Choose Random direction away from player

	--print("Lets Runaway together!!")
	enemy.insideInnerCircleRange = false
	-------

end

function state.runAwayState.update(enemy, playerTarget, dt)
	---------
	if enemy.health > enemy.maxHealth * 0.7 then
		inState = FOLLOW_STATE 
		changeToState(enemy,enemy.playerTarget,inState)
		do return end
	end

	enemy.actionCountDown= enemy.actionCountDown - dt	
	length =  AI.DistanceTransTrans(enemy.transformID,enemy.playerTarget.transformID)
	
	if length > 8 then
		if enemy.actionCountDown <0 then
			enemy.animationController:doNothing()
			enemy.currentHealth = enemy.currentHealth +1
			enemy.health = enemy.health +1
			enemy.actionCountDown = 0.4

			--Network.SendAIDamageTextPacket(self.transformID, 2, element)
			Gear.PrintDamage(1,4, enemy.pos.x, enemy.pos.y+1, enemy.pos.z )
		end
	else
		if enemy.subPathtarget ~= nil then
			enemy.animationController:doWalk()
			--local pos = enemy.pos
			local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)

			--Transform.SetLookAt(enemy.transformID,direction)
			Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			
		
			enemy.pos.x = enemy.pos.x + direction.x * enemy.movementSpeed * dt
			enemy.pos.z = enemy.pos.z + direction.z * enemy.movementSpeed * dt
		
			--Transform.SetPosition(enemy.transformID,pos)

			rangeTest = AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
			if rangeTest < 0.8 then
				enemy.subPathtarget = nil

				--Transform.SetLookAt(enemy.transformID,direction)
				Transform.RotateToVector(enemy.transformID, vec3sub(enemy.playerTarget.position, Transform.GetPosition(enemy.transformID)) )
			
			end
		else
			if  enemy.pathTarget ~= nil then
				local dir = AI.NavigateMesh(enemy.transformID)
				if dir.y ~= -1 then
					enemy.subPathtarget = dir
				else
					enemy.pathTarget = nil
				end
			else

				littleRangecountDown = 24
				local dirAngle = 0
				while enemy.pathTarget == nil and littleRangecountDown ~= 0 do
					
					local testPos = Transform.GetPosition(enemy.playerTarget.transformID)
					testPos.x = testPos.x + (littleRangecountDown * math.cos(dirAngle))
					testPos.y = 0
					testPos.z = testPos.z + (littleRangecountDown * math.sin(dirAngle))

					
					AI.AStarSearch(enemy.lastPos,testPos,enemy.transformID)
					local dir = AI.NavigateMesh(enemy.transformID)

					if dir.y ~= -1 then
						enemy.pathTarget = testPos
					else
						dirAngle = dirAngle + 45
						if dirAngle == 360 then
							dirAngle = 0
							littleRangecountDown = littleRangecountDown - 4
						end
					end
				end
			end
		end
		---
	end

	---------
end

function state.runAwayState.exit(enemy, playerTarget)

end 

function state.dummyState.enter(enemy,player)

end

function state.dummyState.update(enemy,player)

end

function state.dummyState.exit(enemy,player)

end 


function changeToState(enemy,player,changeState)

	--print("CHANGE STATE")
	enemy.state.exit(enemy,enemy.playerTarget)

	if changeState == IDLE_STATE then
		enemy.state = state.idleState
		--print("Sending IdleState", enemy.transformID, 0)
		Network.SendAIStatePacket(enemy.transformID, IDLE_STATE)
	end
	if changeState == FOLLOW_STATE then
		--print(Network.TestFunction())
		enemy.state = state.followState
		--print("Sending FollowState", enemy.transformID, 1)
		Network.SendAIStatePacket(enemy.transformID,FOLLOW_STATE)
	end
	if changeState == ATTACK_STATE then
		enemy.state = state.attackState
		--print("Sending AttackState", enemy.transformID, 2)
		Network.SendAIStatePacket(enemy.transformID,ATTACK_STATE)
	end
	if changeState == LEAP_STATE then
		enemy.state = state.leapState
		--print("Sending DeadState", enemy.transformID, 3)
		Network.SendAIStatePacket(enemy.transformID,LEAP_STATE)
	end
	if changeState == POSITIONING_INNER_STATE then
		enemy.state = state.positioningInnerState
	end
	
	if changeState == POSITIONING_OUTER_STATE then
		enemy.state = state.positioningOuterState
	end

	if changeState == DEAD_STATE then
		enemy.state = state.deadState
		--print("Sending DeadState", enemy.transformID, 4)
		Network.SendAIStatePacket(enemy.transformID,DEAD_STATE)
	end 
	
	if changeState == DO_NOTHING_STATE then
		enemy.state = state.doNothingState
		--print("Sending DoNothingState", enemy.transformID, 5)
		Network.SendAIStatePacket(enemy.transformID,DO_NOTHING_STATE)
	end 

	if changeState == RUN_AWAY_STATE then
		enemy.state = state.runAwayState
		--print("Sending RunAwayState", enemy.transformID, 8)
		Network.SendAIStatePacket(enemy.transformID,RUN_AWAY_STATE)
	end

	if changeState == DUMMY_STATE then
		enemy.state = state.dummyState
	end

	enemy.state.enter(enemy,enemy.playerTarget)
	enemy.stateName = changeState

end

baseReturn.changeToState = changeToState
baseReturn.state = state
baseReturn.inPlayerRange = inPlayerRange

return baseReturn