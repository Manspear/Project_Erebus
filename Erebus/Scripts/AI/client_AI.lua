local baseReturn = {}

clientAIState = {idleState = {}, followState = {}, attackState = {}, deadState = {}, doNothingState = {}, leapState = {}, dummyState = {}, State = {}}


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
	enemy.animationController:doWalk()
end 

function clientAIState.leapState.enter(enemy,playerTarget)
	enemy.animationController:doStartLeap()
	enemy.subPathtarget = Transform.GetPosition(player.transformID)
	enemy.actionCountDown = 1.0
end

function clientAIState.leapState.update(enemy,playerTarget, dt)
	length =  AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)

	if enemy.actionCountDown >0 and length >1 then

		enemy.actionCountDown= enemy.actionCountDown - dt
	
		if enemy.actionCountDown <0 then
			enemy.animationController:doLeap()
			enemy.subPathtarget = Transform.GetPosition(player.transformID)
			length =  AI.DistanceTransPos(enemy.transformID,enemy.subPathtarget)
			enemy.tempVariable = length
		end
	
	---------------------------------------- Mid Flight
	elseif length >1 then
		local checker =  length/enemy.tempVariable

		if checker <= 0.5 then

		else
			enemy.animationController:doEndLeap()
		end
	end

	local newDamageVal, dmg_transformID, dmg_damage = Network.GetDamagePacket()
	while newDamageVal == true do 
		player:Hurt(dmg_damage, dmg_transformID)
		newDamageVal, dmg_transformID, dmg_damage = Network.GetDamagePacket()
	end
end

function clientAIState.leapState.exit(enemy,playerTarget)
	enemy.animationController:doWalk()
	enemy.subPathtarget = nil
	enemy.actionCountDown = 1.5
end 

function clientAIState.deadState.enter(enemy, playerTarget)
	--print("Client enemy died", enemy.transformID)
	--enemy.animationController:doNothing()
	enemy.actionCountDown = 3
	SpawnNewHealthOrb(Transform.GetPosition(enemy.transformID))
	enemy:Kill()
end

function clientAIState.deadState.update(enemy, playerTarget, dt)
	enemy.actionCountDown= enemy.actionCountDown - dt	
	if enemy.actionCountDown > 0 then			
		local pos = Transform.GetPosition(enemy.transformID)
		pos.x = pos.x + math.random(-3,3) * dt
		pos.y = pos.y - 0.6 * dt
		pos.z = pos.z + math.random(-3,3)  * dt
		Transform.SetPosition(enemy.transformID,pos)
	else
		Transform.ActiveControl(enemy.transformID, false)
		SphereCollider.SetActive(enemy.sphereCollider, false)
	end
end

function clientAIState.deadState.exit(enemy, playerTarget)

end 

function clientAIState.doNothingState.enter(enemy,playerTarget)

end

function clientAIState.doNothingState.update(enemy,playerTarget, dt)

end

function clientAIState.doNothingState.exit(enemy,playerTarget)

end 

function state.dummyState.enter(enemy,playerTarget)

end

function state.dummyState.update(enemy,playerTarget)

end

function state.dummyState.exit(enemy,playerTarget)

end 

function setAIState(enemy, playerTarget, aiState)
	--print("Enemy", enemy.transformID)
	--print("Client AI ID", enemy.transformID)
	if aiState == IDLE_STATE then--IdleState
		--print("Received IdleState", enemy.transformID, aiState)
		enemy.state = clientAIState.idleState
	end
	if aiState == FOLLOW_STATE then--FollowState
		print("Received FollowState", enemy.transformID, aiState)
		enemy.state = clientAIState.followState
	end
		
	if aiState == ATTACK_STATE then--AttackState
		--print("Received AttackState", enemy.transformID, aiState)
		enemy.state = clientAIState.attackState
	end

	if aiState == LEAP_STATE then--leapState
		--print("Received leapState", enemy.transformID, aiState)
		enemy.state = clientAIState.leapState
	end
			
	if aiState == DEAD_STATE then--DeadState
		--print("Received DeadState", enemy.transformID, aiState)
		enemy.state = clientAIState.deadState
	end	

	if aiState == DO_NOTHING_STATE then--DoNothingState
		--print("Received DoNothingState", enemy.transformID, aiState)
		enemy.state = clientAIState.doNothingState
	end
	
	if aiState == DUMMY_STATE then
		enemy.state = state.dummyState
	end

	enemy.state.enter(enemy, playerTarget)
	enemy.stateName = aiState
end

baseReturn.setAIState = setAIState
baseReturn.clientAIState = clientAIState

return baseReturn