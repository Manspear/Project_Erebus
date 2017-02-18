POLYMORPH_SPELL_TEXTURE = Assets.LoadTexture("Textures/polymorph.dds");
POLYMORPH_COOLDOWN = 2
POLYMORPH_SPEED = 30
POLYMORPH_LIFETIME = 2.0
POLYMORPH_MIN_CHARGETIME = 1
POLYMORPH_BASE_DURATION = 2

function CreatePolymorph(entity)
	--General variables
	local spell = {}
	spell.element = NATURE
	spell.isActiveSpell = false	
	spell.cooldown = 0		spell.maxcooldown = POLYMORPH_COOLDOWN
	spell.chargedTime = 0		spell.maxChargeTime = 3
	spell.lifeTime = POLYMORPH_LIFETIME
	spell.caster = entity.transformID
	spell.owner = entity
	spell.hudtexture = POLYMORPH_SPELL_TEXTURE
	spell.position = {x = 0, y = 0, z = 0}		spell.direction = {x = 0, y = 0, z = 0}	
	spell.damage = 1
	spell.morphTime = 3
	spell.effects = {}
	
	table.insert(spell.effects, POLYMORPH_EFFECT_INDEX)
	spell.particles = createSparklyParticles()

	spell.transformID = Transform.Bind()
	spell.sphereCollider = SphereCollider.Create(spell.transformID)
	CollisionHandler.AddSphere(spell.sphereCollider, 1)		

	spell.Charge = BaseCharge
	function spell:Update(dt)
		self.cooldown = self.cooldown - dt
		if self.alive then		
			self:Flying(dt)
		end
	end

	function spell:Cast()
		if self.cooldown < 0 and not self.alive then		
			self.chargedTime = POLYMORPH_BASE_DURATION
			self:GeneralCast()			
		end
	end

	function spell:ChargeCast()	
		if self.cooldown < 0 and not self.alive then	
			self.chargedTime = POLYMORPH_MIN_CHARGETIME > self.chargedTime and POLYMORPH_MIN_CHARGETIME or self.chargedTime
			self.chargedTime = self.chargedTime * 1.5
			self:GeneralCast()
		end
	end

	function spell:GeneralCast()
		self.alive = true
		self.position = Transform.GetPosition(self.caster)
		self.direction = Transform.GetLookAt(self.caster)
		Transform.ActiveControl(self.transformID, true)
		SphereCollider.SetActive(self.sphereCollider, true)
		self.particles:cast()
	end

	function spell:Flying(dt)
		self.position.x = self.position.x + self.direction.x * POLYMORPH_SPEED * dt
		self.position.y = self.position.y + self.direction.y * POLYMORPH_SPEED * dt
		self.position.z = self.position.z + self.direction.z * POLYMORPH_SPEED * dt
		Transform.SetPosition(self.transformID, self.position)
		self.particles:update(self.position)
		self.lifeTime = self.lifeTime - dt
		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					enemies[curEnemy]:Hurt(self.damage, self.owner)
					for stuff = 1, #self.effects do
						local effect = effectTable[self.effects[stuff]](self.chargedTime)
						enemies[curEnemy]:Apply(effect)
					end
					self:Kill()
					break
				end
			end
			if collisionIDs[curID] == boss.collider:GetID() then -- boss collison
				boss:Hurt(self.damage, self.owner)
				for stuff = 1, #self.effects do
					local effect = effectTable[self.effects[stuff]](self.chargedTime)
					boss:Apply(effect)
				end
				self:Kill()
				break
			end
		end					
		if(self.lifeTime < 0) then 
			self:Kill()
		end
	end

	function spell:Combine(effect,damage)
		if #self.effects < 2 then
			table.insert(self.effects, effect)
			self.damage = self.damage + damage
		end
	end

	function spell:Kill()
		Transform.ActiveControl(self.transformID, false)
		SphereCollider.SetActive(self.sphereCollider, false)
		self.cooldown = POLYMORPH_COOLDOWN
		self.lifeTime = POLYMORPH_LIFETIME
		self.alive = false
		self.chargedTime = 0
		self.particles:die(self.position)
		if #self.effects > 1 then
			table.remove(self.effects)
		end
	end
	spell.Charge = BaseCharge
	spell.Change = BaseChange
	spell.GetEffect = BaseGetEffect

	return spell
end