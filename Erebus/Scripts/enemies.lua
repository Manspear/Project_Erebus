local aiScript = require("Scripts.AI.BasicEnemyAI")
local stateScript = require("Scripts.AI.states") 
local clientAIScript = require("Scripts.AI.client_AI")

MAX_ENEMIES = 10
enemies = {}

function LoadEnemies(n)
	if n > MAX_ENEMIES then n = MAX_ENEMIES end
	for i=1, n do
		enemies[i] = {}
		enemies[i].timeScalar = 1.0
		enemies[i].transformID = Transform.Bind()
		enemies[i].movementSpeed = math.random(5,20)
		enemies[i].health = 20
		enemies[i].alive = true
		enemies[i].effects = {}
		enemies[i].attackCountdown = 1

		enemies[i].Hurt = function(self,damage)
			self.health = self.health - damage
			if self.health <= 0 then
				self:Kill()
			end
		end

		enemies[i].Kill = function(self)
			self.health = 0
			self.alive = false
			Transform.ActiveControl(self.transformID,false)

			inState = "DeadState" 
			stateScript.changeToState(enemies[i],player,inState)
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
		--enemies[i].animation = Animation.Bind()
		if Network.GetNetworkHost() == true then
			enemies[i].state = stateScript.state.idleState
			enemies[i].animationState = 1
			enemies[i].range = 4
			enemies[i].target = nil
		else
			enemies[i].state = clientAIScript.clientAIState.idleState
			--enemies[i].state.update(enemies[i], player, inState)
		end
	end

	local model = Assets.LoadModel("Models/Goblin.model")
	for i=1, n do
		Gear.AddAnimatedInstance(model, enemies[i].transformID, enemies[i].animationController.animation)
	end
end

function UnloadEnemies()
end

function UpdateEnemies(dt)
	AI.ClearMap()
	AI.AddIP(player.transformID,4)
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

				--enemies[i].animation:Update(tempdt, enemies[i].animationState)

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
			Transform.UpdateRotationFromLookVector(enemies[i].transformID);
		end

	else
		-- Run client_AI script
		for i=1, #enemies do
			enemies[i].animationController:AnimationUpdate(dt)

			clientAIScript.getAITransformPacket() -- Retrieve packets from host
			clientAIScript.getAIStatePacket(enemies[i], player)

			enemies[i].state.update(enemies[i], player, dt)
			--enemies[i].animation:Update(tempdt, enemies[i].animationState)

		end
	end
end

return { Unload = UnloadEnemies, Update = UpdateEnemies }
