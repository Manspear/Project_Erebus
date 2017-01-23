local MOLERAT_OFFSET = 0.4
local PLAYER_MAX_SPELLS = 2
local PLAYER_JUMP_SPEED = 0.35
player = {}
player2 = {}

function Round(num, idp)
	return tonumber(string.format("%." .. (idp or 0) .. "f", num))
end

function LoadPlayer()
	-- set basic variables for the player
	player.transformID = Transform.Bind()
	player.moveSpeed = 5.25
	player.verticalSpeed = 0
	player.canJump = false
	player.reachedGoal = false
	player.health = 100
	player.forward = 0
	player.left = 0
	player.timeScalar = 1.0
	player.printInfo = false
	player.heightmapIndex = 1
	player.spamCasting = false
	player.charging = false
	
	player.walkableIncline = 1
	player.chargedspell = {}
	player.timeSinceShot = 0
	player.shootCD = 0.3

	player.animationController = CreatePlayerController(player)

	-- set basic variables for the player2
	player2.transformID = Transform.Bind()

	if Network.GetNetworkHost() == false then
		player.transformID, player2.transformID = player2.transformID, player.transformID
	end

	-- set spells for player
	player.spells = {}
	--player.spells[1] = dofile( "Scripts/projectile.lua" )
	player.spells[1] = {}
	player.spells[2] = {}
	for i = 1,  10 do	--create the projectile instances
		table.insert(player.spells[1], CreateFireball())
	end
	for i = 1,  10 do	--create the arc instances
		table.insert(player.spells[2], CreateFireballArc())
	end
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
	Network.SendTransform(player.transformID, {x=0, y=0, z=0}, {x=0, y=0, z=0}, {x=0, y=0, z=0})

	-- load and set a model for the player
	local model = Assets.LoadModel("Models/testGuy.model")
	Gear.AddAnimatedInstance(model, player.transformID, player.animationController.animation)
	Gear.AddAnimatedInstance(model, player2.transformID, player.animationController.animation)

	Erebus.SetControls(player.transformID)
	
end

function UnloadPlayer()
end

function UpdatePlayer(dt)
	if player.health > 0 then
		player.timeSinceShot = player.timeSinceShot + dt
		player.forward = 0
		player.left = 0
		player.testCamera = false

		dt = dt * player.timeScalar

		local position = Transform.GetPosition(player.transformID)
		local direction = Transform.GetLookAt(player.transformID)
		local rotation = Transform.GetRotation(player.transformID)

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
			if player.timeSinceShot > player.shootCD then
				player.spamCasting = true
				player.attackTimer = 1
				player.testCamera = true
				for _,v in ipairs(player.spells[player.currentSpell]) do
					if not v.alive then
						v:Cast(0.5, false)
						break
					end
				end
				player.timeSinceShot = 0
			end
		end

		if Inputs.ButtonReleased(Buttons.Left) then
			player.spamCasting = false
		end
		if Inputs.ButtonDown(Buttons.Right) then
		
			if next(player.chargedspell) == nil then
				for _,v in ipairs(player.spells[player.currentSpell]) do
					if not v.alive then
						player.chargedspell = v
						break
					end
				end
			end
			player.chargedspell:Charge(dt)
		end
		if Inputs.ButtonReleased(Buttons.Right) then
			player.chargedspell:ChargeCast(dt)
		end

		if Inputs.KeyPressed("1") then player.currentSpell = 1; player.chargedspell = {} end
		if Inputs.KeyPressed("2") then player.currentSpell = 2; player.chargedspell = {} end

		Transform.Move(player.transformID, player.forward, player.verticalPosition, player.left, dt)
		local newPosition = Transform.GetPosition(player.transformID)

		local posx = math.floor(newPosition.x/512)
		local posz = math.floor(newPosition.z/512)
		player.heightmapIndex = (posz*2 + posx)+1
		if player.heightmapIndex<1 then player.heightmapIndex = 1 end
		if player.heightmapIndex>4 then player.heightmapIndex = 4 end

		--print(newPosition.x,newPosition.z)
		local height = heightmaps[player.heightmapIndex]:GetHeight(newPosition.x,newPosition.z) + MOLERAT_OFFSET --+heightmaps[player.heightmapIndex].offset +MOLERAT_OFFSET
		--print(height)

		local diff = height - position.y
		--if diff <= player.walkableIncline then
		--	position = newPosition
		--else
		--	posx = math.floor(position.x/512)
		--	posz = math.floor(position.z/512)
		--	player.heightmapIndex = (posz*2 + posx)+1
		--	if player.heightmapIndex<1 then player.heightmapIndex = 1 end
		--	if player.heightmapIndex>4 then player.heightmapIndex = 4 end
		--	height = heightmaps[player.heightmapIndex]:GetHeight(position.x,position.z) + MOLERAT_OFFSET --+heightmaps[player.heightmapIndex].offset +MOLERAT_OFFSET
		--end
		position = newPosition

		position.y = position.y + player.verticalSpeed
		player.verticalSpeed = player.verticalSpeed - 0.982 * dt

		if position.y <= height then
			position.y = height
			player.canJump = true
			player.verticalSpeed = 0
		end

		Transform.SetPosition(player.transformID, position)

		Network.SendTransform(player.transformID, position, direction, rotation)
		newtransformvalue, id_2, pos_x_2, pos_y_2, pos_z_2, lookAt_x_2, lookAt_y_2, lookAt_z_2, rotation_x_2, rotation_y_2, rotation_z_2= Network.GetTransform()

		if newtransformvalue == true then
			Transform.SetPosition(id_2, {x=pos_x_2, y=pos_y_2, z=pos_z_2})
			Transform.SetLookAt(id_2, {x=lookAt_x_2, y=lookAt_y_2, z=lookAt_z_2})
			Transform.SetRotation(id_2, {x=rotation_x_2, y=rotation_y_2, z=rotation_z_2})
		end

		--ANIMATION UPDATING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		player.animationController:AnimationUpdate(dt)

	end
		-- update the current player spell
		for i=1, #player.spells do 
			for _,j in ipairs(player.spells[i]) do
				if j.alive then
				j:Update(dt)
				end
			end
		end

		-- check collision against the goal
		local collisionIDs = player.sphereCollider:GetCollisionIDs()
		for curID=1, #collisionIDs do
			if collisionIDs[curID] == goal.collider:GetID() then
				player.reachedGoal = true
			end
		end

	-- show player position and lookat on screen
	if Inputs.KeyPressed("0") then player.printInfo = not player.printInfo end
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

	if player.reachedGoal then Gear.Print("You win!", 560, 100) end
	
end

return { Load = LoadPlayer, Unload = UnloadPlayer, Update = UpdatePlayer }