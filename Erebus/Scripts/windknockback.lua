WINDKNOCKBACK_TEXTURE = Assets.LoadTexture("Textures/windknockback.dds")
WINDKNOCKBACK_COOLDOWN = 2
WINDKNOCKBACK_POWER = 2
function CreateWindknockback(entity)
	local spell = {}
	spell.cooldown = 0.0		spell.maxcooldown = 4
	spell.hudtexture = WINDKNOCKBACK_TEXTURE
	spell.owner = entity		spell.caster = entity.transformID
	spell.damage = 0
	spell.alive = false
	spell.chargedTime = 0
	spell.maxChargeTime = 2
	spell.isActiveSpell = false
	spell.stage1time = 0.5
	spell.enemiesHit = {}
		
	spell.transformID = Transform.Bind()
	local model = Assets.LoadModel( "Models/Stone4.model" )
	Gear.AddForwardInstance(model, spell.transformID )
	spell.sphereCollider = SphereCollider.Create(spell.transformID)
	CollisionHandler.AddSphere(spell.sphereCollider, 1)	
	SphereCollider.SetActive(spell.sphereCollider, false)

	spell.particles = createCloudParticles()

	spell.effects = {} 
	table.insert(spell.effects, KNOCKBACK_EFFECT_INDEX)

	function spell:Update(dt)
		if self.alive then
			if self.stage1time > 0 then
				self:CheckCollisions()
				self.stage1time = self.stage1time - dt
			else
				self:Kill()	
			end
		end
		self.cooldown = self.cooldown - dt
	end
	
	function spell:Cast()
		if self.cooldown < 0.0 then
			self:GeneralCast()
			self.cooldown, self.maxcooldown = WINDKNOCKBACK_COOLDOWN, WINDKNOCKBACK_COOLDOWN
			self.chargedTime = WINDKNOCKBACK_POWER
		end
	end

	function spell:ChargeCast(entity)
		if self.cooldown < 0.0 then
			self:GeneralCast()
			self.cooldown, self.maxcooldown = WINDKNOCKBACK_COOLDOWN + 2, WINDKNOCKBACK_COOLDOWN + 2
			self.chargedTime = self.chargedTime * 2 + WINDKNOCKBACK_POWER
		end
	end

	function spell:GeneralCast()
		self.alive = true		self.stage1time = 0.5
		local pos = Transform.GetPosition(self.caster)
		local direction = Transform.GetLookAt(self.caster)
		pos.x = pos.x + direction.x * 2
		pos.y = pos.y + direction.y * 2
		pos.z = pos.z + direction.z * 2
		Transform.SetPosition(self.transformID, pos)
		SphereCollider.SetActive(self.sphereCollider, true)
		Particle.SetDirection(self.particles.ID, direction.x, direction.y, direction.z);
		self.particles:poof(pos)
	end

	function spell:CheckCollisions()
		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					if not self.enemiesHit[enemies[curEnemy].transformID] then
						enemies[curEnemy]:Hurt(self.damage, self.owner)
						for stuff = 1, #self.effects do
							print(self.chargedTime)
							local effect = effectTable[self.effects[stuff]](self.owner, self.chargedTime)
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
						print(self.chargedTime)
						local effect = effectTable[self.effects[stuff]](self.owner, self.chargedTime)
						boss:Apply(effect)
					end
					self.enemiesHit[boss.transformID] = true
				end
			end
		end
	end

	function spell:Kill()
		self.alive = false
		Transform.ActiveControl(self.transformID, false)
		SphereCollider.SetActive(spell.sphereCollider, false)
		self.enemiesHit = {}
		if #self.effects > 1 then
			table.remove(self.effects)
		end
		self.chargedTime = 0
	end

	spell.Charge = BaseCharge		spell.GetEffect = BaseGetEffect
	spell.Change = BaseChange
	spell.Combine = BaseCombine
	return spell
end