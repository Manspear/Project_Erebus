local MOLERAT_OFFSET = 0.4
local PLAYER_JUMP_SPEED = 0.35

SLOW_EFFECT_INDEX = 1
TIME_SLOW_EFFECT_INDEX = 2
FIRE_EFFECT_INDEX = 3
DASH_COOLDOWN = 0.6

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
	-- Init unique ids
	player.transformID = Transform.Bind()
	player2.transformID = Transform.Bind()

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
	player.animationController = CreatePlayerController(player)
	player.dashdir = {x= 0, z= 0}
	player.dashtime = 0
	player.dashcd = 0

	-- set spells for player
	player.spells = {}
	
	player.currentSpell = 1

	player.Hurt = function(self,damage)
			self.health = self.health - damage
			if self.health <= 0 then
				self:Kill()
			end
	end

	player.Kill = function(self)
		self.health = 0
		Transform.ActiveControl(self.transformID,false)
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
	local model = Assets.LoadModel("Models/testGuy.model")
	Gear.AddAnimatedInstance(model, player.transformID, player.animationController.animation)

	Erebus.SetControls(player.transformID)
	LoadPlayer2()
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

	player2.animationController = CreatePlayerController(player2)
	player2.sphereCollider = SphereCollider.Create(player2.transformID)
	CollisionHandler.AddSphere(player2.sphereCollider, 1)
	-- set spells for player
	player2.spells = {}
	--player2.spells[1] = SpellList[1].spell --CreateBlackHole()
	--player2.spells[2] = SpellList[2].spell --CreateBlackHole()
	--player2.spells[3] = SpellList[3].spell --CreateBlackHole()
	--player2.spells[4] = SpellList[4].spell(player2)

	player2.currentSpell = 1

	local model = Assets.LoadModel("Models/testGuy.model")
	Gear.AddAnimatedInstance(model, player2.transformID, player2.animationController.animation)
end

function UnloadPlayer()
end

function LoadSpells(player)
	player.spells[1] = SpellList[1].spell
	player.spells[2] = SpellList[2].spell
	player.spells[3] = SpellList[3].spell
end

function LoadSpellsPlayer2()
	player2.spells[1] = SpellListPlayer2[1].spell
	player2.spells[2] = SpellListPlayer2[2].spell
	player2.spells[3] = SpellListPlayer2[3].spell
end

function FindHeightmap(position)
	local hm = player.currentHeightmap
	if not hm.asset:Inside(position) then
		for _,hmIndex in pairs(hm.surrounding) do
			if heightmaps[hmIndex].asset:Inside(position) then
				print("CHANGING")
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
		player.dashcd = player.dashcd - dt
		player.forward = 0
		player.left = 0

		dt = dt * player.timeScalar

		local position = Transform.GetPosition(player.transformID)
		local direction = Transform.GetLookAt(player.transformID)
		local rotation = Transform.GetRotation(player.transformID)

		if not console.visible then
			Controls(dt)
		end
		GetCombined()
		--Transform.Move(player.transformID, player.forward, player.verticalPosition, player.left, dt)
		--local newPosition = Transform.GetPosition(player.transformID)

		--local posx = math.floor(newPosition.x/512)
		--local posz = math.floor(newPosition.z/512)
		--player.heightmapIndex = (posz*2 + posx)+1
		--if player.heightmapIndex<1 then player.heightmapIndex = 1 end
		--if player.heightmapIndex>4 then player.heightmapIndex = 4 end

		--local height = heightmaps[player.heightmapIndex].asset:GetHeight(newPosition.x,newPosition.z) + MOLERAT_OFFSET

		--local diff = height - position.y
		--position = newPosition

		--position.y = position.y + player.verticalSpeed
		--player.verticalSpeed = player.verticalSpeed - 0.982 * dt

		--if position.y <= height then
			--position.y = height
			--player.canJump = true
			--player.verticalSpeed = 0
		--end

		--Transform.SetPosition(player.transformID, position)

		--[[local posx = math.floor(position.x/512)
		local posz = math.floor(position.z/512)
		player.heightmapIndex = (posz*2 + posx)+1
		if player.heightmapIndex<1 then player.heightmapIndex = 1 end
		if player.heightmapIndex>4 then player.heightmapIndex = 4 end

		player.controller:SetHeightmap(heightmaps[player.heightmapIndex].asset)--]]

		FindHeightmap(position)

		Sound.SetPlayerTransform({position.x, position.y, position.z}, {direction.x, direction.y, direction.z})
		if Network.ShouldSendNewTransform() == true then
			Network.SendTransformPacket(player.transformID, position, direction, rotation)
		end
		--ANIMATION UPDATING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		player.animationController:AnimationUpdate(dt)
		if Network.ShouldSendNewAnimation() == true then
			Network.SendAnimationPacket(player.animationController.animationState1, player.animationController.animationState2)
		end
	end
	-- update the current player spell
	player.spells[1]:Update(dt)
	player.spells[2]:Update(dt)
	player.spells[3]:Update(dt)

	-- show player position and lookat on screen
	if Inputs.KeyPressed("0") then 
		player.printInfo = not player.printInfo
	end
	
	if player.printInfo then PrintInfo() end

	-- update player controller -- this moves the player
	player.controller:Move(player.left * dt, 0, player.forward * dt)
	player.controller:Update()
	if player.dashtime > 0 then
		local factor = math.sqrt(math.sqrt(math.sqrt(player.dashtime/DASH_COOLDOWN)))
		local left = player.dashdir.z * factor
		local fwd = player.dashdir.x * factor
		player.controller:Move(left*dt, 0, fwd*dt)
		player.dashtime = player.dashtime - dt
	end
	
end

function SendCombine(spell)
	--TOBEDEFINED
	Network.SendChargingPacket(spell:GetEffect(), spell.damage)
end

function GetCombined()
	local combine, effectIndex, damage = Network.GetChargingPacket()
	if combine and Inputs.ButtonDown(Buttons.Right) then
		player.spells[player.currentSpell]:Combine(damage, effectIndex)
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
		if Inputs.ButtonDown(Buttons.Left) then
			player.spamCasting = true
			player.attackTimer = 1
			if player.spells[player.currentSpell].cooldown < 0 then 
				Network.SendSpellPacket(player.transformID, player.currentSpell)
			end
			player.spells[player.currentSpell]:Cast(player, 0.5, false)
		end

		if Inputs.ButtonReleased(Buttons.Left) then
			player.spamCasting = false
		end
		if Inputs.ButtonDown(Buttons.Right) then
			--if player.spells[player.currentSpell].cooldown < 0 then 
			Network.SendChargeSpellPacket(player.transformID, player.currentSpell, false)
			--end
			player.spells[player.currentSpell]:Charge(dt)
		end
		if Inputs.ButtonReleased(Buttons.Right) then
			if player.spells[player.currentSpell].cooldown < 0 then 
				Network.SendChargeSpellPacket(player.transformID, player.currentSpell, true)
			end
			player.spells[player.currentSpell]:ChargeCast(player)
		end

		if Inputs.KeyPressed("1") then player.currentSpell = 1 end
		if Inputs.KeyPressed("2") then player.currentSpell = 2 end
		if Inputs.KeyPressed("3") then player.currentSpell = 3 end

		if Inputs.KeyPressed(Keys.Space) and player.dashcd < 0 then
			player.dashcd = DASH_COOLDOWN
			player.dashdir.x = player.forward * 3
			player.dashdir.z = player.left * 3
			player.dashtime = 0.35
		end

end

function PrintInfo() 
	if player.printInfo then
		local scale = 0.8
		local color = {0.4, 1, 0.4, 1}
		local info = "Player"
		Gear.Print(info, 60, 570, scale, color)

		local position = Transform.GetPosition(player.transformID)
		info = "Position\nx:"..Round(position.x, 1).."\ny:"..Round(position.y, 1).."\nz:"..Round(position.z, 1)
		Gear.Print(info, 0, 600, scale, color)

		local direction = Transform.GetLookAt(player.transformID)
		info = "LookAt\nx:"..Round(direction.x, 3).."\ny:"..Round(direction.y, 3).."\nz:"..Round(direction.z, 3)
		Gear.Print(info, 120, 600, scale, color)
	end
end

function UpdatePlayer2(dt)
	local newtransformvalue, id_2, pos_x_2, pos_y_2, pos_z_2, lookAt_x_2, lookAt_y_2, lookAt_z_2, rotation_x_2, rotation_y_2, rotation_z_2 = Network.GetTransformPacket()

	if newtransformvalue == true then
		Transform.SetPosition(id_2, {x=pos_x_2, y=pos_y_2, z=pos_z_2})
		Transform.SetLookAt(id_2, {x=lookAt_x_2, y=lookAt_y_2, z=lookAt_z_2})
		Transform.SetRotation(id_2, {x=rotation_x_2, y=rotation_y_2, z=rotation_z_2})
	end

	local newspellpacket, id_2, player2CurrentSpell, isCharging, shouldCast = Network.GetSpellPacket()
	
	if newspellpacket == true then
		player2.currentSpell = player2CurrentSpell
		if isCharging == false then
			player2.spells[player2.currentSpell]:Cast(player2, 0.5, false)
		else
			if shouldCast == false then
				player2.spells[player2.currentSpell]:Charge(dt)
			else
				player2.spells[player2.currentSpell]:ChargeCast(player2)
			end
		end
	end

	player2.spells[1]:Update(dt)
	player2.spells[2]:Update(dt)
	player2.spells[3]:Update(dt)
	--player2.spells[4]:Update(dt)
	
	local newAnimationValue, animationState1, animationState2 = Network.GetAnimationPacket()
	if newAnimationValue == true then
		player2.animationController:AnimationUpdatePlayer2(dt, animationState1, animationState2)
	end

end

return { Load = LoadPlayer, Unload = UnloadPlayer, Update = UpdatePlayer }