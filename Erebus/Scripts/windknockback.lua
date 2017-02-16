WINDKNOCKBACK_TEXTURE = Assets.LoadTexture("Textures/windknockback.png")
WINDKNOCKBACK_COOLDOWN = 2
function CreateWindknockback(entity)
	local spell = {}
	spell.cooldown = 0.0		spell.maxcooldown = 4
	spell.hudtexture = WINDKNOCKBACK_TEXTURE
	spell.owner = entity		spell.caster = entity.transformID
	spell.damage = 1
	spell.alive = false
	spell.chargedTime = 0
	spell.maxChargeTime = 3
	spell.isActiveSpell = false
		
	spell.transformID = Transform.Bind()
	local model = Assets.LoadModel( "Models/Stone4.model" )
	Gear.AddForwardInstance(model, spell.transformID )
	spell.sphereCollider = SphereCollider.Create(spell.transformID)
	CollisionHandler.AddSphere(spell.sphereCollider, 1)	
	SphereCollider.SetActive(spell.sphereCollider, false)

	spell.effects = {} 
	table.insert(spell.effects, KNOCKBACK_EFFECT_INDEX)

	function spell:Update(dt)
		if self.alive then
			self:CheckCollisions()	
		end
		self.cooldown = self.cooldown - dt
	end
	
	function spell:Cast()
		if self.cooldown < 0.0 then
			self.cooldown, self.maxcooldown = WINDKNOCKBACK_COOLDOWN, WINDKNOCKBACK_COOLDOWN
			self.alive = true
			Transform.SetPosFromTransformID(self.transformID, self.caster)
			local direction = Transform.GetLookAt(self.caster)
			SphereCollider.SetActive(spell.sphereCollider, true)
		end
	end

	function spell:ChargeCast(entity)
		if self.cooldown < 0.0 then
		
		end
	end

	function spell:CheckCollisions()
		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					enemies[curEnemy]:Hurt(self.damage, self.owner)
					for stuff = 1, #self.effects do
						local effect = effectTable[self.effects[stuff]](3)
						enemies[curEnemy]:Apply(effect)
					end
				end
			end
		end
	end

	function spell:Kill()
		
	end

	function spell:GetEffect()
		return self.effects[1]
	end

	function spell:Aim()
		
	end

	function spell:Change()
		self.isActiveSpell = not self.isActiveSpell
	end

	spell.Charge = BaseCharge	spell.ChargeCast = BaseChargeCast	
	spell.Change = BaseChange
	return spell
end