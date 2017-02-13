local aiScript = require("Scripts.AI.BasicEnemyAI")
local stateScript = require("Scripts.AI.states") 
local clientAIScript = require("Scripts.AI.client_AI")

MAX_ENEMIES = 10
ENEMY_MELEE = 1
ENEMY_RANGED = 2
enemies = {}

COUNTDOWN = 0
--tempPlayerPosition = Transform.GetPosition(player.transformID)

SFX_AGGRO = "Goblin/Voice/Goblin laugh aggro.ogg"
SFX_ATTACK = "Goblin/Voice/albin goblin - attack3.ogg"
SFX_HURT = "Goblin/Voice/albin goblin alerted.ogg"
SFX_DEAD = { "Goblin/Voice/albin goblin - death.ogg", "Goblin/Machine/Goblin Machine Dead.ogg"}

function CreateEnemy(type, position)
	assert( type == ENEMY_MELEE or type == ENEMY_RANGED, "Invalid enemy type." )

	local i = #enemies+1
	enemies[i] = {}
	enemies[i].timeScalar = 1.0
	enemies[i].transformID = Transform.Bind()
	enemies[i].movementSpeed = math.random(5,20)
	enemies[i].health = 20
	enemies[i].alive = true
	enemies[i].effects = {}
	enemies[i].attackCountdown = 1
	enemies[i].soundID = {-1, -1, -1} --aggro, atk, hurt

	
	enemies[i].visionRange = 30
	enemies[i].subPathtarget = nil
	enemies[i].pathTarget = nil

	enemies[i].insideInnerCircleRange = false

	enemies[i].lastPos = Transform.GetPosition(enemies[i].transformID)
	enemies[i].maxActionCountDown = 3
	enemies[i].actionCountDown = 3

	enemies[i].playerTarget = nil

	enemies[i].animationState = 1
	enemies[i].range = 4
	enemies[i].target = nil

	enemies[i].Hurt = function(self,damage, source)
		if source.transformID ~= player2.transformID then
			--if Network.GetNetworkHost() == true then
				local pos = Transform.GetPosition(self.transformID)

				self.health = self.health - damage
				if self.health <= 0 then
					for i = 1, #self.soundID do Sound.Stop(self.soundID[i]) end
					for i = 1, #SFX_DEAD do Sound.Play(SFX_DEAD[i], 3, pos) end
					if Network.GetNetworkHost() == true then
						print("Dead for host", enemies[i].transformID)
						self:Kill(stateScript)
					else
						print("Dead for client", enemies[i].transformID)
						self:Kill(clientAIScript)
					end
				else
					self.soundID[3] = Sound.Play(SFX_HURT, 1, pos)
				end
			--else
			--	print("Ouch :C")
			--end
		end
	end

	enemies[i].Kill = function(self, script)
		self.health = 0
		self.alive = false
		Transform.ActiveControl(self.transformID,false)
		SphereCollider.SetActive(self.sphereCollider, false)
		inState = "DeadState" 
		script.changeToState(enemies[i],player,inState)

		if self.alive then
			self.health = 0
			self.alive = false
			Transform.ActiveControl(self.transformID,false)

			inState = "DeadState"
			script.changeToState(enemies[i], player, inState)
		end
	end

	enemies[i].Spawn = function(self,position)
		self.alive = true
		self.health = 20
		self.position.x = position.x
		self.position.y = position.y
		self.position.z = position.z
		Transform.ActiveControl(self.transformID,true)
	end

	Transform.SetPosition(enemies[i].transformID, position)
	enemies[i].sphereCollider = SphereCollider.Create(enemies[i].transformID)
	enemies[i].sphereCollider:SetRadius(2)
	CollisionHandler.AddSphere(enemies[i].sphereCollider)

	enemies[i].animationController = CreateEnemyController(enemies[i])

	if Network.GetNetworkHost() == true then
		enemies[i].state = stateScript.state.idleState
	else
		enemies[i].state = clientAIScript.clientAIState.idleState
	end



	local modelName = ""
	if type == ENEMY_MELEE then
		modelName = "Models/Goblin.model"
	else
		modelName = "Models/Goblin.model" --TODO: Change to the model for the ranged enemy
	end

	local model = Assets.LoadModel(modelName)

	assert( model, "Failed to load model Models/Goblin.model" )

	Gear.AddAnimatedInstance(model, enemies[i].transformID, enemies[i].animationController.animation)

	--NOTE: Not sure if we need this?
	return enemies[i]
end

--[[function LoadEnemies(n)
	if n > MAX_ENEMIES then n = MAX_ENEMIES end
	for i=1, n do
		enemies[i] = {}
		enemies[i].timeScalar = 1.0
		enemies[i].transformID = Transform.Bind()
		enemies[i].movementSpeed = 5
		enemies[i].health = 20
		enemies[i].alive = true
		enemies[i].effects = {}
		enemies[i].soundID = {-1, -1, -1} --aggro, atk, hurt

		enemies[i].Hurt = function(self,damage)
			local pos = Transform.GetPosition(self.transformID)

			self.health = self.health - damage
			self.animationController.AnimationHurt()
			if self.health <= 0 and self.alive == true then
				for i = 1, #self.soundID do Sound.Stop(self.soundID[i]) end
				for i = 1, #SFX_DEAD do Sound.Play(SFX_DEAD[i], 3, pos) end
				if Network.GetNetworkHost() == true then
					self:Kill()
				else
					self:KillClientEnemy()
				end
			else
				self.soundID[3] = Sound.Play(SFX_HURT, 1, pos)
			end
		end

		enemies[i].Kill = function(self)
			self.health = 0
			self.alive = false
			Transform.ActiveControl(self.transformID,false)
			SphereCollider.SetActive(self.sphereCollider, false)
			inState = "DeadState" 
			stateScript.changeToState(enemies[i],player,inState)

			if self.alive then
				self.health = 0
				self.alive = false
				Transform.ActiveControl(self.transformID,false)

			if enemies[i].state.stateName == "PositioningOuterState" then
				player.nrOfOuterCircleEnemies = player.nrOfOuterCircleEnemies -1
			end

			if enemies[i].state.stateName == "PositioningInnerState" then
				player.nrOfInnerCircleEnemies = player.nrOfInnerCircleEnemies -1
			end

				inState = "DeadState"
				stateScript.changeToState(enemies[i], player, inState)
			end
		end

		enemies[i].KillClientEnemy = function(self)		
			if self.alive then	
				self.health = 0
				self.alive = false
				Transform.ActiveControl(self.transformID,false)

				self.state = clientAIScript.clientAIState.deadState
				--print(self)
			end
		end

		enemies[i].Spawn = function(self,position)
			self.alive = true
			self.health = 20
			self.position.x = position.x
			self.position.y = position.y
			self.position.z = position.z
			Transform.ActiveControl(self.transformID,true)
		end

		Transform.SetPosition(enemies[i].transformID, {x = math.random(10, 255), y = math.random(15, 30), z = math.random(10, 245)})
		enemies[i].sphereCollider = SphereCollider.Create(enemies[i].transformID)
		enemies[i].sphereCollider:SetRadius(2)
		CollisionHandler.AddSphere(enemies[i].sphereCollider)
		enemies[i].animationController = CreateEnemyController(enemies[i])

		if Network.GetNetworkHost() == true then
			enemies[i].state = stateScript.state.idleState


		enemies[i].range = 2

		else
			enemies[i].state = clientAIScript.clientAIState.idleState
		end
	
	end

	local model = Assets.LoadModel("Models/Goblin.model")
	for i=1, n do
		Gear.AddAnimatedInstance(model,  enemies[i].transformID, enemies[i].animationController.animation)
	end
end--]]

function UnloadEnemies()
end

function UpdateEnemies(dt)

	--for i = 1, #heightmaps do
	AI.DrawDebug()
	--end

	COUNTDOWN = COUNTDOWN-dt
	if COUNTDOWN <0 then
		--print ("Clear")
		
		COUNTDOWN = 0.4
		print("INNER: ",player.nrOfInnerCircleEnemies)
		print("OUTER: ",player.nrOfOuterCircleEnemies)


		for i=1, #enemies do
			--print ("Last Pos: " .. enemies[i].lastPos.x.."  "..enemies[i].lastPos.z)
			AI.ClearMap(enemies[i].lastPos,0)

			enemies[i].lastPos = Transform.GetPosition(enemies[i].transformID)
			AI.AddIP(enemies[i].transformID,-1,0)
		end
		AI.ClearMap(player.lastPos,0)
		player.lastPos = Transform.GetPosition(player.transformID)
		
		AI.AddIP(player.transformID,1,0)
		
	end
	aiScript.updateEnemyManager(enemies,player)
	local tempdt

	if Network.GetNetworkHost() == true then
		local shouldSendNewTransform = Network.ShouldSendNewAITransform()

		for i=1, #enemies do
			if enemies[i].health > 0 then
				tempdt = dt * enemies[i].timeScalar
				--Transform.Follow(player.transformID, enemies[i].transformID, enemies[i].movementSpeed, dt)
				AI.AddIP(enemies[i].transformID,-1)
				aiScript.update(enemies[i],player,tempdt)
				enemies[i].animationController:AnimationUpdate(dt)

				local pos = Transform.GetPosition(enemies[i].transformID)

				local posx = math.floor(pos.x/512)
				local posz = math.floor(pos.z/512)
				local heightmapIndex = (posz*2 + posx)+1

				local height = heightmaps[heightmapIndex].asset:GetHeight(pos.x,pos.z)+0.7
				pos.y = pos.y - 10*dt
				if pos.y < height then
					pos.y = height
				end
				Transform.SetPosition(enemies[i].transformID, pos)

				local direction = Transform.GetLookAt(enemies[i].transformID)
				local rotation = Transform.GetRotation(enemies[i].transformID)

				if shouldSendNewTransform == true then
					Network.SendAITransformPacket(enemies[i].transformID, pos, direction, rotation)
				end

			for j = #enemies[i].effects, 1, -1 do 
				if not enemies[i].effects[j]:Update(enemies[i], tempdt) then
					enemies[i].effects[j]:Deapply(enemies[i])
					table.remove(enemies[i].effects, j)
					end
				end
			end

		--enemies[i].animationController:AnimationUpdate(dt)
			Transform.UpdateRotationFromLookVector(enemies[i].transformID);
		end
	else
		-- Run client_AI script
		for i=1, #enemies do
			if enemies[i].health > 0 then
				enemies[i].animationController:AnimationUpdate(dt)
	
				-- Retrieve packets from host
				clientAIScript.getAITransformPacket()
				clientAIScript.getAIStatePacket(enemies[i], player)
	
				enemies[i].state.update(enemies[i], player, dt)
			end
		end
	end
end

return { Unload = UnloadEnemies, Update = UpdateEnemies }
