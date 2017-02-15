FIREBALL_SPELL_TEXTURE = Assets.LoadTexture("Textures/fireball.png");
FIRESPAM_COOLDOWN = 0.6
FIREBALL_COOLDOWN = 8
FIRESPAM_SPEED = 120
FIREBALL_SPEED = 1
MIN_CHARGETIME_FIREBALL = 0.5
FIREBALL_BASE_DMG = 20

function CreateFireball(entity)
	function initSmallFireball()
		local tiny = {}
		tiny.type = CreateProjectileType()
		tiny.damage = 1
		tiny.alive = false
		tiny.lifeTime = 1.8
		tiny.hits = {}
		local model = Assets.LoadModel( "Models/grenade.model" )
		Gear.AddForwardInstance(model, tiny.type.transformID)
		tiny.particles = createIceGrenadeParticles()
		return tiny
	end
	--General variables
	local spell = {}
	spell.damage = FIREBALL_BASE_DMG
	spell.hudtexture = FIREBALL_SPELL_TEXTURE
	spell.isActiveSpell = false		spell.aSmallIsActive = 0
	spell.cooldown = 0		spell.maxcooldown = FIREBALL_COOLDOWN
	spell.chargedTime = 0	spell.maxChargeTime = 3
	spell.caster = entity.transformID
	spell.owner = entity
	spell.spamCooldown = FIRESPAM_COOLDOWN
	spell.position = {x = 0, y = 0, z = 0}
	--Small spamming fireballs
	spell.smallFB = {}		spell.currentFB = 1
	for i = 1, 4 do	table.insert(spell.smallFB, initSmallFireball())	end
	
	--Big fireball
	spell.bigBallActive = false
	spell.bigBallID = Transform.Bind()	
	spell.ballParticles = createChargeParticles()
	spell.sphereCollider = SphereCollider.Create(spell.bigBallID)
	CollisionHandler.AddSphere(spell.sphereCollider, 1)	
	SphereCollider.SetActive(spell.sphereCollider, false)
	Transform.ActiveControl(spell.bigBallID, false)
	local model = Assets.LoadModel("Models/projectile1.model")
	Gear.AddStaticInstance(model, spell.bigBallID)
	
	spell.effects = {}		table.insert(spell.effects, FIRE_EFFECT_INDEX)

	function spell:Update(dt)
		self.spamCooldown = self.spamCooldown - dt
		if self.aSmallIsActive > 0 then
			self:UpdateSmallFBs(dt)
		end
		if self.bigBallActive then
			self:BigBallUpdate(dt)
		else	self.cooldown = self.cooldown - dt end
	end
	
	function spell:UpdateSmallFBs(dt)
		for i = 1, 4 do 
			if self.smallFB[i].alive then 
				self.smallFB[i].particles.update(self.smallFB[i].type.position)
				self.smallFB[i].type:Update(dt)

				local collisionIDs = self.smallFB[i].type.sphereCollider:GetCollisionIDs()
				for curID = 1, #collisionIDs do
					for curEnemy=1, #enemies do
						if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
							enemies[curEnemy]:Hurt(self.smallFB[i].damage, self.owner)
							self:SpamFireball(i)
						end
					end
				end
				self.smallFB[i].lifeTime = self.smallFB[i].lifeTime - dt		
				if(self.smallFB[i].lifeTime < 0) then 
					self:SpamFireball(i)
				end
			end		
		end	
	end

	function spell:Cast(entity)
		if self.spamCooldown < 0 and not self.bigBallActive then
			self.spamCooldown = FIRESPAM_COOLDOWN
			self.aSmallIsActive = self.aSmallIsActive + 1
			self.smallFB[self.currentFB].type:Shoot(self.owner.position, Camera.GetDirection(), FIRESPAM_SPEED)
			self.smallFB[self.currentFB].particles.cast()
			self.smallFB[self.currentFB].lifeTime = 2.1	
			self.smallFB[self.currentFB].alive = true
			if self.currentFB < 4 then		
				self.currentFB = self.currentFB + 1
			else	self.currentFB = 1
			end
		end
	end

	function spell:ChargeCast(entity)
		if self.bigBallActive then
			self:Kill()
		end
		if self.cooldown < 0.0 and MIN_CHARGETIME_FIREBALL < self.chargedTime and not self.bigBallActive then	
			ZoomOutCamera()		
			self.scale = self.chargedTime	
			self.cooldown = FIREBALL_COOLDOWN
			self.bigBallActive = true
			self.position = entity.position
			SphereCollider.SetRadius(self.sphereCollider, self.scale)
			SphereCollider.SetActive(self.sphereCollider, true)
			Transform.ActiveControl(self.bigBallID, true)
			Transform.SetPosition(self.bigBallID, self.position)
			Transform.SetScale(self.bigBallID, self.scale)
			self.damage = FIREBALL_BASE_DMG * self.chargedTime
			self.light = Light.addLight(124, 32, 220, 1, 0, 0, 20, 3, true)
			self.ballParticles.cast()
		end
		self.chargedTime = 0
	end

	function spell:BigBallUpdate(dt)
		local direction = Transform.GetLookAt(self.caster)
		self.position.x = self.position.x + direction.x * FIREBALL_SPEED * dt
		self.position.y = self.position.y + direction.y * FIREBALL_SPEED * dt
		self.position.z = self.position.z + direction.z * FIREBALL_SPEED * dt
		Transform.SetPosition(self.bigBallID, self.position)
		self.damage = self.damage + 3 * dt
		self.ballParticles.update(self.position)
		local hm = GetHeightmap(self.position)
		if hm then
			if self.position.y < hm.asset:GetHeight(self.position.x, self.position.z) then self:Kill() end
		end
		if self.position.x > 1000 and self.position.x < -1000 and self.position.y > 1000 and self.position.z < -1000 and self.position.z > 1000 then
			self:Kill()
		end

		Light.updatePos(self.light, self.position)

		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					enemies[curEnemy]:Hurt(self.damage, self.owner)
				end
			end
		end
	end

	spell.Charge = BaseCharge

	function spell:Change()
		self.isActiveSpell = not self.isActiveSpell
	end

	function spell:GetEffect()
		return self.effects[1]
	end

	function spell:Combine(effect,damage)
		if #self.effects < 2 then
			table.insert(self.effects, effect)
			self.damage = self.damage + damage
		end
	end

	function spell:Kill()
		self.bigBallActive = false
		self.ballParticles.die()
		SphereCollider.SetActive(self.sphereCollider, false)
		Transform.ActiveControl(self.bigBallID, false)
		self.damage = FIREBALL_BASE_DMG	
	end

	function spell:SpamFireball(index)
		self.smallFB[index].particles.die(self.smallFB[index].type.position)
		self.smallFB[index].type:Kill() 
		self.smallFB[index].alive = false 
		self.aSmallIsActive = self.aSmallIsActive - 1
	end
	return spell
end