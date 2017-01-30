local MOLERAT_OFFSET = 0.4
local PLAYER_JUMP_SPEED = 0.35

player = {}
player2 = {}

function Round(num, idp)
	return tonumber(string.format("%." .. (idp or 0) .. "f", num))
end

function LoadPlayer()	
	-- Init unique ids
	player.transformID = Transform.Bind()
	player2.transformID = Transform.Bind()

	if Network.GetNetworkHost() == false then
		player.transformID, player2.transformID = player2.transformID, player.transformID
	end

	-- set basic variables for the player
	player.moveSpeed = 5.25
	player.verticalSpeed = 0
	player.canJump = false
	player.reachedGoal = false
	player.health = 100.0
	player.forward = 0
	player.left = 0
	player.timeScalar = 1.0
	player.printInfo = false
	player.heightmapIndex = 1
	player.spamCasting = false
	player.charging = false
	
	player.animationController = CreatePlayerController(player)

	-- set spells for player
	player.spells = {}
	player.spells[1] = CreateHellPillar()
	player.spells[2] = CreateBlackHole()
	player.spells[3] = CreateIceGrenade()
	player.spells[4] = CreateSunRay() 

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

	-- load and set a model for the player
	local model = Assets.LoadModel("Models/testGuy.model")
	Gear.AddAnimatedInstance(model, player.transformID, player.animationController.animation)

	Erebus.SetControls(player.transformID)
	LoadPlayer2()
end

function LoadPlayer2()
	-- set basic variables for the player2
	player2.moveSpeed = 5.25
	player2.verticalSpeed = 0
	player2.canJump = false
	player2.reachedGoal = false
	player2.health = 100
	player2.forward = 0
	player2.left = 0
	player2.timeScalar = 1.0
	player2.printInfo = false
	player2.heightmapIndex = 1
	player2.spamCasting = false
	player2.charging = false

	player2.animationController = CreatePlayerController(player2)

	-- set spells for player
	player2.spells = {}
	--player.spells[1] = dofile( "Scripts/projectile.lua" )
	player2.spells[1] = CreateHellPillar()
	player2.spells[2] = CreateBlackHole()
	player2.spells[3] = CreateSunRay()

	player2.currentSpell = 1

	local model = Assets.LoadModel("Models/testGuy.model")
	Gear.AddAnimatedInstance(model, player2.transformID, player2.animationController.animation)
end

function UnloadPlayer()
end

function UpdatePlayer(dt)
	UpdatePlayer2(dt)
	if player.health > 0 then
		player.forward = 0
		player.left = 0
		player.testCamera = false

		dt = dt * player.timeScalar

		local position = Transform.GetPosition(player.transformID)
		local direction = Transform.GetLookAt(player.transformID)
		local rotation = Transform.GetRotation(player.transformID)

		if not console.visible then
			Controls(dt)
		end

		Transform.Move(player.transformID, player.forward, player.verticalPosition, player.left, dt)
		local newPosition = Transform.GetPosition(player.transformID)

		local posx = math.floor(newPosition.x/512)
		local posz = math.floor(newPosition.z/512)
		player.heightmapIndex = (posz*2 + posx)+1
		if player.heightmapIndex<1 then player.heightmapIndex = 1 end
		if player.heightmapIndex>4 then player.heightmapIndex = 4 end

		local height = heightmaps[player.heightmapIndex].asset:GetHeight(newPosition.x,newPosition.z) + MOLERAT_OFFSET --+heightmaps[player.heightmapIndex].offset +MOLERAT_OFFSET

		local diff = height - position.y
		position = newPosition

		position.y = position.y + player.verticalSpeed
		player.verticalSpeed = player.verticalSpeed - 0.982 * dt

		if position.y <= height then
			position.y = height
			player.canJump = true
			player.verticalSpeed = 0
		end

		Transform.SetPosition(player.transformID, position)
		Sound.SetPlayerTransform({position.x, position.y, position.z}, {direction.x, direction.y, direction.z})
		
		if Network.ShouldSendNewTransform() == true then
			Network.SendTransformPacket(player.transformID, position, direction, rotation)
		end

		-- An example of what the AnimationPacket can look like
		if Network.ShouldSendNewAnimation() == true then
			Network.SendAnimationPacket(42, 2, 4, 5)
		end

		--ANIMATION UPDATING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		player.animationController:AnimationUpdate(dt)
		player2.animationController:AnimationUpdate(dt)

	end
	-- update the current player spell
	player.spells[1]:Update(dt)
	player.spells[2]:Update(dt)
	player.spells[3]:Update(dt)
	
	-- check collision against the goal
	local collisionIDs = player.sphereCollider:GetCollisionIDs()
	for curID=1, #collisionIDs do
		if collisionIDs[curID] == goal.collider:GetID() then
			player.reachedGoal = true
		end
	end

	-- show player position and lookat on screen
	if Inputs.KeyPressed("0") then 
		player.printInfo = not player.printInfo
	end
	
	if player.printInfo then PrintInfo() end

	if player.reachedGoal then Gear.Print("You win!", 560, 100) end
	
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
		if Inputs.KeyPressed(Keys.Space) and player.canJump then
			player.verticalSpeed = PLAYER_JUMP_SPEED
			player.canJump = false
		end
		if Inputs.ButtonDown(Buttons.Left) then
			player.spamCasting = true
			player.attackTimer = 1
			player.testCamera = true
			--if player.spells[player.currentSpell].cooldown < 0 then 
			--	Network.SendSpellPacket(player.transformID, player.currentSpell)
			--end
			player.spells[player.currentSpell]:Cast(player, 0.5, false)
		end

		if Inputs.ButtonReleased(Buttons.Left) then
			player.spamCasting = false
		end
		if Inputs.ButtonDown(Buttons.Right) then
			player.spells[player.currentSpell]:Charge(dt)
		end
		if Inputs.ButtonReleased(Buttons.Right) then
			player.spells[player.currentSpell]:ChargeCast(player)
		end

		if Inputs.KeyPressed("1") then player.currentSpell = 1 end
		if Inputs.KeyPressed("2") then player.currentSpell = 2 end
		if Inputs.KeyPressed("3") then player.currentSpell = 3 end
		if Inputs.KeyPressed("4") then player.currentSpell = 4 end
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

	local newspellpacket, id_2, player2CurrentSpell = Network.GetSpellPacket()

	if newspellpacket == true then
		player2.spells[player2CurrentSpell]:Cast(player2, 0.5, false)
		player2.currentSpell = player2CurrentSpell
	end
	
	player2.spells[1]:Update(dt)
	player2.spells[2]:Update(dt)
	player2.spells[3]:Update(dt)
		
	local newAnimationValue, animationID, animationState, dt_test, animationSegment = Network.GetAnimationPacket()
	--if newAnimationValue == true then
	--	print(animationID, animationState, dt_test, animationSegment)
	--end
end

return { Load = LoadPlayer, Unload = UnloadPlayer, Update = UpdatePlayer }