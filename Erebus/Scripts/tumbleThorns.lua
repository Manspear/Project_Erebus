--TUMBLETHORN_SPELL_TEXTURE = Assets.LoadTexture("Textures/IconTumblethorne.dds")
TUMBLETHORN_SPEED = 20
TUMBLETHORN_RADIUS = 0.5
TUMBLETHORNS_COOLDOWN = 4
TUMBLETHORNS_ROLLBACKTIME = 0.4
function CreateTumblethorns(entity)
	local spell = {}
	spell.element = NATURE
	spell.maxcooldown = 4
	spell.hudtexture = Assets.LoadTexture("Textures/IconTumblethorne.dds")
	spell.owner = entity		spell.caster = entity.transformID
	spell.damage = 10
	spell.alive = false			spell.canRollBack = false		spell.rollBackTime = TUMBLETHORNS_ROLLBACKTIME
	spell.chargedTime = 0		spell.maxChargeTime = 2
	spell.spin = 10.0			spell.rotation = {x = 0, y = 0, z = 0}
	spell.direction = {x = 0, y = 0, z = 0}		spell.position = {x = 0, y = 0, z = 0}
	spell.isActiveSpell = false
	spell.enemiesHit = {}
	
	--For animation timing 
	spell.hasSpamAttack = true
	spell.cooldown = 0 --spells no longer have an internal cooldown for spam attacks. The player's castSpeed determines this.
	TUMBLETHORNS_CASTSPEED_MULTIPLE = 2
	spell.castTimeAttack = 0.5 * TUMBLETHORNS_CASTSPEED_MULTIPLE
	spell.castAnimationPlayTime = 2 * TUMBLETHORNS_CASTSPEED_MULTIPLE --the true cast time of the animation
	spell.castTimeFirstAttack = 0.1875 * TUMBLETHORNS_CASTSPEED_MULTIPLE

	local model = Assets.LoadModel( "Models/tumbleweed.model" )
	spell.transformID = Gear.BindForwardInstance(model)
	spell.sphereCollider = SphereCollider.Create(spell.transformID)
	CollisionHandler.AddSphere(spell.sphereCollider, 1)	
	SphereCollider.SetActive(spell.sphereCollider, false)

	spell.effects = {} 
	table.insert(spell.effects, LIFE_STEAL_EFFECT_INDEX)
	spell.particles = createTumbleParticles()

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
			SphereCollider.SetActive(spell.sphereCollider, true)
			self.position = Transform.GetPosition(self.caster)
			--self.direction = Transform.GetLookAt(self.caster)
			self.direction = Camera.GetDirection()
			Transform.ActiveControl(self.transformID, true)
			Transform.RotateToVector(self.transformID, self.direction)
			self.particleDirection.x,	self.particleDirection.z = self.direction.x * - 1, self.direction.z * - 1
			self.particles:cast(self.particleDirection.x, self.direction.y, self.particleDirection.z)	
		elseif self.canRollBack and self.rollin then
			self.rollBackTime =TUMBLETHORNS_ROLLBACKTIME
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
		if self.cooldown < 0.0 then
		
		end
	end

	function spell:GeneralCast()
		
	end

	function spell:Kill()
		self.alive = false
		SphereCollider.SetActive(spell.sphereCollider, false)
		Transform.ActiveControl(self.transformID, false)
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
		local walls = CollisionHandler.GetIDsFromLayer(3)
		local realWalls = {}	
		for i, v in pairs(walls) do
			realWalls[i] = v
		end
		
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then			
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
			if collisionIDs[curID] == boss.collider:GetID() then
				if not self.enemiesHit[boss.transformID] then
					boss:Hurt(self.damage, self.owner)				
					for stuff = 1, #self.effects do
						local effect = effectTable[self.effects[stuff]](self.owner)
						boss:Apply(effect)
					end	
					self.enemiesHit[boss.transformID] = true		
				end
			end
			for curWall = 1, #realWalls do
				if collisionIDs[curID] == realWalls[curWall] then
					self:Kill()
				end
			end
				
		end		
	end

	spell.Charge = BaseCharge
	spell.ChargeCast = BaseChargeCast
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