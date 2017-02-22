local baseReturn ={}

state = {idleState = {},followState = {},attackState = {},positioningInnerState = {},positioningOuterState = {},leapState = {},deadState = {},doNothingState = {},State = {}}

function state.idleState.enter(enemy,player)
	enemy.animationState = 1
end

function state.idleState.update(enemy,player,dt,enemyManager)
	
	length = AI.DistanceTransTrans(enemy.transformID,player.transformID)
	
	if length <enemy.visionRange and player.isAlive then
		inState = FOLLOW_STATE
		changeToState(enemy,player,inState)
	end

	--if player2 ~= nil then
	--	lengthP2 = AI.DistanceTransTrans(enemy.transformID,player.transformID)
	--	if lengthP2 <enemy.visionRange and lengthP2 > player.outerCirclerange then
	--		inState = "FollowState" 
	--		changeToState(enemy,player,inState)
	--	end
	--end
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
		length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)

		------ CANT GO BACK INTO IDLE

		--if length >enemy.visionRange then
		--	inState = "IdleState" 
		--	changeToState(enemy,player,inState)
		--	print("hehe idle")
		--end

		----------------

		if player.nrOfInnerCircleEnemies < 1000 then 
			if length < player.innerCirclerange then
	
				inState = POSITIONING_INNER_STATE
				changeToState(enemy,player,inState)
	
				do return end
			end
		else
			if length < player.outerCirclerange then
				inState = POSITIONING_OUTER_STATE 
				changeToState(enemy,player,inState)
				do return end
			end
		end
		

		local dir = AI.NavigateMesh(enemy.transformID)
		AI.AStarSearch(enemy.lastPos,Transform.GetPosition(player.transformID),enemy.transformID)

		if dir.y ~= -1  then
			enemy.subPathtarget = dir
		end
	
	elseif enemy.subPathtarget ~= 0 then
			local pos = Transform.GetPosition(enemy.transformID)
			local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)

			--Transform.SetLookAt(enemy.transformID,direction)
			--vec3print(direction)
			Transform.SetFacing(enemy.transformID, player.transformID)
			
			pos.x = pos.x + direction.x * enemy.movementSpeed * dt
			--pos.y = pos.y + direction.y * enemy.movementSpeed * dt
			pos.z = pos.z + direction.z * enemy.movementSpeed * dt

			Transform.SetPosition(enemy.transformID,pos)

			if AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget) < 0.8 then
				enemy.subPathtarget = nil
			end
			--local dist = AI.distanceTransTrans(enemy.transformID,player.transformID)
	end


end

function state.followState.exit(enemy,player)
	AI.ClearAStar(enemy.transformID)
end


function state.positioningInnerState.enter(enemy,player)

	player.nrOfInnerCircleEnemies = player.nrOfInnerCircleEnemies + 1

	local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))

 	--Transform.SetLookAt(enemy.transformID,direction)
	Transform.SetFacing(enemy.transformID,player.transformID)

	enemy.insideInnerCircleRange = true
end

function state.positioningInnerState.update(enemy,player,dt,enemyManager)
	enemy.actionCountDown = enemy.actionCountDown - dt

	if enemy.subPathtarget ~= nil then
		local pos = Transform.GetPosition(enemy.transformID)
		local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)

		--Transform.SetLookAt(enemy.transformID,direction)
		Transform.SetFacing(enemy.transformID,player.transformID)
		
		pos.x = pos.x + direction.x * enemy.movementSpeed * dt
		pos.z = pos.z + direction.z * enemy.movementSpeed * dt
		
		Transform.SetPosition(enemy.transformID,pos)

		rangeTest = AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
		if rangeTest < 0.8 then
			enemy.subPathtarget = nil
			local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))
			--Transform.SetLookAt(enemy.transformID,direction)
			Transform.SetFacing(enemy.transformID,player.transformID)
		end
	else
		local dir = AI.NavigateMesh(enemy.transformID)
		if dir.y ~= -1 and enemy.pathTarget ~= nil  then
			enemy.subPathtarget = dir

		end
	end
		--- TIME TO DO ACTIONS
		length = AI.DistanceTransTrans(enemy.transformID,player.transformID)

		if length > player.innerCirclerange then
			player.nrOfInnerCircleEnemies = player.nrOfInnerCircleEnemies -1
			enemy.insideInnerCircleRange = false
			inState = FOLLOW_STATE
			changeToState(enemy,player,inState)
		else

			if enemyManager.actionEnemy < enemyManager.maxAttackingEnemies  then
				enemyManager.actionEnemy = enemyManager.actionEnemy +1
				randomNum = math.random(0, 1)
				if randomNum == 0 then
				
					inState = ATTACK_STATE 
					changeToState(enemy,player,inState)

				end
				if randomNum == 1 then
				
					inState = LEAP_STATE 
					changeToState(enemy,player,inState)

				end

			end
		end

end

function state.positioningInnerState.exit(enemy,player)
		AI.ClearAStar(enemy.transformID)
end

function state.positioningOuterState.enter(enemy,player)

	player.nrOfOuterCircleEnemies = player.nrOfOuterCircleEnemies +1
	local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))

	--Transform.SetLookAt(enemy.transformID,direction)
	Transform.SetFacing(enemy.transformID,player.transformID)
end

function state.positioningOuterState.update(enemy,player,dt)

	if (player.nrOfInnerCircleEnemies >= 1000) then
		if enemy.subPathtarget ~= nil then

			local pos = Transform.GetPosition(enemy.transformID)
				local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)

				--Transform.SetLookAt(enemy.transformID,direction)
				Transform.SetFacing(enemy.transformID,player.transformID)
			
				pos.x = pos.x + direction.x * enemy.movementSpeed * dt
				pos.z = pos.z + direction.z * enemy.movementSpeed * dt

				Transform.SetPosition(enemy.transformID,pos)

				rangeTest = AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
				if rangeTest < 0.9 then
					enemy.subPathtarget = nil
					local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))
					--Transform.SetLookAt(enemy.transformID,direction)
					Transform.SetFacing(enemy.transformID,player.transformID)
				end
		else
		local dir = AI.NavigateMesh(enemy.transformID)
			if dir.y ~= -1 and enemy.pathTarget ~= nil  then
				enemy.subPathtarget = dir
			end
		end
	else

		player.nrOfOuterCircleEnemies = player.nrOfOuterCircleEnemies -1
		inState = FOLLOW_STATE
		changeToState(enemy,player,inState)
	end

		
end

function state.positioningOuterState.exit(enemy,player)
	
end


function state.attackState.enter(enemy,player)
	enemy.animationController:doAttack()
	--enemy.attackCountdown = 1

	local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))


	--Transform.SetLookAt(enemy.transformID,direction)
	Transform.SetFacing(enemy.transformID,player.transformID)

	enemy.actionCountDown = 1.2
	enemy.subPathtarget = Transform.GetPosition(player.transformID)
end

function state.attackState.update(enemy,player,dt,enemyManager)

	length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)

	enemy.actionCountDown= enemy.actionCountDown - dt

	if length < enemy.range then
		if enemy.actionCountDown <0 then
			if player.transformID == player2.transformID then
				Network.SendDamagePacket(enemy.transformID, 12)
			else
				player:Hurt(12, enemy)
			end
			enemyManager.actionEnemy = enemyManager.actionEnemy -1
			inState = POSITIONING_INNER_STATE
			changeToState(enemy,player,inState)
		end
	else

		local pos = Transform.GetPosition(enemy.transformID)
		local direction = AI.NormalizeDir(enemy.transformID, Transform.GetPosition(player.transformID))
		
		--Transform.SetLookAt(enemy.transformID,direction)
		Transform.SetFacing(enemy.transformID,player.transformID)
		
		pos.x = pos.x + direction.x * enemy.movementSpeed * dt
		pos.z = pos.z + direction.z * enemy.movementSpeed * dt
		
		Transform.SetPosition(enemy.transformID,pos)
	end
	if length > 8 then
		enemyManager.actionEnemy = enemyManager.actionEnemy -1
		inState = FOLLOW_STATE
		changeToState(enemy,player,inState)
	end
end

------------NEWSTATE TEST WITH STOP------------------------
--function state.attackState.update(enemy,player,dt,enemyManager)
--	--print("X ",enemy.subPathtarget.x," Y ",enemy.subPathtarget.z)
--	--length =  AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
--	length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)
--
--	enemy.actionCountDown= enemy.actionCountDown - dt
--
--	print("length: " ,length)
--	if length < enemy.range then
--		if enemy.actionCountDown <0 then
--			player:Hurt(12)
			--enemyManager.actionEnemy = -1
--			inState = "PositioningInnerState" 
--			changeToState(enemy,player,inState)
--		end
--	else
--		length =  AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
--
--		if length > 1 then
--			local pos = Transform.GetPosition(enemy.transformID)
--			local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)
--		
--			Transform.SetLookAt(enemy.transformID,direction)
--		
--			pos.x = pos.x + direction.x * enemy.movementSpeed * dt
--			pos.z = pos.z + direction.z * enemy.movementSpeed * dt
--		
--			Transform.SetPosition(enemy.transformID,pos)
--		end
--
--		if enemy.actionCountDown <0 then
--			--player:Hurt(12)
			--enemyManager.actionEnemy = -1
--			inState = "FollowState" 
--			changeToState(enemy,player,inState)
--		end
--		
--	end
--		
--
--end

function state.attackState.exit(enemy,player)

	enemy.animationController:doWalk()
	
	player.nrOfInnerCircleEnemies = player.nrOfInnerCircleEnemies - 1
	enemy.subPathtarget = nil
end 


function state.leapState.enter(enemy,player)
	--enemy.animationState = 1
	enemy.animationController:doStartLeap()
	enemy.subPathtarget = Transform.GetPosition(player.transformID)
	enemy.actionCountDown = 1.0
end

function state.leapState.update(enemy,player,dt,enemyManager)
------StartAnim state

	length =  AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)

	if enemy.actionCountDown >0 and length >1 then

		enemy.actionCountDown= enemy.actionCountDown - dt
	
		if enemy.actionCountDown <0 then
			enemy.animationController:doLeap()
			enemy.subPathtarget = Transform.GetPosition(player.transformID)
			length =  AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
			enemy.tempVariable = length
			local pos = Transform.GetPosition(enemy.transformID)
			enemy.whatEver = pos.y
		end
	
---------------------------------------- Mid Flight
	elseif length >1 then

			--length =  AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)

				local pos = Transform.GetPosition(enemy.transformID)
				local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)
		
				Transform.SetLookAt(enemy.transformID,direction)
		
				pos.x = pos.x + direction.x * (enemy.movementSpeed+4) * dt
				pos.z = pos.z + direction.z * (enemy.movementSpeed+4) * dt

				local maxHeight = 12

				local checker =  length/enemy.tempVariable

				if checker > 0.5 then
					pos.y  = enemy.whatEver + (maxHeight * (1-checker))
				else
					pos.y  = enemy.whatEver + (maxHeight * (checker))
					enemy.animationController:doEndLeap()
				end

		
				Transform.SetPosition(enemy.transformID,pos)

			--if enemy.actionCountDown <0 then
			--	--player:Hurt(12)
			--	inState = "FollowState" 
			--	changeToState(enemy,player,inState)
			--end
		
		--end
--------------------------------------------
	else
		
		length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)
		if length < enemy.range then
				player:Hurt(12)
		end	

		enemyManager.actionEnemy = enemyManager.actionEnemy -1
		inState = POSITIONING_INNER_STATE
		changeToState(enemy,player,inState)
	end
		

end

function state.leapState.exit(enemy,player)
	enemy.animationController:doWalk()
	
	player.nrOfInnerCircleEnemies = player.nrOfInnerCircleEnemies - 1
	enemy.subPathtarget = nil
	enemy.actionCountDown = 1.5
end

function state.deadState.enter(enemy,player)
	enemy.actionCountDown = 12
	enemy.healthOrb = CreateHealthOrb()
	SpawnHealthOrb(enemy.healthOrb, Transform.GetPosition(enemy.transformID))
end

function state.deadState.update(enemy,player,dt)	
	enemy.actionCountDown= enemy.actionCountDown - dt	
	if enemy.actionCountDown > 10 then			
		local pos = Transform.GetPosition(enemy.transformID)
		pos.x = pos.x + math.random(-3,3) * dt
		pos.y = pos.y - 0.6 * dt
		pos.z = pos.z + math.random(-3,3)  * dt
		Transform.SetPosition(enemy.transformID,pos)
	else
		Transform.ActiveControl(enemy.transformID, false)
		SphereCollider.SetActive(enemy.sphereCollider, false)
	end
	if enemy.actionCountDown > 0 then
		if(UpdateHealthOrb(enemy.healthOrb, dt)) then	enemy.actionCountDown = -1	 end	
	else
		enemy.alive = false
		KillHealthOrb(enemy.healthOrb)
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

function changeToState(enemy,player,changeState)

	--print("CHANGE STATE")
	enemy.state.exit(enemy,player)

	if changeState == IDLE_STATE then
		enemy.state = state.idleState
		--print("Sending IdleState", enemy.transformID, 0)
		Network.SendAIStatePacket(enemy.transformID,0)
	end
	if changeState == FOLLOW_STATE then
		--print(Network.TestFunction())
		enemy.state = state.followState
		--print("Sending FollowState", enemy.transformID, 1)
		Network.SendAIStatePacket(enemy.transformID,1)
	end
	if changeState == ATTACK_STATE then
		enemy.state = state.attackState
		--print("Sending AttackState", enemy.transformID, 2)
		Network.SendAIStatePacket(enemy.transformID,2)
	end
	if changeState == LEAP_STATE then
		enemy.state = state.leapState
	end
	if changeState == POSITIONING_INNER_STATE then
		enemy.state = state.positioningInnerState
	end
	
	if changeState == POSITIONING_OUTER_STATE then
		enemy.state = state.positioningOuterState
	end

	if changeState == DEAD_STATE then
		enemy.state = state.deadState
		print("Sending DeadState", enemy.transformID, 3)
		Network.SendAIStatePacket(enemy.transformID,3)
	end 
	
	if changeState == DO_NOTHING_STATE then
		enemy.state = state.doNothingState
		--print("Sending DoNothingState", enemy.transformID, 4)
		Network.SendAIStatePacket(enemy.transformID,4)
	end 

	enemy.state.enter(enemy,player)
	enemy.stateName = changeState

end

baseReturn.changeToState = changeToState
baseReturn.state = state
baseReturn.inPlayerRange = inPlayerRange

return baseReturn