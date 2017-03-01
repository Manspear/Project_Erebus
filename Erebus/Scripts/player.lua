SLOW_EFFECT_INDEX = 1
TIME_SLOW_EFFECT_INDEX = 2
FIRE_EFFECT_INDEX = 3
LIFE_STEAL_EFFECT_INDEX = 4
POLYMORPH_EFFECT_INDEX = 5
KNOCKBACK_EFFECT_INDEX = 6
DASH_COOLDOWN = 0.75
DASH_DURATION = 0.38
--Used for spellCharging
FIRE=1
NATURE=2
ICE=3
NEUTRAL=4

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
	effectTable[LIFE_STEAL_EFFECT_INDEX] = CreateLifeStealEffect
	effectTable[POLYMORPH_EFFECT_INDEX] = CreatePolyEffect
	effectTable[KNOCKBACK_EFFECT_INDEX] = CreateKnockbackEffect
	-- Init unique ids
	player.animationController = CreatePlayerController(player)
	player2.animationController = CreatePlayerController(player2)
	local model = Assets.LoadModel("Models/player1.model")
	local model2 = Assets.LoadModel("Models/player2.model")
	if Network.GetNetworkHost() then
		player.transformID = Gear.BindAnimatedInstance(model, player.animationController.animation)
		player2.transformID = Gear.BindAnimatedInstance(model2, player2.animationController.animation)
	else
		player2.transformID = Gear.BindAnimatedInstance(model, player2.animationController.animation)
		player.transformID = Gear.BindAnimatedInstance(model2, player.animationController.animation)
	end

	-- set basic variables for the player
	player.moveSpeed = 30
	player.levelIndex = 1
	player.isAlive = true
	player.isControlable = true
	player.isCombined = false; --change here
	player.health = 100.0
	player.forward = 0
	player.left = 0
	player.timeScalar = 1.0
	player.printInfo = false
	player.spamCasting = false
	player.charging = false
	player.firstAttack = true
	player.rayCollider = RayCollider.Create(player.transformID)
	player.move = {}
	CollisionHandler.AddRay(player.rayCollider)
	RayCollider.SetActive(player.rayCollider, false)	
	player.dashdir = {x= 0, z= 0}
	player.dashtime = 0
	player.dashcd = 0
	player.invulnerable = false
	player.position = Transform.GetPosition(player.transformID)
	player.pingImage = UI.load(0, -3, 0, 0.75, 0.75)
	player.pingTexture = Assets.LoadTexture("Textures/ping.dds")
	player.pingDuration = 1
	player.ping = 0

	player.damagedTint = {r=1, g=0, b=0, a=0}
	player.damagedTintDuration = 0.3

	player.deathImage = UI.load(0, -3, 0, 0.75, 0.75)
	player.deathTexture = Assets.LoadTexture("Textures/playerDeath.dds")

	player.chargeImage = UI.load(0, -3, 0, 0.50, 0.50)
	player.combineImage = UI.load(0, -3, 0, 0.50, 0.50)
	player.combined = false
	player.combinedSpell = -1

	--Used as a delay hindering rampant spellswitching
	player.globalSpellSwitchingCooldownTimerThreshHold = 1
	player.globalSpellSwitchingCooldownTimer = 0
	player.globalSpellSwitchingCooldownTimerStarted = false

	player.resetSpamAttack = false
	player.attackDelayTimerStarted = false
	player.attackDelayTimerThreshHold = 0
	player.attackDelayTimer = 0

	player.dashStartParticles = Particle.Bind("ParticleFiles/dash.particle")
	player.dashEndParticles = Particle.Bind("ParticleFiles/dash.particle")

	Particle.SetExtro(player.dashStartParticles, false)
	Particle.SetExtro(player.dashEndParticles, true)

	player.lastPos = Transform.GetPosition(player.transformID)
	player.effects = {}

	player.nrOfInnerCircleEnemies = 0
	player.nrOfOuterCircleEnemies = 0

	player.outerCirclerange = 4
	player.innerCirclerange = 8

	-- set spells for player
	player.spells = {}	
	player.currentSpell = 1
	function player.Hurt(self,damage, source)
		self.damagedTint.a = 1
		if not player.invulnerable then
			self.health = self.health - damage
			if self.health < 1 then
				self.health = 0
				self:Kill()
			end
			--print("Sending new health", self.health)
			Network.SendPlayerHealthPacket(self.transformID, self.health)
		end
	end
	function player.Apply(self, effect)
		if not self.invulnerable then
			table.insert(self.effects, effect)
			effect:Apply(self)
		end
	end

	function player.Kill(self)
		self.health = 0
		for i=1, #enemies do
			enemies[i].SetState(enemies[i], IDLE_STATE )
		end
	end

	function player.ImDead(self, dt)
		self.isAlive = false
		self:Kill()
	end

	function player.ChangeHeightmap(self, levelIndex)
		player.levelIndex = levelIndex
		player.currentHeightmap = heightmaps[levelIndex]
		player.controller:SetHeightmap(player.currentHeightmap.asset)
	end

	-- add a sphere collider to the player
	player.sphereCollider = SphereCollider.Create(player.transformID)
	CollisionHandler.AddSphere(player.sphereCollider)
	--player.sphereCollider:GetCollisionIDs()
	player.collisionID = player.sphereCollider:GetID()
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
	player.charger = CreateChargeEggs(player)
	player.friendCharger = CreateCombineRay(player)
	player.revive = CreateRevive(player)
end


function UnloadPlayer()
	DestroyFireEffect(effectTable[FIRE_EFFECT_INDEX])
	DestroySlowEffect(effectTable[SLOW_EFFECT_INDEX])
	DestroyTimeSlowEffect(effectTable[TIME_SLOW_EFFECT_INDEX])
	DestroyLifeStealEffect(effectTable[LIFE_STEAL_EFFECT_INDEX])
	--DestroyPolyEffect(effectTable[POLYMORPH_EFFECT_INDEX])
	DestroyKnockbackEffect(effectTable[KNOCKBACK_EFFECT_INDEX])

	DestroyPlayerController(player.animationController)
	Gear.UnbindInstance(player.transformID)

	Particle.Unbind(player.dashStartParticles)
	Particle.Unbind(player.dashEndParticles)

	DestroyAim(player.aim)
	DestroyChargeEggs(player.charger)
	DestroyCombineRay(player.friendCharger)
	DestroyRevive(player.revive)
	
	player = {}
	effectTable = {}

	Assets.UnloadModel( "Models/player1.model" )
	Assets.UnloadTexture( "Textures/ping.dds" )
	Assets.UnloadTexture( "Textures/playerDeath.dds" )

	UnloadPlayer2()
end

function LoadSpells(player)
	player.spells[1] = SpellList[1].spell
	player.spells[2] = SpellList[2].spell
	player.spells[3] = SpellList[3].spell
	player.spells[1].isActiveSpell = true
end

function FindHeightmap(position)
	local hm = player.currentHeightmap
	if not hm.asset:Inside(position) then
		for k,index in pairs(levels[player.levelIndex].surrounding) do
			hm = heightmaps[index]
			if hm.asset:Inside(position) then
				print(index)
				player:ChangeHeightmap(index)
				break
			end
		end

		if hm then
			local allTiles = {}
			for _,v in pairs(levels[player.levelIndex].surrounding) do
				table.insert(allTiles,v)
			end
			table.insert(allTiles,player.levelIndex)

			local newTiles = {}
			for _,v in pairs(allTiles) do
				if not loadedLevels[v] then
					table.insert(newTiles,v)
				end
			end

			local oldTiles = {}
			for k,v in pairs(loadedLevels) do
				if v then
					local found = false
					for _,b in pairs(allTiles) do
						if k == b then
							found = true
							break
						end
					end

					if not found then
						table.insert(oldTiles,k)
					end
				end
			end

			--unload previous tiles
			for _,v in pairs(oldTiles) do
				print("Unloading tile: " .. v)
				levels[v].unload()
				loadedLevels[v] = false
			end

			--load new tiles
			for _,v in pairs(newTiles) do
				print("Loading tile: " .. v)
				levels[v].load()
				loadedLevels[v] = true
			end
		end
	end
end

function UpdatePlayer(dt)
	
	--ANIMATION UPDATING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	player.animationController:AnimationUpdate(dt, Network)
	if Network.ShouldSendNewAnimation() == true then
		Network.SendAnimationPacket(player.animationController.animationState1, player.animationController.animationState2)
	end

	UpdatePlayer2(dt)
	if player.isAlive then
		local scale = 0.8
		local color = {0.6, 0.3, 0.1, 0.8}
		local info = ""..player.timeScalar
		Gear.Print(info, 1230, 0, scale, color)
		dt = dt * player.timeScalar

		player.dashcd = player.dashcd - dt

		if player.ping > 0 then
			player.ping = player.ping - dt;
		end

		player.position = Transform.GetPosition(player.transformID)
		local direction = Transform.GetLookAt(player.transformID)
		local rotation = Transform.GetRotation(player.transformID)

		if player.damagedTint.a > 0 then
			player.damagedTint.a = player.damagedTint.a - ( dt / player.damagedTintDuration )
			player.animationController.animation:SetTint(player.damagedTint)
		end

		GetCombined()
		FindHeightmap(player.position)

		Sound.SetPlayerTransform({player.position.x, player.position.y, player.position.z}, {direction.x, direction.y, direction.z})
		if Network.ShouldSendNewTransform() == true then
			Network.SendTransformPacket(player.transformID, player.position, direction, rotation)
		end
		
	else
		local newRessurectionVal, ressurectionID, ressurectionPlayerHealth = Network.GetRessurectionPacket()
		if newRessurectionVal then
			--print("Ressurection...")
			if ressurectionPlayerHealth > 0 and ressurectionID == player.transformID then 
				player.health = ressurectionPlayerHealth	
				player.isAlive = true
				--print("Wait, i got ressurected?!", player.health, player.isAlive)
			end
		end
	end

	if not player2.isAlive then
		if Inputs.KeyPressed("R") then
			Network.SendChargeSpellPacket(player.transformID, 0, true)
			player.revive:Cast(player2)
		end
		if Inputs.KeyDown("R") then 
			player.revive:Update(dt)
		end
		if Inputs.KeyReleased("R") then 
			Network.SendChargeSpellPacket(player.transformID, 0, false)
			player.revive:Kill()
		end
	end

	if player.health <= 0 then
		player:ImDead()
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
	if player.isAlive then
		player.controller:Update()
		if player.dashtime > 0 then
			local factor = math.sqrt(player.dashtime/DASH_DURATION)--math.min(1+player.dashtime/(2*DASH_COOLDOWN),1)
			local left = player.dashdir.z * factor
			local fwd = player.dashdir.x * factor
			player.controller:Move(left*dt, 0, fwd*dt)
			player.dashtime = player.dashtime - dt
		
			if player.dashtime <= 0 then
				player.invulnerable = false
				Transform.SetScale(player.transformID, 1)
				Network.SendDashPacket(false)
				Particle.Explode(player.dashEndParticles,player.position)
			end
		else
			player.controller:Move(player.left * dt, 0, player.forward * dt)
		end
		if not console.visible then
			Controls(dt)
		end
	end
	--Moves the ping icon
	UI.reposWorld(player.pingImage, player.position.x, player.position.y+1.5, player.position.z)
	UI.reposWorld(player.deathImage, player.position.x, player.position.y+2.1, player.position.z)

	right = Camera.GetRight()

	UI.reposWorld(player.chargeImage, player.position.x - right.x * 0.30, player.position.y+1.5, player.position.z - right.z * 0.30)
	UI.reposWorld(player.combineImage, player.position.x + right.x * 0.30, player.position.y+1.5, player.position.z + right.z * 0.30)

	-- check collision against triggers and call their designated function
	for _,v in pairs(levels[player.levelIndex].triggers) do
		if v.collider:CheckCollision() then
			if not v.collider.triggered then
				if v.collider.OnEnter then
					v.collider:OnEnter()
				else
					v.collider:OnTriggering(dt)
				end
				v.collider.triggered = true
			else
				v.collider:OnTriggering(dt)
			end
		else
			if v.collider.triggered then
				if v.collider.OnExit then
					v.collider:OnExit()
				end
				v.collider.triggered = false
			end
		end
	end
	UpdateCamera(dt)
end

function SendCombine(spell)
	if player2.isCombined == false then
		if player2.charging == true then
			player2.isCombined = true
			player2.spells[player2.currentSpell]:Combine(spell:GetEffect(), spell.damage)
			Network.SendChargingPacket(spell:GetEffect(), spell.damage, spell.spellListId)
			player2.combinedSpell = spell.spellListId
		end
	end
end

function GetCombined()
	local combine, effectIndex, damage, spellListIndex = Network.GetChargingPacket()
	if combine and Inputs.ButtonDown(Buttons.Right) then
		player.spells[player.currentSpell]:Combine(effectIndex, damage)
		player.isCombined = true
		player.combinedSpell = spellListIndex
	end
end

function Controls(dt)
	player.forward = 0
	player.left = 0
	if player.isControlable then		
		if Inputs.KeyDown(SETTING_KEYBIND_FORWARD) then
			player.forward = player.moveSpeed
		end
		if Inputs.KeyDown(SETTING_KEYBIND_BACK) then
			player.forward = -player.moveSpeed
		end
		if Inputs.KeyDown(SETTING_KEYBIND_LEFT) then
			player.left = player.moveSpeed
		end
		if Inputs.KeyDown(SETTING_KEYBIND_RIGHT) then
			player.left = -player.moveSpeed
		end
		if Inputs.KeyDown(SETTING_KEYBIND_PING) then
			pingPressed(player)
			Network.SendPlayerEventPacket(0) -- Event 0 = ping position
		end
		if Inputs.KeyDown(SETTING_KEYBIND_COMBINE) then
			sElement = player.spells[player.currentSpell].element
			pos2 = Transform.GetPosition(player2.transformID)
			
			local ChargeDir = {}
			ChargeDir.x =  pos2.x - player.position.x 
			ChargeDir.y = pos2.y - player.position.y 
			ChargeDir.z =  pos2.z -  player.position.z 


			--normalize and length
			len = vec3length(vec3sub(player.position, pos2))
			
			a = math.sqrt( (ChargeDir.x * ChargeDir.x) + (ChargeDir.y * ChargeDir.y) + (ChargeDir.z * ChargeDir.z) )

			ChargeDir.x = (ChargeDir.x /a)
			ChargeDir.y = (ChargeDir.y /a)
			ChargeDir.z = (ChargeDir.z /a)
			print(ChargeDir.x)
			local dir = Camera.GetDirection()
			
			
			
			if len<35 then

				dot = (ChargeDir.x * dir.x) + (ChargeDir.y * dir.y) + (ChargeDir.z * dir.z)
				if dot >0.25 then

					player.friendCharger:FireChargeBeam(dt,ChargeDir,sElement,len)
					SendCombine(player.spells[player.currentSpell])
				else 
					player.friendCharger:EndChargeBeam()
				end

			else 
				player.friendCharger:EndChargeBeam()
			end
		end
		if Inputs.KeyReleased(SETTING_KEYBIND_COMBINE) then
			HideCrosshair()
			player.friendCharger:EndChargeBeam()
			
			RayCollider.SetActive(player.rayCollider, false)
		end

		if not player.charging then
			--ATTACK DELAY TIMER
			player.attackDelayTimer = player.attackDelayTimer + dt

			if Inputs.ButtonDown(SETTING_KEYBIND_NORMAL_ATTACK) then
				if player.spells[player.currentSpell].hasSpamAttack == true then 
					player.charger:EndCharge()
					player.spamCasting = true
					
					
					if player.firstAttack == true then 		
						if player.attackDelayTimerStarted == false then 
							player.attackDelayTimerStarted = true
							player.attackDelayTimer = 0
							player.attackDelayTimerThreshHold = player.spells[player.currentSpell].castTimeFirstAttack
							player.animationController.animation:SetSegmentPlayTime(player.spells[player.currentSpell].castAnimationPlayTime, 1)
							player.firstAttack = false	
						end 
					elseif player.firstAttack == false then 
						if player.attackDelayTimer >= player.attackDelayTimerThreshHold then 
							local overTime = player.attackDelayTimer - player.attackDelayTimerThreshHold
							player.attackDelayTimer = overTime
							player.attackDelayTimerThreshHold = player.spells[player.currentSpell].castTimeAttack						
							
							--Gets in here every time it should. But the cast function is not executed for some reason.

							Network.SendSpellPacket(player.transformID, player.currentSpell)
							player.spells[player.currentSpell]:Cast(player, 0.5, false)	
						end 
					end
				end
			end
			
			if Inputs.ButtonReleased(SETTING_KEYBIND_NORMAL_ATTACK) then
				player.spamCasting = false
				player.firstAttack = true
				player.attackDelayTimerStarted = false
				player.animationController.animation:ResetSegmentPlayTime(1)
			end

			if player.globalSpellSwitchingCooldownTimerStarted == true then 
				player.globalSpellSwitchingCooldownTimer = player.globalSpellSwitchingCooldownTimer + dt

				if player.globalSpellSwitchingCooldownTimer >= player.globalSpellSwitchingCooldownTimerThreshHold then 
					player.globalSpellSwitchingCooldownTimerStarted = false
					player.globalSpellSwitchingCooldownTimer = 0
				end
			end

			if player.globalSpellSwitchingCooldownTimerStarted == false then 
				if Inputs.KeyPressed(SETTING_KEYBIND_SPELL_ONE) or Inputs.KeyPressed(SETTING_KEYBIND_SPELL_TWO) or Inputs.KeyPressed(SETTING_KEYBIND_SPELL_THREE) then
					if Inputs.KeyPressed(SETTING_KEYBIND_SPELL_ONE) then	player.spells[player.currentSpell]:Change()	player.currentSpell = 1	player.spells[player.currentSpell]:Change() end
					if Inputs.KeyPressed(SETTING_KEYBIND_SPELL_TWO) then	player.spells[player.currentSpell]:Change()	player.currentSpell = 2	player.spells[player.currentSpell]:Change()	end
					if Inputs.KeyPressed(SETTING_KEYBIND_SPELL_THREE) then	player.spells[player.currentSpell]:Change()	player.currentSpell = 3	player.spells[player.currentSpell]:Change()	end

					player.spamCasting = false
					player.firstAttack = true
					player.attackDelayTimerStarted = false
					player.resetSpamAttack = true
					
					player.globalSpellSwitchingCooldownTimerStarted = true
					--player.animationController.animation:ResetSegmentPlayTime(1)
				end
			end

		end

		if not player.spamCasting then
			if Inputs.ButtonDown(SETTING_KEYBIND_CHARGED_ATTACK) then
				if player.charging == true then
					player.spells[player.currentSpell]:Charge(dt)
					player.charger:Update(dt, player.spells[player.currentSpell].chargedTime)				
				else
					if player.spells[player.currentSpell].cooldown<0 then
						Network.SendChargeSpellPacket(player.transformID, player.currentSpell, false)
						sElement = player.spells[player.currentSpell].element	
						player.charger:StartCharge(player.position, sElement) 
						player.charging = true	
					end		
				end
			end
		
			if Inputs.ButtonReleased(SETTING_KEYBIND_CHARGED_ATTACK) then
				if player.charging == true then
					Network.SendChargeSpellPacket(player.transformID, player.currentSpell, true)
					player.spells[player.currentSpell]:ChargeCast(player)
					player.charger:EndCharge()
					player.charging = false
					player.isCombined = false
					player.combinedSpellIDs = player.spells[player.currentSpell]:GetCollider()
				end
			end
		end

		if Inputs.KeyPressed(SETTING_KEYBIND_DASH) and player.dashcd < 0 then
			Particle.Explode(player.dashStartParticles, player.position)
			Transform.SetScale(player.transformID, 0)
			player.dashcd = DASH_COOLDOWN
			player.dashdir.x = player.forward * 3.5
			player.dashdir.z = player.left * 3.5
			player.dashtime = DASH_DURATION
			player.invulnerable = true
			Network.SendDashPacket(true)
		end
	end
end

function pingPressed(player)
	Sound.Play("Effects/ping.wav", 1, player.position)	
	player.ping = player.pingDuration
end

return { Load = LoadPlayer, Unload = UnloadPlayer, Update = UpdatePlayer }