local baseReturn = {}

clientAIState = {idleState = {}, followState = {}, attackState = {}, deadState = {}, State = {}}


function clientAIState.idleState.enter(enemy, player)
	enemy.animationState = 1
end

function clientAIState.idleState.update(enemy, player, dt)
	--print("Update")
end

function clientAIState.idleState.exit(enemy, player)

end

function clientAIState.followState.enter(enemy, player)
	print("Client AI Walking")
	enemy.animationController:doWalk()
	enemy.animationState = 2
	--AI.FollowPlayer(player.transformID)
end

function clientAIState.followState.update(enemy, player, dt)
	--Transform.Follow(player.transformID, enemy.transformID, enemy.movementSpeed , dt)
end

function clientAIState.followState.exit(enemy, player)

end



function clientAIState.attackState.enter(enemy, player)
	print("Client AI Attacking")

	enemy.animationController:doAttack()

	enemy.animationState = 3
	enemy.attackCountdown = 1
end

function clientAIState.attackState.update(enemy, player, dt)

end

function clientAIState.attackState.exit(enemy, player)

end 

function clientAIState.deadState.enter(enemy, player)
	print("Client enemy died", enemy.transformID)
	enemy.animationController:doNothing()
end

function clientAIState.deadState.update(enemy, player)
end

function clientAIState.deadState.exit(enemy, player)

end 

function changeToStateClient(enemy, player, changeState)

	enemy.state.exit(enemy,player)

	if changeState == "IdleState" then
		enemy.state = clientAIState.idleState
	end
	if changeState == "FollowState" then
		enemy.state = clientAIState.followState
	end
	if changeState == "AttackState" then
		enemy.state = clientAIState.attackState
	end
	if changeState == "DeadState" then	
		enemy.state = clientAIState.deadState
	end 

	enemy.state.enter(enemy,player)
end


function getAIStatePacket(enemy, player)
	netAIValue, transformID, aiState = Network.GetAIStatePacket()

	--Update state of the enemy
	if netAIValue == true then
		--print("Enemy", enemy.transformID)
		--print("AI transformpacket", transformID, aiState)
		--print("Client AI ID", enemy.transformID)
		if aiState == 0 then--IdleState
			enemy.state = clientAIState.idleState
		end
		
		if aiState == 1 then--FollowState
			enemy.state = clientAIState.followState
		end
		
		if aiState == 2 then--AttackState
			enemy.state = clientAIState.attackState
		end
			
		if aiState == 3 then--DeadState
			enemy.state = clientAIState.deadState
		end

		enemy.state.enter(enemy, player)
	end
end


function getAITransformPacket()	
	--Update the transform of the enemy
	newtransformvalue, id, pos_x, pos_y, pos_z, lookAt_x, lookAt_y, lookAt_z, rotation_x, rotation_y, rotation_z = Network.GetAITransformPacket()

	if newtransformvalue == true then
		Transform.SetPosition(id, {x=pos_x, y=pos_y, z=pos_z})
		Transform.SetLookAt(id, {x=lookAt_x, y=lookAt_y, z=lookAt_z})
		Transform.SetRotation(id, {x=rotation_x, y=rotation_y, z=rotation_z})
	end
end

baseReturn.changeToStateClient = changeToStateClient
baseReturn.getAIStatePacket = getAIStatePacket
baseReturn.getAITransformPacket = getAITransformPacket
baseReturn.clientAIState = clientAIState

return baseReturn