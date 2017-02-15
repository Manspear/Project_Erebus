SLOW_EFFECT_INDEX = 1
TIME_SLOW_EFFECT_INDEX = 2
FIRE_EFFECT_INDEX = 3
POLYMORPH_EFFECT_INDEX = 4
DASH_COOLDOWN = 0.75
DASH_DURATION = 0.38

player = {}
player2 = {}

effectTable = {}

function Round(num, idp)
	return tonumber(string.format("%." .. (idp or 0) .. "f", num))
end

function LoadPlayer()
	effectTable[FIRE_EFFECT_INDEX] = CreateFireEffect
	effectTable[SLOW_EFFECT_INDEX] = CreateSlowEffect
	effectTable[TIME_SLOW_EFFECT_INDEX] = CreateTimeSlowEffect
	effectTable[POLYMORPH_EFFECT_INDEX] = CreatePolyEffect
	-- Init unique ids
	--player.transformID = Transform.Bind()
	--player2.transformID = Transform.Bind()
	player.animationController = CreatePlayerController(player)
	player2.animationController = CreatePlayerController(player2)
	local model = Assets.LoadModel("Models/player1.model")
	player.transformID = Gear.BindAnimatedInstance(model, player.animationController.animation)
	player2.transformID = Gear.BindAnimatedInstance(model, player2.animationController.animation)

	if Network.GetNetworkHost() == false then
		player.transformID, player2.transformID = player2.transformID, player.transformID
	end

	-- set basic variables for the player
	player.moveSpeed = 10
	player.health = 100.0
	player.forward = 0
	player.left = 0
	player.timeScalar = 1.0
	player.printInfo = false
	player.heightmapIndex = 1
	player.spamCasting = false
	player.charging = false
	player.rayCollider = RayCollider.Create(player.transformID)
	player.move = {}
	CollisionHandler.AddRay(player.rayCollider)
	RayCollider.SetActive(player.rayCollider, true)
	player.dashdir = {x= 0, z= 0}
	player.dashtime = 0
	player.dashcd = 0
	player.invulnerable = false
	player.position = Transform.GetPosition(player.transformID)
	player.pingImage = UI.load(0, -3, 0, 0.75, 0.75)
	player.pingTexture = Assets.LoadTexture("Textures/ping.png")
	player.pingDuration = 1
	player.ping = 0

	player.lastPos = Transform.GetPosition(player.transformID)
	player.effects = {}

	player.nrOfInnerCircleEnemies = 0
	player.nrOfOuterCircleEnemies = 0

	player.outerCirclerange = 4
	player.innerCirclerange = 8

	-- set spells for player
	player.spells = {}
	
	player.currentSpell = 1

	player.Hurt = function(self,damage, source)
		if not player.invulnerable then
			self.health = self.health - damage
			if self.health <= 0 then
				self:Kill()
			end
		end
	end
	player.Apply = function(self, effect)
		if not self.invulnerable then
			table.insert(self.effects, effect)
			effect:Apply(self)
		end
	end

	player.Kill = function(self)
		self.health = 0
		Transform.ActiveControl(self.transformID,false)
	end
	
	player.ChangeHeightmap = function(self, heightmap)
		player.currentHeightmap = heightmap
		player.controller:SetHeightmap(player.currentHeightmap.asset)
	end

	-- add a sphere collider to the player
	player.sphereCollider = SphereCollider.Create(player.transformID)
	CollisionHandler.AddSphere(player.sphereCollider)
	player.sphereCollider:GetCollisionIDs()

	Transform.SetPosition(player.transformID, {x=0, y=0, z=0})

	-- Setting controller for player
	player.controller = {};
	player.controller = MovementController.Create()
	player.controller:SetHitbox(player.sphereCollider)
	player.controller:SetTransform(player.transformID)
	player.controller:SetCollisionLayer(3) -- the layer the walls is at THIS IS HARDCODED DAMN (Player checks collision against these hitboxes before moving)

	-- load and set a model for the player
	--local model = Assets.LoadModel("Models/player1.model")
	--Gear.AddAnimatedInstance(model, player.transformID, player.animationController.animation)

	Erebus.SetControls(player.transformID)
	LoadPlayer2()

	player.aim = CreateAim(player)
	player.charger = CreateChargeThing(player)
	InitFireEffectParticles()
end

function LoadPlayer2()
	-- set basic variables for the player2
	player2.moveSpeed = 5.25
	player2.health = 100
	player2.forward = 0
	player2.left = 0
	player2.timeScalar = 1.0
	player2.printInfo = false
	player2.heightmapIndex = 1
	player2.spamCasting = false
	player2.charging = false
	player2.position = {}

	--player2.animationController = CreatePlayerController(player2)
	player2.nrOfInnerCircleEnemies = 0
	player2.nrOfOuterCircleEnemies = 0

	player2.outerCirclerange = 4
	player2.innerCirclerange = 8

	player2.sphereCollider = SphereCollider.Create(player2.transformID)
	CollisionHandler.AddSphere(player2.sphereCollider, 1)
	-- set spells for player
	player2.spells = {}
	player2.currentSpell = 1

	--local model = Assets.LoadModel("Models/player1.model")
	player2.effects = {}

	player2.Hurt = function(self,damage, source)

	end

	player2.Kill = function(self)

	end

	player2.Apply = function(self, effect)
		if not self.invulnerable then
			table.insert(self.effects, effect)
			effect:Apply(self)
		end
	end

	--Gear.AddAnimatedInstance(model, player2.transformID, player2.animationController.animation)

	player2.aim = CreateAim(player2)
	player2.charger = CreateChargeThing(player2)
end

function UnloadPlayer()
end

function LoadSpells(player)
	player.spells[1] = SpellList[1].spell
	player.spells[2] = SpellList[2].spell
	player.spells[3] = SpellList[3].spell
	player.spells[1].isActiveSpell = true
end

function LoadSpellsPlayer2()
	player2.spells[1] = SpellListPlayer2[1].spell
	player2.spells[2] = SpellListPlayer2[2].spell
	player2.spells[3] = SpellListPlayer2[3].spell
	player2.spells[1].isActiveSpell = true
end

function FindHeightmap(position)
	local hm = player.currentHeightmap
	if not hm.asset:Inside(position) then
		for k,hmIndex in pairs(hm.surrounding) do
			if heightmaps[hmIndex].asset:Inside(position) then
				player.currentHeightmap = heightmaps[hmIndex]
				player.controller:SetHeightmap(player.currentHeightmap.asset)
				break
			end
		end
	end
end

function UpdatePlayer(dt)
	UpdatePlayer2(dt)
	if player.health > 0 then
		local scale = 0.8
		local color = {0.6, 0.3, 0.1, 0.8}
		local info = ""..player.timeScalar
		Gear.Print(info, 1230, 0, scale, color)
		dt = dt * player.timeScalar

		player.dashcd = player.dashcd - dt
		player.forward = 0
		player.left = 0

		if player.ping > 0 then
			player.ping = player.ping - dt;
		end

		player.position = Transform.GetPosition(player.transformID)
		local direction = Transform.GetLookAt(player.transformID)
		local rotation = Transform.GetRotation(player.transformID)

		if not console.visible then
			Controls(dt)
		end
		GetCombined()
		FindHeightmap(player.position)

		Sound.SetPlayerTransform({player.position.x, player.position.y, player.position.z}, {direction.x, direction.y, direction.z})
		if Network.ShouldSendNewTransform() == true then
			Network.SendTransformPacket(player.transformID, player.position, direction, rotation)
		end
		--ANIMATION UPDATING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		player.animationController:AnimationUpdate(dt, Network)
		if Network.ShouldSendNewAnimation() == true then
			Network.SendAnimationPacket(player.animationController.animationState1, player.animationController.animationState2)
		end
	end
	-- update the current player spell
	player.spells[1]:Update(dt)
	player.spells[2]:Update(dt)
	player.spells[3]:Update(dt)

	for j = #player.effects, 1, -1 do 
		if not player.effects[j]:Update(player, dt) then
			player.effects[j]:Deapply(player)
			table.remove(player.effects, j)
		end
	end

	-- show player position and lookat on screen
	if Inputs.KeyPressed("0") then 
		player.printInfo = not player.printInfo
	end
	
	if player.printInfo then PrintInfo() end

	-- update player controller -- this moves the player
	player.controller:Update()
	if player.dashtime > 0 then
		local factor = math.sqrt(player.dashtime/DASH_DURATION)--math.min(1+player.dashtime/(2*DASH_COOLDOWN),1)
		local left = player.dashdir.z * factor
		local fwd = player.dashdir.x * factor
		player.controller:Move(left*dt, 0, fwd*dt)
		player.dashtime = player.dashtime - dt
		if player.dashtime < 0 then
			player.invulnerable = false
			Transform.SetScale(player.transformID, 1)
		end
	else
		player.controller:Move(player.left * dt, 0, player.forward * dt)
	end

	--Moves the ping icon
	UI.reposWorld(player.pingImage, player.position.x, player.position.y+1.5, player.position.z)

	-- check collision against triggers and call their designated function
	for _,v in pairs(triggers) do
		if v.collider:CheckCollision() then
			if not v.triggered then
				if v.OnEnter then
					v.OnEnter()
				else
					v.OnTrigger()
				end

				v.triggered = true
			else
				v.OnTrigger()
			end
		else
			if v.triggered then
				if v.OnExit then
					v.OnExit()
				end
				v.triggered = false
			end
		end
	end
end

function SendCombine(spell)
	--TOBEDEFINED
	Network.SendChargingPacket(spell:GetEffect(), spell.damage)
end

function GetCombined()
	local combine, effectIndex, damage = Network.GetChargingPacket()
	if combine and Inputs.ButtonDown(Buttons.Right) then
		player.spells[player.currentSpell]:Combine(effectIndex, damage)
	end
end

function Controls(dt)
		if Inputs.KeyDown("W") then
			player.forward = player.moveSpeed
		end
		if Inputs.KeyDown("S") then
			player.forward = -player.moveSpeed
		end
		if Inputs.KeyDown("A") then
			player.left = player.moveSpeed
		end
		if Inputs.KeyDown("D") then
			player.left = -player.moveSpeed
		end
		if Inputs.KeyDown("Q") then
			Sound.Play("Effects/ping.wav", 1, player.position)
			player.ping = player.pingDuration
		end
		if Inputs.KeyDown("T") then
			local dir = Camera.GetDirection()
			local pos = Transform.GetPosition(player.transformID)
			RayCollider.SetActive(player.rayCollider, true)
			RayCollider.SetRayDirection(player.rayCollider, dir.x, dir.y, dir.z)
		end
		if Inputs.KeyReleased("T") then
			local collisionIDs = RayCollider.GetCollisionIDs(player.rayCollider)
			for curID = 1, #collisionIDs do
				if collisionIDs[curID] == player2.sphereCollider:GetID() then
					SendCombine(player.spells[player.currentSpell])
					print("combine!!")
					break
				end
			end
			RayCollider.SetActive(player.rayCollider, false)
		end

		if not player.charging then
			if Inputs.ButtonDown(Buttons.Left) then
				player.spamCasting = true
				player.attackTimer = 1
				Network.SendSpellPacket(player.transformID, player.currentSpell)
				player.spells[player.currentSpell]:Cast(player, 0.5, false)
			end

			if Inputs.ButtonReleased(Buttons.Left) then
				player.spamCasting = false
			end

			if Inputs.KeyPressed("1") then	player.spells[player.currentSpell]:Change()	player.currentSpell = 1	player.spells[player.currentSpell]:Change()	end
			if Inputs.KeyPressed("2") then	player.spells[player.currentSpell]:Change()	player.currentSpell = 2	player.spells[player.currentSpell]:Change()	end
			if Inputs.KeyPressed("3") then	player.spells[player.currentSpell]:Change()	player.currentSpell = 3	player.spells[player.currentSpell]:Change()	end
		end

		if not player.spamCasting then
			if Inputs.ButtonDown(Buttons.Right) then
				player.spells[player.currentSpell]:Charge(dt)
				player.charger:Charging(player.position, dt, player.spells[player.currentSpell].chargedTime)
				player.charging = true
			end

			if Inputs.ButtonPressed(Buttons.Right) then 
				Network.SendChargeSpellPacket(player.transformID, player.currentSpell, false)
				player.charger:StartCharge(player.position) 
			end
		
			if Inputs.ButtonReleased(Buttons.Right) then
				Network.SendChargeSpellPacket(player.transformID, player.currentSpell, true)
				player.spells[player.currentSpell]:ChargeCast(player)
				player.charger:EndCharge()
				player.charging = false
			end
		end

		if Inputs.KeyPressed(Keys.Space) and player.dashcd < 0 then
			Transform.SetScale(player.transformID, 0)
			player.dashcd = DASH_COOLDOWN
			player.dashdir.x = player.forward * 3.5
			player.dashdir.z = player.left * 3.5
			player.dashtime = DASH_DURATION
			player.invulnerable = true
		end
end

function PrintInfo() 
	if player.printInfo then
		local scale = 0.8
		local color = {0.4, 1, 0.4, 1}
		local info = "Player"
		Gear.Print(info, 60, 570, scale, color)

		local position = Transform.GetPosition(player.transformID)
		info = "Position\nx:"..Round(player.position.x, 1).."\ny:"..Round(player.position.y, 1).."\nz:"..Round(player.position.z, 1)
		Gear.Print(info, 0, 600, scale, color)

		local direction = Transform.GetLookAt(player.transformID)
		info = "LookAt\nx:"..Round(direction.x, 3).."\ny:"..Round(direction.y, 3).."\nz:"..Round(direction.z, 3)
		Gear.Print(info, 120, 600, scale, color)
	end
end

local isPlayer2Charging = false
function UpdatePlayer2(dt)
	local newtransformvalue, id_2, pos_x_2, pos_y_2, pos_z_2, lookAt_x_2, lookAt_y_2, lookAt_z_2, rotation_x_2, rotation_y_2, rotation_z_2 = Network.GetTransformPacket()

	if newtransformvalue == true then
		Transform.SetPosition(id_2, {x=pos_x_2, y=pos_y_2, z=pos_z_2})
		Transform.SetLookAt(id_2, {x=lookAt_x_2, y=lookAt_y_2, z=lookAt_z_2})
		Transform.SetRotation(id_2, {x=rotation_x_2, y=rotation_y_2, z=rotation_z_2})
	end

	local newspellpacket, id_2, player2CurrentSpell, isCharging, shouldCast = Network.GetSpellPacket()
	
	if newspellpacket == true then
		player2.spells[player2.currentSpell]:Change()
		player2.currentSpell = player2CurrentSpell
		player2.spells[player2.currentSpell]:Change()

		if isCharging == false then
			player2.spells[player2.currentSpell]:Cast(player2, 0.5, false)
		else
			if shouldCast == false then
				player2.charger:StartCharge(player2.position)
				isPlayer2Charging = true
			else
				player2.spells[player2.currentSpell]:ChargeCast(player2)
				player2.charger:EndCharge()
				isPlayer2Charging = false
			end
		end
	end
	
	if isPlayer2Charging == true then
		player2.spells[player2.currentSpell]:Charge(dt)
		player2.charger:Charging(player2.position, dt, player2.spells[player2.currentSpell].chargedTime)
	end
	
	player2.spells[1]:Update(dt)
	player2.spells[2]:Update(dt)
	player2.spells[3]:Update(dt)

	for j = #player2.effects, 1, -1 do 
		if not player2.effects[j]:Update(player2, dt) then
			player2.effects[j]:Deapply(player2)
			table.remove(player2.effects, j)
		end
	end
	
	local newAnimationValue, animationState1, animationState2 = Network.GetAnimationPacket()
	if newAnimationValue == true then
		player2.animationController:AnimationUpdatePlayer2(dt, animationState1, animationState2)
	end

	local newQuickBlendValue, quickBlendFrom, quickBlendTo, damagedMaxTime, quickBlendSegment = Network.GetQuickBlendPacket()
	if newQuickBlendValue == true then
		player2.animationController:SetQuickBlendPlayer2(quickBlendFrom, quickBlendTo, damagedMaxTime, quickBlendSegment)
	end
	
	local newChangeSpellsValue, changeSpell1, changeSpell2, changeSpell3 = Network.GetChangeSpellsPacket()
	if newChangeSpellsValue == true then
		player2.spells[1] = SpellListPlayer2[changeSpell1].spell
		player2.spells[2] = SpellListPlayer2[changeSpell2].spell
		player2.spells[3] = SpellListPlayer2[changeSpell3].spell
	end
end

return { Load = LoadPlayer, Unload = UnloadPlayer, Update = UpdatePlayer }