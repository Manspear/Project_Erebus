TUMBLETHORN_SPELL_TEXTURE = Assets.LoadTexture("Textures/tumblethorns.png")
TUMBLETHORN_SPEED = 30
TUMBLETHORN_RADIUS = 1
TUMBLETHORNS_COOLDOWN = 4
TUMBLETHORNS_ROLLBACKTIME = 1
function CreateTumblethorns(entity)
	local spell = {}
	spell.cooldown = 0.0		spell.maxcooldown = 4
	spell.hudtexture = TUMBLETHORN_SPELL_TEXTURE
	spell.owner = entity		spell.caster = entity.transformID
	spell.lifeTime = SUNRAY_DURATION
	spell.damage = 1
	spell.alive = false			spell.canRollBack = false		spell.rollBackTime = TUMBLETHORNS_ROLLBACKTIME
	spell.chargedTime = 0
	spell.maxChargeTime = 3
	spell.spin = 10.0		spell.rotation = {x = 0, y = 0, z = 0}
	spell.originalPos = {x = 0, y = 0, z = 0}
	spell.isActiveSpell = false
	spell.enemiesHit = {}
	
	--spell.transformID = Transform.Bind()
	--local model = Assets.LoadModel( "Models/Stone4.model" )
	--Gear.AddForwardInstance(model, spell.transformID )
	local model = Assets.LoadModel( "Models/Stone4.model" )
	spell.transformID = Gear.BindForwardInstance(model)
	spell.sphereCollider = SphereCollider.Create(spell.transformID)
	CollisionHandler.AddSphere(spell.sphereCollider, 1)	
	SphereCollider.SetActive(spell.sphereCollider, false)

	spell.effects = {} 
	table.insert(spell.effects, FIRE_EFFECT_INDEX)

	function spell:Update(dt)
		if self.alive then
			self.position.x = self.position.x + self.direction.x * TUMBLETHORN_SPEED * dt
			self.position.z = self.position.z + self.direction.z * TUMBLETHORN_SPEED * dt
			local hm = GetHeightmap(self.position)
			if hm then
				self.position.y = hm.asset:GetHeight(self.position.x, self.position.z) + TUMBLETHORN_RADIUS
			end
			Transform.SetPosition(self.transformID, self.position)
			self.lifeTime = self.lifeTime - dt
			self.rotation.z = self.rotation.z - self.spin * dt
			Transform.SetRotation(self.transformID, self.rotation)

			self:CheckColissions()

			self.rollBackTime = self.rollBackTime - dt
			self.canRollBack = 0 > self.rollBackTime and true or false
			
		else
			self.cooldown = self.cooldown - dt;
		end
	end
	
	function spell:Cast()
		if self.cooldown < 0.0 then
			self.alive = true
			self.cooldown = TUMBLETHORNS_COOLDOWN
			SphereCollider.SetActive(spell.sphereCollider, true)
			self.position = Transform.GetPosition(self.caster)
			self.direction = Transform.GetLookAt(self.caster)
			Transform.SetLookAt(self.transformID, self.direction)
			Transform.ActiveControl(self.transformID, true)
			self.rotation = Transform.GetRotation(self.caster)
			Transform.SetRotation(self.transformID, self.rotation)
		end
		if self.canRollBack then
			self.rollBackTime =TUMBLETHORNS_ROLLBACKTIME
			self.canRollBack = false
			local newLookAt = vec3sub(self.owner.position, self.position)
			Transform.SetLookAt(self.transformID, newLookAt)
			self.direction = Transform.GetLookAt(self.transformID)
			self.enemiesHit = {}
		end
	end

	function spell:ChargeCast(entity)
		if self.cooldown < 0.0 then
		
		end
	end

	function spell:GeneralCast()
	
	end

	function spell:Kill()
		self.alive = false
		SphereCollider.SetActive(spell.sphereCollider, false)
		Transform.ActiveControl(self.transformID, false)
		self.enemiesHit = {}
	end

	function spell:GetEffect()
		return self.effects[1]
	end

	function spell:Aim()
		
	end

	function spell:Change()
		self.isActiveSpell = not self.isActiveSpell
	end

	function spell:CheckColissions()
		local collisionIDs = self.sphereCollider:GetCollisionIDs()		
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then			
					if not self.enemiesHit[enemies[curEnemy].transformID] then
						enemies[curEnemy]:Hurt(self.damage, self.owner)				
						for stuff = 1, #self.effects do
							local effect = effectTable[self.effects[stuff]]()
							enemies[curEnemy]:Apply(effect)
						end
					end				
					self.enemiesHit[enemies[curEnemy].transformID] = true		
				end
			end
		end
	end

	spell.Charge = BaseCharge	spell.ChargeCast = BaseChargeCast	
	return spell
end