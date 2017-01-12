local MOLERAT_OFFSET = 1.8
local PLAYER_MAX_SPELLS = 2
local PLAYER_JUMP_SPEED = 0.35
player = {}

function Round(num, idp)
	return tonumber(string.format("%." .. (idp or 0) .. "f", num))
end

function LoadPlayer()
	-- set basic variables for the player
	player.transformID = Transform.Bind()
	player.moveSpeed = 12
	player.verticalSpeed = 0
	player.canJump = false
	player.reachedGoal = false
	player.health = 100
	player.animation = Animation.Create()
	player.animationState = 1
	player.timeScalar = 1.0
	player.printInfo = false

	-- set spells for player
	player.spells = {}
	--player.spells[1] = dofile( "Scripts/projectile.lua" )
	player.spells[1] = {}
	player.spells[2] = {}
	for i = 1,  10 do	--create the projectile instances
		table.insert(player.spells[1], CreateChronoBall())
	end
	for i = 1,  10 do	--create the arc instances
		table.insert(player.spells[2], CreateFireGroundAoE())
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

	-- load and set a model for the player
	local model = Assets.LoadModel("Models/testGuy.model")
	--Gear.AddStaticInstance(model, player.transformID)
	Gear.AddAnimatedInstance(model, player.transformID, player.animation)


	local playerAnimationTransitionTimes = 
	{
		{1, 1, 1},
		{1, 1, 1},
		{1, 1, 1}
	}

	player.animation:SetTransitionTimes(playerAnimationTransitionTimes)

	Erebus.SetControls(player.transformID)
	
end

function UnloadPlayer()
end

function UpdatePlayer(dt)
	if player.health > 0 then
		forward, left = 0, 0
		player.testCamera = false

		dt = dt * player.timeScalar

		local position = Transform.GetPosition(player.transformID)
		local direction = Transform.GetLookAt(player.transformID)
		local rotation = Transform.GetRotation(player.transformID)
		player.animationState = 1

		if Inputs.KeyDown("W") then
			forward = player.moveSpeed
				player.animationState = 2
			end
		if Inputs.KeyDown("S") then
			forward = -player.moveSpeed
				player.animationState = 2
			end
		if Inputs.KeyDown("A") then
			left = player.moveSpeed
				player.animationState = 2
			end
		if Inputs.KeyDown("D") then
			left = -player.moveSpeed
				player.animationState = 2
			end
		if Inputs.KeyPressed(Keys.Space) and player.canJump then
			player.verticalSpeed = PLAYER_JUMP_SPEED
				player.canJump = false
				player.animationState = 2
			end
		if Inputs.ButtonDown(Buttons.Left) then
			player.testCamera = true
				player.animationState = 3
			end
		if Inputs.ButtonReleased(Buttons.Left) then
			player.animationState = 2
			for _,v in ipairs(player.spells[player.currentSpell]) do
				if not v.alive then
					v:Cast()
					break
				end
			end
		end
		if Inputs.KeyPressed("1") then player.currentSpell = 1 end
		if Inputs.KeyPressed("2") then player.currentSpell = 2 end

		Transform.Move(player.transformID, forward, player.verticalPosition, left, dt)

		position = Transform.GetPosition(player.transformID)
		position.y = position.y + player.verticalSpeed
		player.verticalSpeed = player.verticalSpeed - 0.982 * dt

		local posx = math.floor(position.x/512)
		local posz = math.floor(position.z/512)
		local heightmapIndex = (posz*2 + posx)+1
		if heightmapIndex < 1 then heightmapIndex = 1 end
		if heightmapIndex > 4 then heightmapIndex = 4 end

		local height = heightmaps[heightmapIndex]:GetHeight(position.x%512,position.z%512)+heightmaps[heightmapIndex].offset +MOLERAT_OFFSET
		if position.y <= height then
			position.y = height
			player.canJump = true
			player.verticalSpeed = 0
		end

		Transform.SetPosition(player.transformID, position)

		player.animation:Update(dt, player.animationState)
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