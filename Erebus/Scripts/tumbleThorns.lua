TUMBLETHORN_SPELL_TEXTURE = Assets.LoadTexture("Textures/tumblethorns.png")
TUMBLETHORN_SPEED = 20
function CreateTumblethorns(entity)
	local spell = {}
	spell.cooldown = 0.0		spell.maxcooldown = 2
	spell.hudtexture = TUMBLETHORN_SPELL_TEXTURE
	spell.owner = entity		spell.caster = entity.transformID
	spell.lifeTime = SUNRAY_DURATION
	spell.damage = 0
	spell.alive = false
	spell.chargedTime = 0
	spell.maxChargeTime = 3
	spell.spin = 0.3
	spell.isActiveSpell = false
	
	spell.transformID = Transform.Bind()
	local model = Assets.LoadModel( "Models/Stone4.model" )
	Gear.AddForwardInstance(model, spell.transformID )

	spell.effects = {} 
	table.insert(spell.effects, FIRE_EFFECT_INDEX)

	function spell:Update(dt)
		if self.alive then
			self.position.x = self.position.x + self.direction.x * TUMBLETHORN_SPEED * dt
			self.position.z = self.position.z + self.direction.z * TUMBLETHORN_SPEED * dt
			local hm = GetHeightmap(self.position)
			if hm then
				self.position.y = hm.asset:GetHeight(self.position.x, self.position.z)
			end
			Transform.SetPosition(self.transformID, self.position)
			self.lifeTime = self.lifeTime - dt
		end
		self.cooldown = self.cooldown - dt;
	end
	
	function spell:Cast()
		if self.cooldown < 0.0 then
			self.alive = true
			self.position = Transform.GetPosition(self.caster)
			self.direction = Transform.GetLookAt(self.caster)
			Transform.SetLookAt(self.transformID, self.direction)
			Transform.ActiveControl(self.transformID, true)
		end
	end

	function spell:ChargeCast(entity)
		if self.cooldown < 0.0 then
		
		end
	end

	function spell:GeneralCast()
	
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
	return spell
end