--WINDKNOCKBACK_TEXTURE = Assets.LoadTexture("Textures/IconWindKnockback.dds")
WINDKNOCKBACK_COOLDOWN = 0.9
WINDKNOCKBACK_CASTSPEED_MULTIPLE = 2.0
WINDKNOCKBACK_POWER = 2
function CreateWindknockback(entity)
	local spell = {}
	spell.element = ICE
	spell.maxcooldown = 4
	spell.hudtexture = Assets.LoadTexture("Textures/IconWindKnockback.dds")
	spell.texture1 = Assets.LoadTexture("Textures/wind.dds")
	spell.texture2 = Assets.LoadTexture("Textures/wind2.dds")
	spell.owner = entity		spell.caster = entity.transformID
	spell.blendValue1 = {x = 0.0, y = 0.0} spell.blendValue2 = {x = 0.0, y = 0.0}
	spell.durationTime = 0
	spell.damage = 0
	spell.alive = false
	spell.chargedTime = 0
	spell.radius = 0
	spell.maxChargeTime = 2		spell.minChargeTime = 0
	spell.startUp = true
	spell.startUpTime = 0
	spell.isActiveSpell = false
	spell.stage1time = 0.5
	spell.stage2time = 1
	spell.enemiesHit = {}

	--For animation timing 
	spell.hasSpamAttack = true
	spell.cooldown = 0 --spells no longer have an internal cooldown for spam attacks. The player's castSpeed determines this.
	spell.castTimeAttack = 0.5 * WINDKNOCKBACK_CASTSPEED_MULTIPLE
	spell.castAnimationPlayTime = 2 * WINDKNOCKBACK_CASTSPEED_MULTIPLE --the true cast time of the animation
	spell.castTimeFirstAttack = 0.1875 * WINDKNOCKBACK_CASTSPEED_MULTIPLE

	local model = Assets.LoadModel( "Models/pCone1.model" )
	spell.transformID = Gear.BindBlendingInstance(model)
	spell.sphereCollider = SphereCollider.Create(spell.transformID)
	CollisionHandler.AddSphere(spell.sphereCollider, 2)	
	SphereCollider.SetActive(spell.sphereCollider, false)

	spell.blendingIndex = Gear.SetBlendTextures(-1, 2, spell.texture1, spell.texture2)
	spell.particles = createWindParticles()

	spell.effects = {} 
	table.insert(spell.effects, KNOCKBACK_EFFECT_INDEX)

	function spell:Update(dt)
		if self.alive then
			--if self.startUp then
			--	self:StartingUp(dt)
			--else
			--	self:UpdateBlending(dt)
			--end
						
		
		
			self:CheckCollisions()
			self:UpdateBlending(dt)
			self:MoveWithOwner()

		end
		self.cooldown = self.cooldown - dt
	end
	
	function spell:Cast()
		if self.cooldown < 0.0 then
			self.cooldown, self.maxcooldown = WINDKNOCKBACK_COOLDOWN, WINDKNOCKBACK_COOLDOWN
			self.durationTime = 0.4		self.startUpTime = 0.1
			self.chargedTime = WINDKNOCKBACK_POWER
			self.radius = 2.8
			self:GeneralCast()
			self.damage = 3
		end
	end
	
	function spell:GetCollider()
		local result = {}
		table.insert(result, self.sphereCollider:GetID())
		return result
	end

	function spell:ChargeCast(entity)
		self.chargedTime = self.chargedTime * 2 + WINDKNOCKBACK_POWER	
		self.durationTime = 0.5
		self.startUpTime = 0.5
		self.startUp = true

		if self.cooldown < 0.0 then
			self.cooldown, self.maxcooldown = WINDKNOCKBACK_COOLDOWN + 2, WINDKNOCKBACK_COOLDOWN + 2
			self.radius = self.chargedTime
			self:GeneralCast()
			self.damage = 5
		end

	end

	function spell:GeneralCast()
		self.alive = true		self.stage1time = 0.5

		local pos = Transform.GetPosition(self.caster)
		local direction = Transform.GetLookAt(self.caster)
		pos.x = pos.x + direction.x * 2.5
		pos.y = pos.y + direction.y
		pos.z = pos.z + direction.z * 2.5
		Transform.SetPosition(self.transformID, pos)
		Transform.ActiveControl(self.transformID, true)
		SphereCollider.SetActive(self.sphereCollider, true)
		SphereCollider.SetRadius(self.sphereCollider, self.radius)
		Transform.RotateToVector(self.transformID, Transform.GetLookAt(player.transformID))
		self.particles:poof(pos, direction)
	end

	function spell:MoveWithOwner()
		local pos = Transform.GetPosition(self.caster)
		local direction = Transform.GetLookAt(self.caster)
		pos.x = pos.x + direction.x * 2.5
		pos.y = pos.y + direction.y
		pos.z = pos.z + direction.z * 2.5
		Transform.SetPosition(self.transformID, pos)
		Transform.RotateToVector(self.transformID, Transform.GetLookAt(player.transformID))
	end

	function spell:CheckCollisions()
		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].collider:GetID() then
					if not self.enemiesHit[enemies[curEnemy].transformID] then
						enemies[curEnemy]:Hurt(self.damage, self.owner, self.element)
						for stuff = 1, #self.effects do
							local effect = effectTable[self.effects[stuff]](self.owner, self.chargedTime)
							enemies[curEnemy]:Apply(effect)
						end
					end
					self.enemiesHit[enemies[curEnemy].transformID] = true
				end
			end
			if boss.alive and collisionIDs[curID] == boss.collider:GetID() then
				if not self.enemiesHit[boss.transformID] then
					boss:Hurt(self.damage, self.owner, self.element)
					for stuff = 1, #self.effects do
						local effect = effectTable[self.effects[stuff]](self.owner, self.chargedTime)
						boss:Apply(effect)
					end
					self.enemiesHit[boss.transformID] = true
				end
			end
		end
	end

	function spell:UpdateBlending(dt)
		self.durationTime = self.durationTime - dt
		if self.durationTime < 0 then
			self:Kill()
		else
			self.blendValue1.x = self.blendValue1.x + 0 * dt
			self.blendValue1.y = self.blendValue1.y - 0.6 * dt * 1.5

			self.blendValue2.x = self.blendValue2.x + 0 * dt
			self.blendValue2.y = self.blendValue2.y - 1.0 * dt *1.5

			Gear.SetBlendUniformValue(self.blendingIndex, 2, self.blendValue1, self.blendValue2)	
		end
	end
	function spell:StartingUp(dt)
		self.startUpTime = self.startUpTime - dt
	
		if self.startUpTime < 0 then
			self.startUp = false
			SphereCollider.SetActive(self.sphereCollider, true)

			local pos = Transform.GetPosition(self.caster)
			local direction = Transform.GetLookAt(self.caster)
			pos.x = pos.x + direction.x
			pos.y = pos.y + direction.y * 4
			pos.z = pos.z + direction.z * 2.5

			Transform.SetPosition(self.transformID, pos)
			SphereCollider.SetRadius(self.sphereCollider, self.radius)
			Transform.ActiveControl(self.transformID, true)
			self.startUpTime = 0.2
		end
	end

	function spell:Kill()
		self.alive = false
		Transform.ActiveControl(self.transformID, false)
		SphereCollider.SetActive(self.sphereCollider, false)
		self.blendValue1.x, self.blendValue1.y = 0, 0
		self.blendValue2.x, self.blendValue2.y = 0, 0
		self.enemiesHit = {}
		self.damage = 0
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

function DestroyWindknockback(knockback)
	destroyWindParticles(knockback.spell.particles)

	Gear.UnbindInstance(knockback.transformID)

	Assets.UnloadModel( "Models/pCone1.model" )
	Assets.UnloadTexture("Textures/IconWindKnockback.dds")
	Assets.UnloadTexture("Textures/wind.dds")
	Assets.UnloadTexture("Textures/wind2.dds")

	knockback = nil
end