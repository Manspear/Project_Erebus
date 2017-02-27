FIREBALL_SPELL_TEXTURE = Assets.LoadTexture("Textures/IconFireball.dds");
FIRESPAM_COOLDOWN = 0.6
FIREBALL_COOLDOWN = 6
FIRESPAM_SPEED = 100
FIREBALL_SPEED = 18
FIREBALL_LIFETIME = 10
FIREBALL_EXPLODETIME = 0.5
MIN_CHARGETIME_FIREBALL = 0.5
FIRESPAM_DAMAGE = 50
FIREBALL_BASE_DMG = 4
FIREBALL_LIGHTRADIUS = 5
FIREBALL_CAST_SFX = "Effects/fireball-01.wav"
FIREBALL_SMALL_HIT_SFX = "Effects/explosion.wav"
FIREBALL_BIG_HIT_SFX = "Effects/explosion.wav"

function CreateFireball(entity)
	function initSmallFireball()
		local tiny = {}
		local model = Assets.LoadModel( "Models/projectile1.model" )
		tiny.type = CreateProjectileType(model)
		tiny.damage = FIRESPAM_DAMAGE
		tiny.alive = false
		tiny.lifeTime = 1.8
		tiny.hits = {}
		--local model = Assets.LoadModel( "Models/grenade.model" )
		--Gear.AddForwardInstance(model, tiny.type.transformID)
		tiny.particles = CreateFireEffectParticles()
		return tiny
	end
	--General variables
	local spell = {}
	spell.element = FIRE
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
	spell.smallFBSoundID = {}
	spell.bigFBSoundID = -1
	spell.smallFB = {}		spell.currentFB = 1
	for i = 1, 4 do	table.insert(spell.smallFB, initSmallFireball())	end
	
	--Big fireball
	spell.bigBallActive = false
	local model = Assets.LoadModel( "Models/projectile1.model" )
	spell.ballParticles = CreateFireEffectParticles()
	spell.bigBallID = Gear.BindForwardInstance(model)
	spell.sphereCollider = SphereCollider.Create(spell.bigBallID)
	CollisionHandler.AddSphere(spell.sphereCollider, 1)	
	SphereCollider.SetActive(spell.sphereCollider, false)
	Transform.ActiveControl(spell.bigBallID, false)
	--local model = Assets.LoadModel("Models/projectile1.model")
	--Gear.AddStaticInstance(model, spell.bigBallID)
	spell.lifeTime = FIREBALL_LIFETIME
	spell.explodeTime = 0.5
	spell.enemiesHit = {}
	
	spell.effects = {}		table.insert(spell.effects, FIRE_EFFECT_INDEX)
	spell.light = nil
	spell.lightRadius = 0
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
				self.smallFB[i].particles:Update(self.smallFB[i].type.position)
				self.smallFB[i].type:Update(dt)

				local collisionIDs = self.smallFB[i].type.sphereCollider:GetCollisionIDs()
				for curID = 1, #collisionIDs do
					for curEnemy=1, #enemies do
						if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
							enemies[curEnemy]:Hurt(self.smallFB[i].damage, self.owner, self.element)
							self:SpamFireball(i)
						end
					end
					if collisionIDs[curID] == boss.collider:GetID() then
						boss:Hurt(self.smallFB[i].damage, self.owner)
						self:SpamFireball(i)
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
			--self.smallFB[self.currentFB].type:Shoot(self.owner.position, Transform.GetLookAt(self.caster), FIRESPAM_SPEED)
			self.smallFB[self.currentFB].type:Shoot(self.owner.position, Camera.GetDirection(), FIRESPAM_SPEED)
			self.smallFB[self.currentFB].particles:Cast()
			self.smallFB[self.currentFB].lifeTime = 2.1	
			self.smallFB[self.currentFB].alive = true
			Sound.Play(FIREBALL_CAST_SFX, 3, self.smallFB.position)
			if self.currentFB < 4 then		
				self.currentFB = self.currentFB + 1
			else	self.currentFB = 1
			end
		end
	end

	function spell:GetCollider()
		local result = {}
		table.insert(result, self.sphereCollider:GetID())
		return result
	end

	function spell:ChargeCast(entity)
		if self.bigBallActive then
			self:EngageExplode()
		end
		if self.cooldown < 0.0 and MIN_CHARGETIME_FIREBALL < self.chargedTime and not self.bigBallActive then
			if self.owner == player then	
				ZoomOutCamera()	
			end
			self.lifeTime = FIREBALL_LIFETIME
			self.explodeTime = FIREBALL_EXPLODETIME	
			self.cooldown = FIREBALL_COOLDOWN
			self.bigBallActive = true
			self.position = entity.position
			SphereCollider.SetActive(self.sphereCollider, true)
			Transform.ActiveControl(self.bigBallID, true)
			Transform.SetPosition(self.bigBallID, self.position)
			self.damage = FIREBALL_BASE_DMG * self.chargedTime
			self.light = Light.addLight(124, 32, 220, 1, 0, 0, FIREBALL_LIGHTRADIUS, 3, true)
			self.ballParticles:Cast()
			Sound.Play(FIREBALL_CAST_SFX, 7, self.position)
		end
		self.chargedTime = 0
	end

	function spell:BigBallUpdate(dt)
		if self.lifeTime < 0 then 
			self:Exploding(dt) 
		else
			self.lifeTime = self.lifeTime - dt
			self:BigBallFlying(dt)	
		end
	end

	function spell:BigBallFlying(dt)
		local direction = Transform.GetLookAt(self.caster)
		self.position.x = self.position.x + direction.x * FIREBALL_SPEED * dt
		self.position.y = self.position.y + direction.y * FIREBALL_SPEED * dt
		self.position.z = self.position.z + direction.z * FIREBALL_SPEED * dt
		Transform.SetPosition(self.bigBallID, self.position)
		self.damage = self.damage + 3 * dt
		self.ballParticles:Update(self.position)
		local hm = GetHeightmap(self.position)
		if hm then
			if self.position.y < hm.asset:GetHeight(self.position.x, self.position.z) then self:EngageExplode() end
		end	
		Light.updatePos(self.light, self.position.x, self.position.y, self.position.z, true)

		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					self:EngageExplode()
					return
				end
			end
			if collisionIDs[curID] == boss.collider:GetID() then
				self:EngageExplode()
				return
			end
		end		
	end

	function spell:EngageExplode()
		SphereCollider.SetRadius(self.sphereCollider, 3)
		Transform.SetScale(self.bigBallID, 3)
		self.lifeTime = -1
		self.lightRadius = FIREBALL_LIGHTRADIUS * 5
		Light.updateRadius(self.light, self.lightRadius , true)
	end

	function spell:Exploding(dt)
		self.explodeTime = self.explodeTime - dt
		if self.explodeTime < 0 then 
			self:Kill() 
			return
		end
		self.lightRadius = self.lightRadius - 10 * dt
		Light.updateRadius(self.light, self.lightRadius, true)
		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					if not self.enemiesHit[enemies[curEnemy].transformID] then
						enemies[curEnemy]:Hurt(self.damage, self.owner, self.element)
						for stuff = 1, #self.effects do
							local effect = effectTable[self.effects[stuff]](self.owner, 0.5)
							enemies[curEnemy]:Apply(effect)
						end
					end
					self.enemiesHit[enemies[curEnemy].transformID] = true
				end
			end
			if collisionIDs[curID] == boss.collider:GetID() then
				if not self.enemiesHit[boss.transformID] then
					boss:Hurt(self.damage, self.owner)
					for stuff = 1, #self.effects do
						local effect = effectTable[self.effects[stuff]](self.owner, 0.5)
						boss:Apply(effect)
					end
					self.enemiesHit[boss.transformID] = true
				end
			end
		end			
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
		Sound.Play(FIREBALL_BIG_HIT_SFX, 7, self.position)
		self.enemiesHit = {}
		self.bigBallActive = false
		self.ballParticles:Die(self.position)
		SphereCollider.SetRadius(self.sphereCollider, 1)
		Transform.SetScale(self.bigBallID, 1)
		SphereCollider.SetActive(self.sphereCollider, false)
		Transform.ActiveControl(self.bigBallID, false)
		self.damage = FIREBALL_BASE_DMG	
		if self.light then		Light.removeLight(self.light, true)	 self.light = nil	end
	end

	function spell:Change()
		self.isActiveSpell = not self.isActiveSpell
		if self.isActiveSpell then
			ShowCrosshair()
		else
			HideCrosshair()
		end
	end

	function spell:SpamFireball(index)
		local id = Sound.Play(FIREBALL_SMALL_HIT_SFX, 39, self.smallFB[index].type.position)
		Sound.SetVolume(id, 0.5)
		Sound.Resume(id)
		self.smallFB[index].particles:Die(self.smallFB[index].type.position)
		self.smallFB[index].type:Kill() 
		self.smallFB[index].alive = false 
		self.aSmallIsActive = self.aSmallIsActive - 1
	end
	spell.Charge = BaseCharge
	spell.Change = BaseChange
	return spell
end