POLYMORPH_SPELL_TEXTURE = Assets.LoadTexture("Textures/polymorph.png");
POLYMORPH_COOLDOWN = 5
POLYMORPH_SPEED = 30
POLYMORPH_LIFETIME = 2.0

function CreatePolymorph(entity)
	--General variables
	local spell = {}
	spell.isActiveSpell = false	
	spell.cooldown = 0		spell.maxcooldown = POLYMORPH_COOLDOWN
	spell.chargedTime = 0		spell.maxChargeTime = 3
	spell.lifeTime = POLYMORPH_LIFETIME
	spell.caster = entity.transformID
	spell.owner = entity
	spell.hudtexture = POLYMORPH_SPELL_TEXTURE
	spell.position = {x = 0, y = 0, z = 0}		spell.direction = {x = 0, y = 0, z = 0}	
	spell.oldPosition = {x = 0, y = 0, z = 0}
	spell.damage = 1
	spell.morphTime = 3		spell.morphed = false
	spell.polyMorphedEnemy = 0
	spell.effects = {}

	spell.transformID = Transform.Bind()
	spell.sphereCollider = SphereCollider.Create(spell.transformID)
	CollisionHandler.AddSphere(spell.sphereCollider, 1)		
	local model = Assets.LoadModel( "Models/grenade.model" )
	Gear.AddForwardInstance(model, spell.transformID)
	
	spell.polymorphTransform = Transform.Bind()
	local model = Assets.LoadModel( "Models/pineTree1.model" )
	Gear.AddStaticInstance(model, spell.polymorphTransform)

	spell.Charge = BaseCharge
	function spell:Update(dt)
		self.cooldown = self.cooldown - dt
		if self.alive then
			if self.morphed then
				self:MorphingAround(dt)
			else
				self:Flying(dt)
			end
		end
	end

	function spell:Cast()
		if self.cooldown < 0 and not self.alive then
			self.alive = true
			self.position = Transform.GetPosition(self.caster)
			self.direction = Transform.GetLookAt(self.caster)
			Transform.ActiveControl(self.transformID, true)
			SphereCollider.SetActive(self.sphereCollider, true)
		end
	end

	function spell:Flying(dt)
		self.position.x = self.position.x + self.direction.x * POLYMORPH_SPEED * dt
		self.position.y = self.position.y + self.direction.y * POLYMORPH_SPEED * dt
		self.position.z = self.position.z + self.direction.z * POLYMORPH_SPEED * dt
		Transform.SetPosition(self.transformID, self.position)
		self.lifeTime = self.lifeTime - dt
		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					enemies[curEnemy]:Hurt(self.damage, self.owner)
					self:Polymorph(enemies[curEnemy].transformID)
					self:Kill()
					break
				end
			end
		end					
		if(self.lifeTime < 0) then 
			self:Kill()
			self.alive = false
		end
	end

	function spell:Polymorph(enemy)
		self.polyMorphedEnemy = enemy
		Transform.SetScale(enemy, 0)
		Transform.ActiveControl(self.polymorphTransform, true)
		Transform.SetPosition(self.polymorphTransform, Transform.GetPosition(enemy))
		self.morphTime = 3	self.morphed = true
	end

	function spell:MorphingAround(dt)
		self.morphTime = self.morphTime - dt
		if self.morphTime < 0 then
			Transform.SetScale(self.polyMorphedEnemy, 1)
			Transform.SetPosition(self.polymorphTransform, {x = 0, y = 0, z = 0})		
			Transform.ActiveControl(self.polymorphTransform, false)
			self.morphed = false
			self.polyMorphedEnemy = 0
			self.alive = false
			self:Kill()
		else
			Transform.SetPosition(self.polymorphTransform, Transform.GetPosition(self.polyMorphedEnemy))	
		end
	end

	function spell:ChargeCast()	
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
		Transform.ActiveControl(self.transformID, false)
		Transform.SetPosition(self.transformID, {x = 0, y = 0, z = 0})
		SphereCollider.SetActive(self.sphereCollider, false)
		self.cooldown = POLYMORPH_COOLDOWN
		self.lifeTime = POLYMORPH_LIFETIME
	end
	return spell
end