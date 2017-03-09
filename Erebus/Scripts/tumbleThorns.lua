TUMBLETHORN_SPEED = 20
TUMBLETHORN_RADIUS = 0.5
TUMBLETHORNS_COOLDOWN = 4
TUMBLETHORNS_ROLLBACKTIME = 0.4
TUMBLETHORNS_CASTSPEED_MULTIPLE = 1
function CreateTumblethorns(entity)
	local spell = {}
	spell.element = NATURE
	spell.maxcooldown = 4
	spell.hudtexture = Assets.LoadTexture("Textures/IconTumblethorne.dds")
	spell.owner = entity		spell.caster = entity.transformID
	spell.damage = 5
	spell.alive = false			spell.canRollBack = false		spell.rollBackTime = TUMBLETHORNS_ROLLBACKTIME
	spell.chargedTime = 0		spell.maxChargeTime = 2			spell.minChargeTime = 1
	spell.spin = 10.0			spell.rotation = {x = 0, y = 0, z = 0}
	spell.direction = {x = 0, y = 0, z = 0}		spell.position = {x = 0, y = 0, z = 0}
	spell.isActiveSpell = false
	spell.enemiesHit = {}
	
	--For animation timing 
	spell.hasSpamAttack = true
	spell.cooldown = 0 --spells no longer have an internal cooldown for spam attacks. The player's castSpeed determines this.
	spell.castTimeAttack = 0.5 * TUMBLETHORNS_CASTSPEED_MULTIPLE
	spell.castAnimationPlayTime = 2 * TUMBLETHORNS_CASTSPEED_MULTIPLE --the true cast time of the animation
	spell.castTimeFirstAttack = 0.1875 * TUMBLETHORNS_CASTSPEED_MULTIPLE

	local model = Assets.LoadModel( "Models/tumbleweed.model" )
	spell.transformID = Gear.BindForwardInstance(model)
	spell.sphereCollider = SphereCollider.Create(spell.transformID)
	Transform.ActiveControl(spell.transformID, false)
	CollisionHandler.AddSphere(spell.sphereCollider, 2)	
	SphereCollider.SetActive(spell.sphereCollider, false)

	spell.effects = {} 
	table.insert(spell.effects, LIFE_STEAL_EFFECT_INDEX)
	spell.particles = createTumbleParticles()
	spell.explodeParticles = createTumbleParticles()
	spell.explodeParticles:setFocus(0)

	function spell:Update(dt)
		if self.alive then
			self.position.x = self.position.x + self.direction.x * TUMBLETHORN_SPEED * dt
			self.position.z = self.position.z + self.direction.z * TUMBLETHORN_SPEED * dt
			local hm = GetHeightmap(self.position)		
			if hm then
				self.position.y = hm.asset:GetHeight(self.position.x, self.position.z)	
				self.position.y = self.position.y + TUMBLETHORN_RADIUS
				self.particles:update(self.position)
			end
			Transform.SetPosition(self.transformID, self.position)
			self.rotation = Transform.GetRotation(self.transformID)
			self.rotation.z = self.rotation.z - self.spin * dt
			Transform.SetRotation(self.transformID, self.rotation)
			self:CheckColissions()
			self.rollBackTime = self.rollBackTime - dt
			self.canRollBack = 0 > self.rollBackTime and true or false			
		else
			self.cooldown = self.cooldown - dt;
		end
	end
	
	spell.particleDirection = {x = 0, y = 0, z = 0}
	function spell:Cast()
		if self.cooldown < 0.0 then
			self.alive = true
			self.rollin = true
			self.cooldown = TUMBLETHORNS_COOLDOWN
			self.rollBackTime =TUMBLETHORNS_ROLLBACKTIME
			self.position = Transform.GetPosition(self.caster)
			Transform.SetPosition(self.transformID, self.position)
			SphereCollider.SetActive(spell.sphereCollider, true)
			self.direction = self.owner.spellDirection
			Transform.ActiveControl(self.transformID, true)
			Transform.RotateToVector(self.transformID, self.direction)
			self.particleDirection.x,	self.particleDirection.z = self.direction.x * - 1, self.direction.z * - 1
			self.particles:cast(self.particleDirection.x, self.direction.y, self.particleDirection.z)	
		elseif self.canRollBack and self.rollin then
			self.rollBackTime = TUMBLETHORNS_ROLLBACKTIME
			self.canRollBack = false
			local newLookAt = vec3sub(self.owner.position, self.position)
			Transform.RotateToVector(self.transformID, newLookAt)
			self.direction = Transform.GetLookAt(self.transformID)
			self.particleDirection.x,	self.particleDirection.z = self.direction.x * - 1, self.direction.z * - 1
			self.particles:cast(self.particleDirection.x, self.direction.y, self.particleDirection.z)
			self.enemiesHit = {}
		end
	end
	function spell:GetCollider()
		local result = {}
		table.insert(result, self.sphereCollider:GetID())
		return result
	end
	function spell:ChargeCast()
		if self.rollin then
			self.explodeParticles:explode(self.position)
			self:Kill()
		end
		if self.minChargeTime < self.chargedTime then
			TUMBLETHORN_RADIUS = 1
			Transform.SetScale(self.transformID, 2)
			SphereCollider.SetRadius(self.sphereCollider, 2)
			SphereCollider.SetActive(self.sphereCollider, true)
			self.damage = 10
			self:Cast()
		end
	end

	function spell:Kill()
		self.alive = false
		SphereCollider.SetActive(spell.sphereCollider, false)
		Transform.ActiveControl(self.transformID, false)
		Transform.SetScale(self.transformID, 1)
		SphereCollider.SetRadius(self.sphereCollider, 1)
		TUMBLETHORN_RADIUS = 0.5
		self.damage = 5
		self.particles:die()
		self.canRollBack = true
		self.rollin = false
		self.enemiesHit = {}
		if #self.effects > 1 then
			table.remove(self.effects)
		end
	end

	function spell:Change()
		self.isActiveSpell = not self.isActiveSpell
		if self.isActiveSpell then
			ShowCrosshair()
		else
			HideCrosshair()
		end
	end

	function spell:CheckColissions()
		local collisionIDs = self.sphereCollider:GetCollisionIDs()	
		if CollisionHandler.IsHitboxCollidingWithLayer(self.sphereCollider, 3) then 
			self:Kill()
			return
		end
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].collider:GetID() then			
					if not self.enemiesHit[enemies[curEnemy].transformID] then
						enemies[curEnemy]:Hurt(self.damage, self.owner, self.element)				
						for stuff = 1, #self.effects do
							local effect = effectTable[self.effects[stuff]](self.owner)
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
						local effect = effectTable[self.effects[stuff]](self.owner)
						boss:Apply(effect)
					end	
					self.enemiesHit[boss.transformID] = true
				end
			end				
		end		
	end

	spell.Charge = BaseCharge
	spell.GetEffect = BaseGetEffect
	spell.Combine = BaseCombine
	return spell
end

function DestroyTumblethorns(tumble)
	destroyTumbleParticles(tumble.spell.particles)

	Gear.UnbindInstance(tumble.transformID)

	Assets.UnloadTexture("Textures/IconTumblethorne.dds")
	Assets.UnloadModel( "Models/tumbleweed.model" )

	tumble = nil
end