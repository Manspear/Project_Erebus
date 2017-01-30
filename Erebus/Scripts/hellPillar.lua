MAX_CHARGE_TIME_PILLAR = 3
MIN_CHARGE_TIME_PILLAR = 1.5
MAX_DAMAGE_PILLAR = 1000
SPEED_PILLAR = 75
COOLDOWN_PILLAR = 3
PILLAR_DURATION = 2

GRAVITY_PILLAR = 50

Y_SPEED_PILLAR = 20

function CreateHellPillar()
	function initNade()
		local nade = {}
		nade.type = CreateGrenadeType()
		nade.alive = false
		nade.particles = createFireballParticles()
		nade.exploding = false
		local model = Assets.LoadModel( "Models/fireSpell.model" )
		Gear.AddForwardInstance(model, nade.type.transformID)
		return nade
	end

	function initPillar()
		local pillz = {}
		pillz.type = CreateRayType()
		pillz.effectflag = false
		pillz.damage = MAX_DAMAGE_PILLAR
		pillz.alive = false
		pillz.particles = createFireballParticles()
		pillz.pos = 0
		pillz.duration = PILLAR_DURATION
		pillz.type.oobCollider.SetSize(pillz.type.oobCollider, SUNRAY_HALF_LENGTH,1,1)
		local model = Assets.LoadModel( "Models/SunRayOuter.model" )
		Gear.AddStaticInstance(model, pillz.type.transformID)
		return pillz
	end
	
	local spell = {}
	spell.nade = initNade()
	spell.pillar = initPillar()

	spell.maxChargeTime = MAX_CHARGE_TIME_PILLAR
	spell.effect = CreateSlowEffect
	spell.chargedTime = 0	
	spell.Charge = BaseCharge
	spell.ChargeCast = BaseChargeCast
	spell.cooldown = 0
	spell.effect = CreateFireEffect()
	spell.pillarDir = {x = 0, y = 0, z = 29.85}
	function spell:Cast(entity, chargetime)
		if self.cooldown < 0 then
			if not self.nade.alive then
				local factor = chargetime / self.maxChargeTime
				local pos = Transform.GetPosition(entity.transformID)
				local dir = Transform.GetLookAt(entity.transformID)
				dir.y = dir.y + Y_SPEED_PILLAR
				self.nade.type:Cast(pos, dir, GRAVITY_PILLAR, MIN_CHARGE_TIME_PILLAR + SPEED_PILLAR * factor, 0.0)
				self.nade.damage = factor * MAX_DAMAGE_PILLAR		
				self.nade.effectflag = effectflag
				self.nade.alive = true
				self.nade.particles.cast()
				self.timeSinceSpam = 0
				self.chargedTime = 0
				self.cooldown = COOLDOWN_PILLAR
			end
		end
	end
	
	function spell:Update(dt)
		self.cooldown = self.cooldown - dt
		if self.nade.alive then
			self:GrenadeUpdate(dt)
		end
		if self.pillar.alive then
			self:PillarUpdate(dt)
		end		
	end
	
	function spell:GrenadeUpdate(dt)		
			if not self.nade.exploding then
				self.nade.particles.update(self.nade.type.position.x, self.nade.type.position.y, self.nade.type.position.z)
				self.nade.exploding = self.nade.type:flyUpdate(dt)
			else
				self.nade.particles.die(self.nade.type.position)
				self.pillar.pos = self.nade.type.position
				self.pillar.type:Cast(self.pillar.pos)
				self.pillar.alive = true
				self.pillar.duration = PILLAR_DURATION			
				self:Kill(i)
			end
	end

	function spell:PillarUpdate(dt)
		Transform.SetRotation(self.pillar.type.transformID, self.pillarDir)
		hits = self.pillar.type:Update(self.pillar.pos, {x = 0, y = 1, z = 0})
		self.pillar.duration = self.pillar.duration - dt
	
		for index = 1, #hits do
			if hits[index].Hurt then
				if self.nade.effectFlag then
					local effect = self.effect()
					table.insert(hits[index].effects, self.effect)
					effect:Apply(hits[index])
				end
				hits[index]:Hurt(MAX_DAMAGE_PILLAR)
			end
		end	
		if self.pillar.duration < 0 then 
			self.pillar.alive = false 
			self.pillar.type:Kill()
		end
	end
	function spell:Kill()
		self.nade.type:Kill()
		self.nade.alive = false
		self.nade.exploding = false
	end
	return spell
end