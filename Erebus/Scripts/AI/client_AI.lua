local baseReturn = {}

clientAIState = {idleState = {}, followState = {}, attackState = {}, deadState = {}, State = {}}


function clientAIState.idleState.enter(enemy, playerTarget)
	enemy.animationState = 1
end

function clientAIState.idleState.update(enemy, playerTarget, dt)
	--print("Update")
end

function clientAIState.idleState.exit(enemy, playerTarget)

end

function clientAIState.followState.enter(enemy, playerTarget)
	--print("Client AI Walking")
	enemy.animationController:doWalk()
	enemy.animationState = 2
	--AI.FollowPlayer(player.transformID)
end

function clientAIState.followState.update(enemy, playerTarget, dt)
	--Transform.Follow(player.transformID, enemy.transformID, enemy.movementSpeed , dt)
end

function clientAIState.followState.exit(enemy, playerTarget)

end



function clientAIState.attackState.enter(enemy, playerTarget)
	--print("Client AI Attacking")

	enemy.animationController:doAttack()

	enemy.animationState = 3
	enemy.actionCountDown = 1.2
end

function clientAIState.attackState.update(enemy, playerTarget, dt)
	-- Empty DamagePacket queue and apply the values to player2
	local newDamageVal, dmg_transformID, dmg_damage = Network.GetDamagePacket()
	while newDamageVal == true do 
		player:Hurt(dmg_damage, dmg_transformID)
		newDamageVal, dmg_transformID, dmg_damage = Network.GetDamagePacket()
	end
end

function clientAIState.attackState.exit(enemy, playerTarget)

end 

function clientAIState.deadState.enter(enemy, playerTarget)
	--print("Client enemy died", enemy.transformID)
	--enemy.animationController:doNothing()

	enemy:Kill()
end

function clientAIState.deadState.update(enemy, playerTarget)
end

function clientAIState.deadState.exit(enemy, playerTarget)

end 

function setAIState(enemy, playerTarget, transformID, aiState)
	--print("Enemy", enemy.transformID)
	--print("Client AI ID", enemy.transformID)
	if aiState == 0 then--IdleState
		--print("Received IdleState", transformID, aiState)
		enemy.state = clientAIState.idleState
	end
	if aiState == 1 then--FollowState
		--print("Received FollowState", transformID, aiState)
		enemy.state = clientAIState.followState
	end
		
	if aiState == 2 then--AttackState
		--print("Received AttackState", transformID, aiState)
		enemy.state = clientAIState.attackState
	end
			
	if aiState == 3 then--DeadState
		--print("Received DeadState", transformID, aiState)
		enemy.state = clientAIState.deadState
	end

	enemy.state.enter(enemy, playerTarget)
end

baseReturn.setAIState = setAIState
baseReturn.clientAIState = clientAIState

return baseReturn