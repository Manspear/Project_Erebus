local baseReturn ={}

state = {stateName = " ",idleState = {},followState = {},attackState = {},positioningInnerState = {},positioningOuterState = {},actionState = {},deadState = {},State = {}}


function state.idleState.enter(enemy,player)
enemy.animationState = 1
end

function state.idleState.update(enemy,player,dt,enemyManager)
	
	length = AI.DistanceTransTrans(enemy.transformID,player.transformID)

	if length <enemy.visionRange and length > player.outerCirclerange then
		inState = "FollowState" 
		changeToState(enemy,player,inState)
	end

end

function state.idleState.exit(enemy,player)
	
end

function state.followState.enter(enemy,player)
	print("Enter FOLLOW")
	enemy.animationState = 2
	
	--AI.FollowPlayer(player.transformID)
end

function state.followState.update(enemy,player,dt)
	--Transform.Follow(player.transformID, enemy.transformID, enemy.movementSpeed , dt)
	if enemy.target == nil then
		length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)

		if length >enemy.visionRange then
			inState = "IdleState" 
			changeToState(enemy,player,inState)
		end
		if player.nrOfInnerCircleEnemies <3 then 
			if length < player.innerCirclerange then

			print("DESAD")
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
		
		if dir.y ~= -1  then
			enemy.target = dir
		end
	
	elseif enemy.target ~= 0 then
			local pos = Transform.GetPosition(enemy.transformID)
			local direction = AI.NormalizeDir(enemy.transformID,enemy.target)

			Transform.SetLookAt(enemy.transformID,direction)
			
			pos.x = pos.x + direction.x * enemy.movementSpeed * dt
			--pos.y = pos.y + direction.y * enemy.movementSpeed * dt
			pos.z = pos.z + direction.z * enemy.movementSpeed * dt

			Transform.SetPosition(enemy.transformID,pos)

			if AI.DistanceTransPos(enemy.transformID,enemy.target) < 0.8 then
				enemy.target = nil
			end
			--local dist = AI.distanceTransTrans(enemy.transformID,player.transformID)
	end


end

function state.followState.exit(enemy,player)

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
end

function state.positioningInnerState.update(enemy,player,dt,enemyManager)
	
	enemy.actionCountDown = enemy.actionCountDown- dt
	if enemy.target ~= nil then
		local pos = Transform.GetPosition(enemy.transformID)

		local direction = AI.NormalizeDir(enemy.transformID,enemy.target)

		Transform.SetLookAt(enemy.transformID,direction)
			
		pos.x = pos.x + direction.x * enemy.movementSpeed * dt
		--pos.y = pos.y + direction.y * enemy.movementSpeed * dt
		pos.z = pos.z + direction.z * enemy.movementSpeed * dt

		Transform.SetPosition(enemy.transformID,pos)

		rangeTest = AI.DistanceTransPos(enemy.transformID,enemy.target)
		if rangeTest < 0.9 then
			enemy.target = nil
			local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))
			Transform.SetLookAt(enemy.transformID,direction)
		end
	else

	--- TIME TO DO ACTIONS
		length = AI.DistanceTransTrans(enemy.transformID,player.transformID)

		if length > player.innerCirclerange then
			player.nrOfInnerCircleEnemies = player.nrOfInnerCircleEnemies -1
			inState = "FollowState" 
			changeToState(enemy,player,inState)
		end	

		if enemyManager.actionEnemy == -1 then

			enemyManager.actionEnemy = enemy.transformID
			enemy.actionCountDown = enemy.maxActionCountDown
			randomNum = math.random(0, 3)
			if randomNum == 0 then
				
				inState = "AttackState" 
				changeToState(enemy,player,inState)
			end
			--if randomNum ==1 then
			--	inState = "FollowState" 
			--	changeToState(enemy,player,inState)
			--	end
		end

	end
end

function state.positioningInnerState.exit(enemy,player)
	
end

function state.positioningOuterState.enter(enemy,player)

	player.nrOfOuterCircleEnemies = player.nrOfOuterCircleEnemies +1
	local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))

	Transform.SetLookAt(enemy.transformID,direction)
	
end

function state.positioningOuterState.update(enemy,player,dt)
	
	if(player.nrOfInnerCircleEnemies >= 3) then
		if enemy.target ~= nil then

			local pos = Transform.GetPosition(enemy.transformID)

				--print("I'm in outer circle")
				local direction = AI.NormalizeDir(enemy.transformID,enemy.target)

				Transform.SetLookAt(enemy.transformID,direction)
			
				pos.x = pos.x + direction.x * enemy.movementSpeed * dt
				--pos.y = pos.y + direction.y * enemy.movementSpeed * dt
				pos.z = pos.z + direction.z * enemy.movementSpeed * dt

				Transform.SetPosition(enemy.transformID,pos)

				rangeTest = AI.DistanceTransPos(enemy.transformID,enemy.target)
				if rangeTest < 0.9 then
					enemy.target = nil
					local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))
					Transform.SetLookAt(enemy.transformID,direction)
				end
		else
			length = AI.DistanceTransTrans(enemy.transformID,player.transformID)

			if length > player.outerCirclerange then
				player.nrOfOuterCircleEnemies = player.nrOfOuterCircleEnemies -1
				inState = "FollowState" 
				changeToState(enemy,player,inState)
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
	enemy.animationState = 3
	--enemy.attackCountdown = 1

	local direction = AI.NormalizeDir(enemy.transformID,Transform.GetPosition(player.transformID))


	Transform.SetLookAt(enemy.transformID,direction)
end

function state.attackState.update(enemy,player,dt)
	length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)
	--enemy.attackCountdown = enemy.attackCountdown - dt
	--if length > enemy.range then
	--	inState = "FollowState" 
	--	changeToState(enemy,player,inState)
	--end

	if length < enemy.range then
		--enemy.attackCountdown = 1
		player:Hurt(12)
		inState = "PositioningInnerState" 
		changeToState(enemy,player,inState)
	end
end

function state.attackState.exit(enemy,player)

end 

function state.deadState.enter(enemy,player)
	print("DEAD")
end

function state.deadState.update(enemy,player)

end

function state.deadState.exit(enemy,player)

end 

function changeToState(enemy,player,changeState)

	
	enemy.state.exit(enemy,player)

	if changeState == "IdleState" then
			enemy.state = state.idleState
	end

	if changeState == "FollowState" then
		--print(Network.TestFunction())

			enemy.state = state.followState
	end
	if changeState == "AttackState" then
			enemy.state = state.attackState
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
	end 

	enemy.state.enter(enemy,player)
	enemy.state.stateName = changeState

end

baseReturn.changeToState = changeToState
baseReturn.state = state
baseReturn.inPlayerRange = inPlayerRange

return baseReturn