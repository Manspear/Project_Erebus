function LoadPlayer2()
	-- set basic variables for the player2
	player2.moveSpeed = 10
	player2.isAlive = true
	player2.isCombined = false
	player2.firstCombine = true
	player2.health = 100
	player2.charging = false
	player2.position = {x=0, y=0, z=0}
	
	player2.dashtime = 0
	player2.dashcd = 0
	player2.invulnerable = false

	player2.dashStartParticles = Particle.Bind("ParticleFiles/dash.particle")
	player2.dashEndParticles = Particle.Bind("ParticleFiles/dash.particle")

	Particle.SetExtro(player2.dashStartParticles, false)
	Particle.SetExtro(player2.dashEndParticles, true)

	player2.chargeImage = UI.load(0, -3, 0, 0.50, 0.50)
	player2.combineImage = UI.load(0, -3, 0, 0.50, 0.50)
	player2.pingImage = UI.load(0, -3, 0, 0.75, 0.75)
	player2.pingTexture = Assets.LoadTexture("Textures/ping.dds")
	player2.pingDuration = 1
	player2.ping = 0
	player2.deathImage = UI.load(0, -3, 0, 0.75, 0.75)
	player2.deathTexture = Assets.LoadTexture("Textures/playerDeath.dds")

	player2.chargeImage = UI.load(0, -3, 0, 0.50, 0.50)
	player2.combineImage = UI.load(0, -3, 0, 0.50, 0.50)

	player2.combineRayActive = false

	player2.sphereCollider = SphereCollider.Create(player2.transformID)
	CollisionHandler.AddSphere(player2.sphereCollider, 1)
	player2.collisionID = player2.sphereCollider:GetID()
	-- set spells for player
	player2.spells = {}
	player2.currentSpell = 1

	player2.friendCharger = CreateCombineRay(player2)
	player2.spellDirection = { x = 0, y = 0, z = 0 }


	--local model = Assets.LoadModel("Models/player1.model")
	player2.effects = {}

	player2.lastPos = Transform.GetPosition(player.transformID)

	player2.nrOfInnerCircleEnemies = 0
	player2.nrOfOuterCircleEnemies = 0

	player2.outerCirclerange = 4
	player2.innerCirclerange = 8

	function player2.Hurt(self,damage, source)

	end

	function player2.Kill(self)

	end

	function player2.Apply(self, effect)
		if not self.invulnerable then
			table.insert(self.effects, effect)
			effect:Apply(self)
		end
	end

	player2.aim = CreateAim(player2)
	player2.charger = CreateChargeEggs(player2)
	player2.revive = CreateRevive(player2)
	Transform.SetScale(player2.aim.transformID, 0)
	player2.castingRevive = false
end

function LoadSpellsPlayer2()
	player2.spells[1] = SpellListPlayer2[1].spell
	player2.spells[2] = SpellListPlayer2[2].spell
	player2.spells[3] = SpellListPlayer2[3].spell
	player2.spells[1].isActiveSpell = true
end

function GetCombined()
	local combine, chosenSpell, activateCombineRay = Network.GetChargingPacket()
	if combine then
		player2.combineRayActive = activateCombineRay
		if activateCombineRay == true then
			player2.spells[player2.currentSpell]:Change()
			player2.currentSpell = chosenSpell
			player2.spells[player2.currentSpell]:Change()
		elseif activateCombineRay == false then
			player2.friendCharger:EndChargeBeam()
			player2.friendCharger:resetCooldown()
		end
	end
end

function UnloadPlayer2()
	DestroyPlayerController(player2.animationController)
	Gear.UnbindInstance(player2.transformID)
	DestroyAim(player2.aim)
	DestroyChargeEggs(player2.charger)
	DestroyRevive(player2.revive)

	Particle.Unbind(player2.dashStartParticles)
	Particle.Unbind(player2.dashEndParticles)

	player2 = {}

	Assets.UnloadModel( "Models/player2.model" )
	Assets.UnloadTexture( "Textures/ping.dds" )
	Assets.UnloadTexture( "Textures/playerDeath.dds" )
end

function UpdatePlayer2(dt)
	if player2.ping > 0 then
		player2.ping = player2.ping - dt;
	end

	local newEventVal, eventID = Network.GetPlayerEventPacket()

	if newEventVal == true then
		if eventID == 0 then
			pingPressed(player2)
		end
	end

	local newtransformvalue, id_2, pos_x_2, pos_y_2, pos_z_2, lookAt_x_2, lookAt_y_2, lookAt_z_2, rotation_x_2, rotation_y_2, rotation_z_2 = Network.GetTransformPacket()

	if newtransformvalue == true then
		player2.position = {x=pos_x_2, y=pos_y_2, z=pos_z_2}
		Transform.SetPosition(id_2, {x=pos_x_2, y=pos_y_2, z=pos_z_2})
		Transform.SetLookAt(id_2, {x=lookAt_x_2, y=lookAt_y_2, z=lookAt_z_2})
		Transform.SetRotation(id_2, {x=rotation_x_2, y=rotation_y_2, z=rotation_z_2})
	end

	local newspellpacket, id_2, player2CurrentSpell, isCharging, shouldCast, spellDirX, spellDirY, spellDirZ = Network.GetSpellPacket()
	
	if newspellpacket == true then
		if player2CurrentSpell == 0 then		
			if shouldCast == true then		
				player2.revive:Cast(player)
				player2.castingRevive = true
			else
				player2.revive:Kill()
				player2.castingRevive = false
			end
		else
			player2.spells[player2.currentSpell]:Change()
			player2.currentSpell = player2CurrentSpell
			player2.spells[player2.currentSpell]:Change()
			if isCharging == false then
				player2.attackTimer = 1
				player2.spellDirection = { x = spellDirX, y = spellDirY, z = spellDirZ }
				player2.spells[player2.currentSpell]:Cast(player2)
			else
				if shouldCast == false then
					local spellElement = player2.spells[player2.currentSpell].element
					player2.charger:StartCharge(player2.position, spellElement, player2.spells[player2.currentSpell].minChargeTime)
					player2.charging = true
				else
					player2.spellDirection = { x = spellDirX, y = spellDirY, z = spellDirZ }
					player2.spells[player2.currentSpell]:ChargeCast(player2)
					player2.charger:EndCharge()
					player2.charging = false
					player2.isCombined = false
					player2.firstCombine = true
				end
			end
		end
	end
	
	if player2.charging == true then
		player2.spells[player2.currentSpell]:Charge(dt)
		player2.charger:Update(dt, player2.spells[player2.currentSpell].chargedTime)
	end

	if player2.firstCombine and player2.isCombined then
		player2.firstCombine = false
		player2.charger:StartParticles(player.spells[player.currentSpell].element)
	end
	
	player2.spells[1]:Update(dt)
	player2.spells[2]:Update(dt)
	player2.spells[3]:Update(dt)
	
	if player2.castingRevive == true then
		player2.revive:Update(dt)
	end

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

	local newDashValue, isDashing = Network.GetDashPacket()
	if newDashValue == true then
		if isDashing == true then
			Particle.Explode(player2.dashStartParticles, player2.position)
			Transform.SetScale(player2.transformID, 0)
			player2.dashtime = DASH_DURATION * 1.2
			player2.invulnerable = true
		else
			Particle.Explode(player2.dashEndParticles, player2.position)
			player2.dashtime = 0
		end
	end

	if player2.dashtime > 0 then
		player2.dashtime = player2.dashtime - dt
	end
	if player2.dashtime <= 0 then
		player2.invulnerable = false
		Transform.SetScale(player2.transformID, 1)
	end

	local newPlayerHealthValue, transformIdValue, currentHealthValue = Network.GetPlayerHealthPacket()
	if newPlayerHealthValue == true then
		player2.health = currentHealthValue
		--print("Received health:", player2.health)
		if player2.health < 1 then
			player2.isAlive = false
		else
			player2.isAlive = true
		end
	end

	local newChangeSpellsValue, changeSpell1, changeSpell2, changeSpell3 = Network.GetChangeSpellsPacket()
	if newChangeSpellsValue == true then
		player2.spells[1]:Kill()
		player2.spells[2]:Kill()
		player2.spells[3]:Kill()
		player2.spells[player2.currentSpell]:Change()
		player2.spells[1] = SpellListPlayer2[changeSpell1].spell
		player2.spells[2] = SpellListPlayer2[changeSpell2].spell
		player2.spells[3] = SpellListPlayer2[changeSpell3].spell
		player2.spells[player2.currentSpell]:Change()
	end

	GetCombined()
	if player2.combineRayActive == true then
		local ChargeDir = {}
		local currentPlayer2Pos = Transform.GetPosition(player2.transformID)

		ChargeDir.x = player.position.x - currentPlayer2Pos.x
		ChargeDir.y = player.position.y - currentPlayer2Pos.y
		ChargeDir.z = player.position.z - currentPlayer2Pos.z  

		local len = vec3length(vec3sub(currentPlayer2Pos, player.position))

		a = math.sqrt( (ChargeDir.x * ChargeDir.x) + (ChargeDir.y * ChargeDir.y) + (ChargeDir.z * ChargeDir.z) )

		ChargeDir.x = (ChargeDir.x /a)
		ChargeDir.y = (ChargeDir.y /a)
		ChargeDir.z = (ChargeDir.z /a)

		local chargeBeamResult = player2.friendCharger:FireChargeBeam(dt, ChargeDir, player2.spells[player2.currentSpell].element, len)

		if Inputs.ButtonDown(SETTING_KEYBIND_CHARGED_ATTACK) and chargeBeamResult then
			player.isCombined = true
			player.combinedSpell = player2.spells[player2.currentSpell].spellListId
			player.spells[player.currentSpell]:Combine(player2.spells[player2.currentSpell]:GetEffect(), player2.spells[player2.currentSpell].damage)
			player.charger:StartParticles(player2.spells[player2.currentSpell].element)
		end
	end

	UI.reposWorld(player2.pingImage, player2.position.x, player2.position.y+1.5, player2.position.z)
	right = Camera.GetRight()
	UI.reposWorld(player2.chargeImage, player2.position.x - right.x * 0.30, player2.position.y+1.5, player2.position.z - right.z * 0.30)
	UI.reposWorld(player2.combineImage, player2.position.x + right.x * 0.30, player2.position.y+1.5, player2.position.z + right.z * 0.30)
	UI.reposWorld(player2.deathImage, player2.position.x, player2.position.y+2.1, player2.position.z)

end