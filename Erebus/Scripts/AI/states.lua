local baseReturn ={}

state = {stateName = " ",idleState = {},followState = {},attackState = {},positioningInnerState = {},positioningOuterState = {},actionState = {},deadState = {},State = {}}


function state.idleState.enter(enemy,player)
	enemy.animationState = 1
end

function state.idleState.update(enemy,player,dt,enemyManager)
	
	length = AI.DistanceTransTrans(enemy.transformID,player.transformID)
	
	if length <enemy.visionRange then
		inState = "FollowState" 
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
	--print("Enter FOLLOW")
	enemy.animationController:doWalk()
	
	--AI.FollowPlayer(player.transformID)
end

function state.followState.update(enemy,player,dt)
	--Transform.Follow(player.transformID, enemy.transformID, enemy.movementSpeed , dt)
	if enemy.subPathtarget == nil then
		length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)
		--print("Follow",length)
		if length >enemy.visionRange then
			inState = "IdleState" 
			changeToState(enemy,player,inState)
		end
		if player.nrOfInnerCircleEnemies <3 then 
			if length < player.innerCirclerange then
	
				inState = "PositioningInnerState" 
				changeToState(enemy,player,inState)
	
				do return end
			end
		else
			if length < player.outerCirclerange then
				inState = "PositioningOuterState" 
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

			Transform.SetLookAt(enemy.transformID,direction)
			
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

function state.actionState.enter(enemy,player)
	enemy.animationState = 1

end

function state.actionState.update(enemy,player,dt)


end

function state.actionState.exit(enemy,player)

end

function state.positioningInnerState.enter(enemy,player)

	player.nrOfInnerCircleEnemies = player.nrOfInnerCircleEnemies + 1

	local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))

 	Transform.SetLookAt(enemy.transformID,direction)

	enemy.insideInnerCircleRange = true
end

function state.positioningInnerState.update(enemy,player,dt,enemyManager)

	enemy.actionCountDown = enemy.actionCountDown- dt
	if enemy.subPathtarget ~= nil then
		local pos = Transform.GetPosition(enemy.transformID)
		local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)

		Transform.SetLookAt(enemy.transformID,direction)
		
		pos.x = pos.x + direction.x * enemy.movementSpeed * dt
		pos.z = pos.z + direction.z * enemy.movementSpeed * dt
		
		Transform.SetPosition(enemy.transformID,pos)

		rangeTest = AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
		if rangeTest < 0.8 then
			enemy.subPathtarget = nil
			local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))
			Transform.SetLookAt(enemy.transformID,direction)
		end
	else
		local dir = AI.NavigateMesh(enemy.transformID)
		if dir.y ~= -1 and enemy.pathTarget ~= nil  then
			enemy.subPathtarget = dir

		end
	end

--	--- TIME TO DO ACTIONS
		length = AI.DistanceTransTrans(enemy.transformID,player.transformID)

		if length > player.innerCirclerange then
			player.nrOfInnerCircleEnemies = player.nrOfInnerCircleEnemies -1
			enemy.insideInnerCircleRange = false
			inState = "FollowState" 
			changeToState(enemy,player,inState)
		else

			if enemyManager.actionEnemy == -1 and enemy.actionCountDown<0 then
				enemyManager.actionEnemy = enemy.transformID
				randomNum = math.random(0, 0)
				if randomNum == 0 then
				
					inState = "AttackState" 
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

	Transform.SetLookAt(enemy.transformID,direction)
	
end

function state.positioningOuterState.update(enemy,player,dt)

	if(player.nrOfInnerCircleEnemies >= 3) then
		if enemy.subPathtarget ~= nil then

			local pos = Transform.GetPosition(enemy.transformID)
				local direction = AI.NormalizeDir(enemy.transformID,enemy.subPathtarget)

				Transform.SetLookAt(enemy.transformID,direction)
			
				pos.x = pos.x + direction.x * enemy.movementSpeed * dt
				pos.z = pos.z + direction.z * enemy.movementSpeed * dt

				Transform.SetPosition(enemy.transformID,pos)

				rangeTest = AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
				if rangeTest < 0.9 then
					enemy.subPathtarget = nil
					local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))
					Transform.SetLookAt(enemy.transformID,direction)
				end
		else
		local dir = AI.NavigateMesh(enemy.transformID)
			if dir.y ~= -1 and enemy.pathTarget ~= nil  then
				enemy.subPathtarget = dir
			end
		end
	else

		player.nrOfOuterCircleEnemies = player.nrOfOuterCircleEnemies -1
		inState = "FollowState" 
		changeToState(enemy,player,inState)
	end

		
end

function state.positioningOuterState.exit(enemy,player)
	
end


function state.attackState.enter(enemy,player)
	enemy.animationController:doAttack()
	--enemy.attackCountdown = 1

	local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))


	Transform.SetLookAt(enemy.transformID,direction)

	enemy.actionCountDown = 1.2
end

function state.attackState.update(enemy,player,dt,enemyManager)

	length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)

	enemy.actionCountDown= enemy.actionCountDown - dt

	if length < enemy.range then
		if enemy.actionCountDown <0 then
			--player:Hurt(12)
			enemyManager.actionEnemy = -1

			inState = "PositioningInnerState" 
			changeToState(enemy,player,inState)
		end
	else

		local pos = Transform.GetPosition(enemy.transformID)
		local direction = AI.NormalizeDir(enemy.transformID, Transform.GetPosition(player.transformID))
		
		Transform.SetLookAt(enemy.transformID,direction)
		
		pos.x = pos.x + direction.x * enemy.movementSpeed * dt
		pos.z = pos.z + direction.z * enemy.movementSpeed * dt
		
		Transform.SetPosition(enemy.transformID,pos)
	end
	if length > 8 then
			enemyManager.actionEnemy = -1
		inState = "FollowState" 
		changeToState(enemy,player,inState)
	end
end

function state.attackState.exit(enemy,player)

	enemy.animationController:doWalk()

	enemy.actionCountDown = 1
	player.nrOfInnerCircleEnemies = player.nrOfInnerCircleEnemies - 1

end 

function state.deadState.enter(enemy,player)
	print("DEAD")
end

function state.deadState.update(enemy,player)

end

function state.deadState.exit(enemy,player)

end 

function changeToState(enemy,player,changeState)

	--print("CHANGE STATE")
	enemy.state.exit(enemy,player)

	if changeState == "IdleState" then
		enemy.state = state.idleState
		Network.SendAIStatePacket(enemy.transformID,0)

	end

	if changeState == "FollowState" then
		--print(Network.TestFunction())
		enemy.state = state.followState
		Network.SendAIStatePacket(enemy.transformID,1)
	end
	if changeState == "AttackState" then
		enemy.state = state.attackState
		Network.SendAIStatePacket(enemy.transformID,2)
	end
	if changeState == "ActionState" then
		enemy.state = state.actionState
	end
	if changeState == "PositioningInnerState" then
		enemy.state = state.positioningInnerState
	end
	
	if changeState == "PositioningOuterState" then
		enemy.state = state.positioningOuterState
	end

	if changeState == "DeadState" then
		enemy.state = state.deadState
		Network.SendAIStatePacket(enemy.transformID,3)
	end 

	enemy.state.enter(enemy,player)
	enemy.state.stateName = changeState

end

baseReturn.changeToState = changeToState
baseReturn.state = state
baseReturn.inPlayerRange = inPlayerRange

return baseReturn