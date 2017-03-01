local aiScript = require("Scripts.AI.BasicEnemyAI")
local stateScript = require("Scripts.AI.states") 
local clientAIScript = require("Scripts.AI.client_AI")
IDLE_STATE = 0
ATTACK_STATE = 1
LEAP_STATE = 2
POSITIONING_INNER_STATE = 3
POSITIONING_OUTER_STATE = 4
FOLLOW_STATE = 5
DEAD_STATE = 6
DO_NOTHING_STATE = 7
RUN_AWAY_STATE = 8
DUMMY_STATE = 9

AI_TRANSFORM_UPDATED = false
INTERPOLATING_AI_TRANSFORM = false
INTERPOLATION_AI_ITERATIONS = 0
INTERPOLATION_AI_NR_OF_STEPS = 2

MAX_ENEMIES = 10
ENEMY_MELEE = 1
ENEMY_RANGED = 2
ENEMY_DUMMY = 3
enemies = {}

COUNTDOWN = -1
--tempPlayerPosition = Transform.GetPosition(player.transformID)

SFX_AGGRO = "Goblin/Voice/Goblin laugh aggro.ogg"
SFX_ATTACK = "Goblin/Voice/albin goblin - attack3.ogg"
SFX_HURT = "Goblin/Voice/albin goblin alerted.ogg"
SFX_DEAD = { "Goblin/Voice/albin goblin - death.ogg", "Goblin/Machine/Goblin Machine Dead.ogg"}

ENEMY_HEALTHBAR_WIDTH = 2
ENEMY_HEALTHBAR_HEIGHT = 0.15



function CreateEnemy(type, position, element)
	assert( type == ENEMY_MELEE or type == ENEMY_RANGED or type == ENEMY_DUMMY, "Invalid enemy type." )

	local i = #enemies+1
	enemies[i] = {}
	enemies[i].timeScalar = 1.0
	enemies[i].type = type
	enemies[i].elementType = element or NEUTRAL
	--enemies[i].transformID = Transform.Bind()
	enemies[i].movementSpeed = 8--math.random(5,20)
	enemies[i].maxHealth = 20
	enemies[i].health = enemies[i].maxHealth
	enemies[i].alive = true
	enemies[i].effects = {}
	enemies[i].attackCountdown = 0
	enemies[i].soundID = {-1, -1, -1} --aggro, atk, hurt
	enemies[i].healthbar = UI.load(0, 0, 0, ENEMY_HEALTHBAR_WIDTH, ENEMY_HEALTHBAR_HEIGHT);
	enemies[i].currentHealth = enemies[i].health
	enemies[i].hurtCountdown = 0

	enemies[i].damagedTint = {r=1, g=0, b=0, a=0}
	enemies[i].damagedTintDuration = 0.3

	enemies[i].new_transform_interpolate = {position = {x=0, y=0, z=0}, lookAt = {x=0, y=0, z=0}, rotation = {x=0, y=0, z=0}}
	enemies[i].goal_transform_interpolate = {position = {x=0, y=0, z=0}, lookAt = {x=0, y=0, z=0}, rotation = {x=0, y=0, z=0}}
	enemies[i].start_transform_interpolate = {position = {x=0, y=0, z=0}, lookAt = {x=0, y=0, z=0}, rotation = {x=0, y=0, z=0}}

	enemies[i].visionRange = 100
	enemies[i].subPathtarget = nil
	enemies[i].pathTarget = nil

	enemies[i].insideInnerCircleRange = false

	enemies[i].lastPos = Transform.GetPosition(enemies[i].transformID)
	enemies[i].maxActionCountDown = 3
	enemies[i].actionCountDown = 3

	enemies[i].animationState = 1
	enemies[i].range = 4
	enemies[i].target = nil

	enemies[i].playerTarget = player

	enemies[i].animationState = 1
	enemies[i].range = 4

	enemies[i].tempVariable = 0

	enemies[i].modelName = ""
	if type == ENEMY_MELEE then
		if enemies[i].elementType == NEUTRAL then
			enemies[i].modelName = "Models/Goblin.model"
		elseif enemies[i].elementType == FIRE then
			enemies[i].modelName = "Models/Fire_Goblin.model"
		elseif enemies[i].elementType == NATURE then
			enemies[i].modelName = "Models/Grass_Goblin.model"
		elseif enemies[i].elementType == ICE then
			enemies[i].modelName = "Models/Ice_Goblin.model"
		end
	elseif type== ENEMY_DUMMY then
		enemies[i].modelName = "Models/Dummy.model"
	else
		enemies[i].modelName = "Models/Goblin.model" --TODO: Change to the model for the ranged enemy
	end

	local model = Assets.LoadModel(enemies[i].modelName)

	assert( model, "Failed to load model Models/Goblin.model" )

	enemies[i].animationController = CreateEnemyController(enemies[i])
	enemies[i].transformID = Gear.BindAnimatedInstance(model, enemies[i].animationController.animation)

	enemies[i].Hurt = function(self, damage, source, element)
		local pos = Transform.GetPosition(self.transformID)

		if source ~= player2 then
			if Network.GetNetworkHost() == true then
				if self.alive == true then
					damage = self.elementType ~= element and damage or damage * 0.5
					self.health = self.health - damage
					--print("ID:", self.transformID, "Sending new health:", self.health)
					Network.SendAIHealthPacket(self.transformID, self.health)
					self.damagedTint = {r = FIRE == element and 1, g = NATURE == element and 1, b = ICE == element and 1, a = 1}
					self.soundID[3] = Sound.Play(SFX_HURT, 1, pos)
					if element then
						Gear.PrintDamage(damage,element-1, pos.x, pos.y+1, pos.z )
					end

					if self.health < 1 and self.stateName ~= DUMMY_STATE and self.stateName ~= DEAD_STATE then

						--print("Dead for host", enemies[i].transformID)
						self.health = 0
						self:Kill()
					elseif self.health < 1 and self.stateName == DUMMY_STATE  then
						self.health = self.maxHealth
						self.currentHealth = self.maxHealth
					end
				end
			else
				--print("Sending damage", self.transformID, damage)
				Network.SendDamagePacket(self.transformID, damage)
			end
		end		
	end

	if Network.GetNetworkHost() == true then
		enemies[i].ChangeToState = function(self,inState)
			stateScript.changeToState(self, player, inState)
		end
	else
		enemies[i].ChangeToState = function(self,inState)
			clientAIScript.setAIState(self, player, inState)
		end
	end

	enemies[i].Kill = function(self)
		local pos = Transform.GetPosition(self.transformID)
		SphereCollider.SetActive(self.sphereCollider, false)
		for i = 1, #self.soundID do Sound.Stop(self.soundID[i]) end
		for i = 1, #SFX_DEAD do Sound.Play(SFX_DEAD[i], 1, pos) end

		if self.stateName == LEAP_STATE or self.stateName == ATTACK_STATE or self.stateName == POSITIONING_INNER_STATE or self.stateName == POSITIONING_OUTER_STATE then
			aiScript.enemyManager.actionEnemy = enemyManager.actionEnemy -1
			player.nrOfInnerCircleEnemies = player.nrOfInnerCircleEnemies  -1
			self.insideInnerCircleRange = false
		end

		AI.ClearMap(enemies[i].lastPos,0)

		if Network.GetNetworkHost() == true then
			inState = DEAD_STATE
			stateScript.changeToState(self, player, inState)
		end

		self.animationController:AnimationUpdate(0) -- play death animation
	end

	enemies[i].Apply = function(self, effect)
		--if self.alive == true then
			table.insert(self.effects, effect)
			effect:Apply(self)
		--	enemies[i].animationController:AnimationUpdate(0) -- play death animation
		--end
	end

	enemies[i].Spawn = function(self,position)
		self.alive = true
		self.health = 20
		self.position.x = position.x
		self.position.y = position.y
		self.position.z = position.z
		Transform.ActiveControl(self.transformID,true)
	end
	
	if Network.GetNetworkHost() == true then
		enemies[i].SetState = function(self,inState)
			stateScript.changeToState(self, player, inState)
		end
	else
		enemies[i].SetState = function(self,inState)
			clientAIScript.setAIState(self, player, inState)
		end
	end

	Transform.SetPosition(enemies[i].transformID, position)
	enemies[i].sphereCollider = SphereCollider.Create(enemies[i].transformID)
	enemies[i].sphereCollider:SetRadius(2)
	CollisionHandler.AddSphere(enemies[i].sphereCollider)

	if Network.GetNetworkHost() == true then
		enemies[i].state =  stateScript.state.idleState
		if type == ENEMY_DUMMY then
			stateScript.changeToState(enemies[i], player, DUMMY_STATE)
		end
	else
		enemies[i].state = clientAIScript.clientAIState.idleState
		if type == ENEMY_DUMMY then
			clientAIScript.setAIState(enemies[i], player, DUMMY_STATE)
		end
	end

	return enemies[i]
end	

function UnloadEnemies()
	AI.Unload()

	for i=1, #enemies do
		DestroyEnemyController(enemies[i].animationController)
		Gear.UnbindInstance(enemies[i].transformID)
		Assets.UnloadModel( enemies[i].modelName )
	end
	enemies = {}
end

function DestroyEnemy(enemy)
	Transform.ActiveControl(enemy.transformID, false)
	SphereCollider.SetActive(enemy.sphereCollider, false)
	enemy.alive = false
end
function UpdateEnemies(dt)

	--for i = 1, #heightmaps do
	--AI.DrawDebug()
	--end

	for i = 1, #enemies do
		if enemies[i].damagedTint.a > 0 then
			enemies[i].damagedTint.a = enemies[i].damagedTint.a - (dt / enemies[i].damagedTintDuration)
			enemies[i].animationController.animation:SetTint(enemies[i].damagedTint)
		end
	end

	COUNTDOWN = COUNTDOWN-dt
	if COUNTDOWN <0 then
		COUNTDOWN = 0.4

		for i=1, #enemies do
			if enemies[i].alive and enemies[i].stateName ~= DUMMY_STATE then
				AI.ClearMap(enemies[i].lastPos,0)
				enemies[i].lastPos = Transform.GetPosition(enemies[i].transformID)
				AI.AddIP(enemies[i].transformID,-1,0)
				calculatePlayerTarget(enemies[i])
			end
		end
		AI.ClearMap(player.lastPos,0)
		player.lastPos = Transform.GetPosition(player.transformID)
		AI.AddIP(player.transformID,1,0)
		AI.ClearMap(player2,0)
		player2.lastPos = Transform.GetPosition(player2.transformID)
		AI.AddIP(player2.transformID,1,0)
		
	end
	local tempdt

	if Network.GetNetworkHost() == true then
		aiScript.updateEnemyManager(enemies)
		local shouldSendNewTransform = Network.ShouldSendNewAITransform()

		for i=1, #enemies do
			pos = Transform.GetPosition(enemies[i].transformID)
			UI.reposWorld(enemies[i].healthbar, pos.x, pos.y+1.5, pos.z)

			if enemies[i].currentHealth > enemies[i].health then
				enemies[i].currentHealth  = enemies[i].currentHealth - (50 * dt);
				if enemies[i].currentHealth < 0 then
					enemies[i].currentHealth = 0;
				end
			end

			a = (enemies[i].currentHealth * ENEMY_HEALTHBAR_WIDTH) / enemies[i].maxHealth;
			UI.resizeWorld(enemies[i].healthbar, a, ENEMY_HEALTHBAR_HEIGHT)

			tempdt = dt * enemies[i].timeScalar
			if enemies[i].alive and enemies[i].stateName ~= DUMMY_STATE then
				--Transform.Follow(player.transformID, enemies[i].transformID, enemies[i].movementSpeed, dt)
				--AI.AddIP(enemies[i].transformID,-1)
				aiScript.update(enemies[i],enemies[i].playerTarget,tempdt)
				enemies[i].animationController:AnimationUpdate(dt,enemies[i])

				local pos = Transform.GetPosition(enemies[i].transformID)

				local heightmapIndex = 1

				for i = 1, #heightmaps do
					if heightmaps[i].asset:Inside(pos) then
						heightmapIndex = i
					end
				end

				if  enemies[i].stateName ~= DEAD_STATE then
					local height = heightmaps[heightmapIndex].asset:GetHeight(pos.x,pos.z)+0.7
					pos.y = pos.y - 10*dt
					if pos.y < height then
						pos.y = height
					end
				end
				Transform.SetPosition(enemies[i].transformID, pos)

				local direction = Transform.GetLookAt(enemies[i].transformID)
				local rotation = Transform.GetRotation(enemies[i].transformID)

				if shouldSendNewTransform == true then
					Network.SendAITransformPacket(enemies[i].transformID, pos, direction, rotation)
				end
			elseif enemies[i].stateName == DUMMY_STATE then
				if  enemies[i].stateName ~= DEAD_STATE then
					local pos = Transform.GetPosition(enemies[i].transformID)

					local heightmapIndex = 1

					for i = 1, #heightmaps do
						if heightmaps[i].asset:Inside(pos) then
							heightmapIndex = i
						end
					end

					if  enemies[i].stateName ~= DEAD_STATE then
						local height = heightmaps[heightmapIndex].asset:GetHeight(pos.x,pos.z)+0.7
						pos.y = pos.y - 10*dt
						if pos.y < height then
							pos.y = height
						end
					end
					Transform.SetPosition(enemies[i].transformID, pos)		
					
					local direction = Transform.GetLookAt(enemies[i].transformID)
					local rotation = Transform.GetRotation(enemies[i].transformID)		
					if shouldSendNewTransform == true then
						Network.SendAITransformPacket(enemies[i].transformID, pos, direction, rotation)
					end
				end

				--aiScript.update(enemies[i],enemies[i].playerTarget,tempdt)
			end
			for j = #enemies[i].effects, 1, -1 do 
				if not enemies[i].effects[j]:Update(enemies[i], tempdt) then
					enemies[i].effects[j]:Deapply(enemies[i])
					table.remove(enemies[i].effects, j)
				end
			end

			--enemies[i].animationController:AnimationUpdate(dt)
			Transform.UpdateRotationFromLookVector(enemies[i].transformID);
		end
		-- Empty DamagePacket queue and apply the values to the host AI
		local newDamageVal, dmg_transformID, dmg_damage = Network.GetDamagePacket()
		while newDamageVal == true do 
			for i=1, #enemies do
				--print("Receiving damage", enemies[i].transformID, dmg_transformID, dmg_damage)
				if enemies[i].transformID == dmg_transformID then
					enemies[i]:Hurt(dmg_damage, player)
					break
				end
			end

			newDamageVal, dmg_transformID, dmg_damage = Network.GetDamagePacket()
		end

	else

		-- Update Client_AI health
		local newAIHealthVal, aiHealth_transformID, aiHealth_health = Network.GetAIHealthPacket()

		while newAIHealthVal == true do
			for i=1, #enemies do
				if newAIHealthVal == true and enemies[i].transformID == aiHealth_transformID then
					--print("ID:", enemies[i].transformID, "Received new health:", aiHealth_health)
					enemies[i].health = aiHealth_health
					break
				end
			end
			newAIHealthVal, aiHealth_transformID, aiHealth_health = Network.GetAIHealthPacket()
		end

		-- Upate Client_AI state
		local newAIStateValue, aiState_transformID, aiState = Network.GetAIStatePacket()
	
		while newAIStateValue == true do
			for i=1, #enemies do
				if enemies[i].transformID == aiState_transformID then
					clientAIScript.setAIState(enemies[i], enemies[i].playerTarget, aiState)
					break
				end
			end
			newAIStateValue, aiState_transformID, aiState = Network.GetAIStatePacket()
		end			

		--Update Client_AI transform
		local newtransformvalue, aiTransform_id, pos_x, pos_y, pos_z, lookAt_x, lookAt_y, lookAt_z, rotation_x, rotation_y, rotation_z = Network.GetAITransformPacket()

		while newtransformvalue == true do
			for i=1, #enemies do
				if enemies[i].transformID == aiTransform_id then
					enemies[i].new_transform_interpolate.position = {x=pos_x, y=pos_y, z=pos_z}
					enemies[i].new_transform_interpolate.lookAt = {x=lookAt_x, y=lookAt_y, z=lookAt_z}
					enemies[i].new_transform_interpolate.rotation = {x=rotation_x, y=rotation_y, z=rotation_z}

					if INTERPOLATING_AI_TRANSFORM == false then
						enemies[i].start_transform_interpolate.position = Transform.GetPosition(enemies[i].transformID)
						enemies[i].start_transform_interpolate.lookAt = Transform.GetLookAt(enemies[i].transformID)
						enemies[i].start_transform_interpolate.rotation = Transform.GetRotation(enemies[i].transformID)
					
						enemies[i].goal_transform_interpolate = enemies[i].new_transform_interpolate
						AI_TRANSFORM_UPDATED = true
					end

					break
				end
			end


			newtransformvalue, aiTransform_id, pos_x, pos_y, pos_z, lookAt_x, lookAt_y, lookAt_z, rotation_x, rotation_y, rotation_z = Network.GetAITransformPacket()
		end
		
		-- Interpolate AI transforms
		if INTERPOLATING_AI_TRANSFORM == false and AI_TRANSFORM_UPDATED == true then
				INTERPOLATING_AI_TRANSFORM = true
				INTERPOLATION_AI_ITERATIONS = 0
				AI_TRANSFORM_UPDATED = false
		elseif INTERPOLATING_AI_TRANSFORM == true then
			for i=1, #enemies do
				
				local stepDivider = INTERPOLATION_AI_NR_OF_STEPS - INTERPOLATION_AI_ITERATIONS

				Transform.SetPosition(enemies[i].transformID, { x = enemies[i].start_transform_interpolate.position.x + ((enemies[i].goal_transform_interpolate.position.x - enemies[i].start_transform_interpolate.position.x)/stepDivider),
																y = enemies[i].start_transform_interpolate.position.y + ((enemies[i].goal_transform_interpolate.position.y - enemies[i].start_transform_interpolate.position.y)/stepDivider),
																z = enemies[i].start_transform_interpolate.position.z + ((enemies[i].goal_transform_interpolate.position.z - enemies[i].start_transform_interpolate.position.z)/stepDivider) })
				
				Transform.SetLookAt(enemies[i].transformID,	{ x = enemies[i].start_transform_interpolate.lookAt.x + ((enemies[i].goal_transform_interpolate.lookAt.x - enemies[i].start_transform_interpolate.lookAt.x)/stepDivider),
															  y = enemies[i].start_transform_interpolate.lookAt.y + ((enemies[i].goal_transform_interpolate.lookAt.y - enemies[i].start_transform_interpolate.lookAt.y)/stepDivider),
															  z = enemies[i].start_transform_interpolate.lookAt.z + ((enemies[i].goal_transform_interpolate.lookAt.z - enemies[i].start_transform_interpolate.lookAt.z)/stepDivider)})


				Transform.SetRotation(enemies[i].transformID, { x = enemies[i].start_transform_interpolate.rotation.x + ((enemies[i].goal_transform_interpolate.rotation.x - enemies[i].start_transform_interpolate.rotation.x)/stepDivider),
																y = enemies[i].start_transform_interpolate.rotation.y + ((enemies[i].goal_transform_interpolate.rotation.y - enemies[i].start_transform_interpolate.rotation.y)/stepDivider),
																z = enemies[i].start_transform_interpolate.rotation.z + ((enemies[i].goal_transform_interpolate.rotation.z - enemies[i].start_transform_interpolate.rotation.z)/stepDivider)})
			end

			INTERPOLATION_AI_ITERATIONS = INTERPOLATION_AI_ITERATIONS + 1

			if INTERPOLATION_AI_ITERATIONS == INTERPOLATION_AI_NR_OF_STEPS then
				INTERPOLATING_AI_TRANSFORM = false
			end
		end


		for i=1, #enemies do
			pos = Transform.GetPosition(enemies[i].transformID)
			UI.reposWorld(enemies[i].healthbar, pos.x, pos.y+1.5, pos.z)
			tempdt = dt * enemies[i].timeScalar

			if enemies[i].currentHealth > enemies[i].health then
				enemies[i].currentHealth  = enemies[i].currentHealth - (50 * dt);
				if enemies[i].currentHealth < 0 then
					enemies[i].currentHealth = 0;
				end
			end

			a = (enemies[i].currentHealth * ENEMY_HEALTHBAR_WIDTH) / enemies[i].maxHealth;
			UI.resizeWorld(enemies[i].healthbar, a, ENEMY_HEALTHBAR_HEIGHT)

			enemies[i].animationController:AnimationUpdate(dt,enemies[i])
			enemies[i].state.update(enemies[i], enemies[i].playerTarget, dt)

			for j = #enemies[i].effects, 1, -1 do 
				if not enemies[i].effects[j]:Update(enemies[i], tempdt) then
					enemies[i].effects[j]:Deapply(enemies[i])
					table.remove(enemies[i].effects, j)
				end
			end
		end
	end
end

function calculatePlayerTarget(enemy)
	lengthToP1 = AI.DistanceTransTrans(enemy.transformID,player.transformID)
	lengthToP2 = AI.DistanceTransTrans(enemy.transformID,player2.transformID)

	if player.isAlive then
		if player2.isAlive and lengthToP1 > lengthToP2 then
			enemy.playerTarget = player2
		else
			enemy.playerTarget = player
		end
	elseif player2.isAlive then
		enemy.playerTarget = player2
	end

	if player2 == nil and  player.isAlive then
		enemy.playerTarget = player
	end
end

return { Unload = UnloadEnemies, Update = UpdateEnemies }
