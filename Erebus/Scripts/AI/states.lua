local baseReturn ={}

state = {idleState = {},followState = {},attackState = {},deadState = {},State = {}}


function state.idleState.enter(enemy,player)
enemy.animationState = 1
end

function state.idleState.update(enemy,player,dt)
	
	length = AI.DistanceTransTrans(enemy.transformID,player.transformID)

	if length <30 then
		inState = "FollowState" 
		changeToState(enemy,player,inState)
	end

end

function state.idleState.exit(enemy,player)

end

function state.followState.enter(enemy,player)
	--print("Enter FOLLOW")
	enemy.animationState = 2
	--AI.FollowPlayer(player.transformID)
end

function state.followState.update(enemy,player,dt)
	--Transform.Follow(player.transformID, enemy.transformID, enemy.movementSpeed , dt)
	if enemy.target == nil then
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

			if AI.DistanceTransPos(enemy.transformID,enemy.target) < 0.1 then
				enemy.target = nil
				--print("DISTANCE")
			end

			--local dist = AI.distanceTransTrans(enemy.transformID,player.transformID)
	end

	length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)

		if length >200 then
			inState = "IdleState" 
			changeToState(enemy,player,inState)
		end

		if length < enemy.range then
			inState = "AttackState" 
			changeToState(enemy,player,inState)
		end
end

function state.followState.exit(enemy,player)

end



function state.attackState.enter(enemy,player)
enemy.animationState = 3
end

function state.attackState.update(enemy,player)
	length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)

	if length > enemy.range then
		inState = "FollowState" 
		changeToState(enemy,player,inState)
	end

	if length < enemy.range then
		player.health = player.health -5;
	end
end

function state.attackState.exit(enemy,player)

end 

function state.deadState.enter(enemy,player)
	--print("DEAD")
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
			enemy.state = state.followState
	end
	if changeState == "AttackState" then
			enemy.state = state.attackState
	end

	if changeState == "DeadState" then
			enemy.state = state.deadState
	end 

	enemy.state.enter(enemy,player)
end

baseReturn.changeToState = changeToState
baseReturn.state = state

return baseReturn