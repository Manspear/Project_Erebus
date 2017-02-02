HELLPILLAR_SPELL_TEXTURE = Assets.LoadTexture("Textures/firepillar.dds");
MAX_CHARGE_TIME_PILLAR = 3
MIN_CHARGE_TIME_PILLAR = 1.5
MAX_DAMAGE_PILLAR = 1000
SPEED_PILLAR = 75
COOLDOWN_PILLAR = 3
PILLAR_DURATION = 2
GRAVITY_PILLAR = 5
DAMAGE_INTERVAL_PILLAR = 0.5
Y_SPEED_PILLAR = 2


function CreateHellPillar(entity)
	function initPillar()
		local pillz = {}
		pillz.type = CreateRayType()
		pillz.effectflag = false
		pillz.damage = MAX_DAMAGE_PILLAR
		pillz.alive = false
		pillz.effects = {}
		table.insert(pillz.effects, FIRE_EFFECT_INDEX)
		pillz.pos = 0
		pillz.duration = PILLAR_DURATION
		pillz.type.oobCollider.SetSize(pillz.type.oobCollider, SUNRAY_HALF_LENGTH,1,1)
		local model = Assets.LoadModel( "Models/SunRayOuter.model" )
		Gear.AddStaticInstance(model, pillz.type.transformID)
		return pillz
	end
	
	local spell = {}
	spell.pillar = initPillar()
	spell.caster = entity.transformID
	spell.maxChargeTime = MAX_CHARGE_TIME_PILLAR
	spell.chargedTime = 0	
	spell.Charge = BaseCharge
	spell.ChargeCast = BaseChargeCast
	spell.cooldown = 0
	spell.timeSinceTick = 0
	spell.effect = CreateFireEffect()
	spell.hudtexture = HELLPILLAR_SPELL_TEXTURE
	spell.pillarDir = {x = 0, y = 0, z = 29.85}
	spell.maxcooldown = COOLDOWN_PILLAR --Change to cooldown duration if it has a cooldown otherwise -1
	function spell:Cast(entity, chargetime)
		if self.cooldown < 0 then	
			--self.nade.light = Light.addLight(0,0,0,1,0,0,20,2)
			self:GeneralCast()
			self.timeSinceSpam = 0
			self.chargedTime = 0
			self.cooldown = COOLDOWN_PILLAR			
		end
	end

	function spell:GeneralCast()
		self.pillar.alive = true
		self.pillar.duration = PILLAR_DURATION
		self.pillar.pos = Transform.GetPosition(self.caster)
		self.pillar.type:Cast(self.pillar.pos)
	end
	
	function spell:Update(dt)
		self.cooldown = self.cooldown - dt
		if self.pillar.alive then
			self:PillarUpdate(dt)
		end		
	end

	function spell:PillarUpdate(dt)		
		Transform.SetRotation(self.pillar.type.transformID, self.pillarDir)
		hits = self.pillar.type:Update(self.pillar.pos, {x = 0, y = 1, z = 0})
		self.pillar.duration = self.pillar.duration - dt
	
		for index = 1, #hits do
			if hits[index].Hurt then
				hits[index]:Hurt(self.pillar.damage/(PILLAR_DURATION/DAMAGE_INTERVAL_PILLAR))
			end
		end	
	
		if self.pillar.duration < 0 then 
			self.pillar.alive = false 
			self.pillar.type:Kill()
		end
	end

	function spell:Kill()
		
	end

	function spell:GetEffect()
		return self.pillar.effects[1]
	end
	function spell:Combine(effect,damage)
		if #self.pillar.effects < 2 then
			table.insert(self.pillar.effects, effect)
			self.pillar.damage = self.pillar.damage + damage
		end
	end

	return spell
end