local baseReturn ={}

state = {idleState = {},followState = {},attackState = {}}


function state.idleState.enter(enemy,player)

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
	print("Enter FOLLOW")
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

			pos.x = pos.x + direction.x * enemy.movementSpeed * dt
			--pos.y = pos.y + direction.y * enemy.movementSpeed * dt
			pos.z = pos.z + direction.z * enemy.movementSpeed * dt

			Transform.SetPosition(enemy.transformID,pos)

			if AI.DistanceTransPos(enemy.transformID,enemy.target) < 0.2 then
				enemy.target = nil
				print("DISTANCE")
			end

			--local dist = AI.distanceTransTrans(enemy.transformID,player.transformID)
	end

	length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)

		if length >100 then
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

end

function state.attackState.update(enemy,player)
	length =  AI.DistanceTransTrans(enemy.transformID,player.transformID)

	if length > enemy.range then
		inState = "FollowState" 
		changeToState(enemy,player,inState)
	end
end

function state.attackState.exit(enemy,player)

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

	enemy.state.enter(enemy,player)
end

baseReturn.state = state

return baseReturn