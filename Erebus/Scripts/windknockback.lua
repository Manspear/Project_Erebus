WINDKNOCKBACL_TEXTURE = Assets.LoadTexture("Textures/tumblethorns.png")
TUMBLETHORNS_COOLDOWN = 4

function CreateTumblethorns(entity)
	local spell = {}
	spell.cooldown = 0.0		spell.maxcooldown = 4
	spell.hudtexture = WINDKNOCKBACL_TEXTURE
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
	table.insert(spell.effects, TIME_SLOW_EFFECT_INDEX)

	function spell:Update(dt)
		if self.alive then
			
		end
	end
	
	function spell:Cast()
		if self.cooldown < 0.0 then
			
		end
	end

	function spell:ChargeCast(entity)
		if self.cooldown < 0.0 then
		
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
return spell