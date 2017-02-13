FIREEFFECTINTERVAL = 0.5
FIREEFFECTDURATION = 5
FIREEFFECTDAMAGE = 1

function CreateFireEffect(effectowner)
	local effect = {}
	effect.owner = effectowner
	effect.damage = FIREEFFECTDAMAGE
	effect.duration = FIREEFFECTDURATION
	effect.interval = FIREEFFECTINTERVAL
	effect.particles = GetNextFireEffectParticle()
	function effect:Apply(entity)
		print("Applied", entity.transformID)
		self.particles:Update(Transform.GetPosition(entity.transformID))
		self.particles:Cast()
	end

	function effect:Deapply(entity)
		print("Deapplied", entity.transformID)	
		self.particles:Die()
	end

	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		self.duration = self.duration - dt
		self.interval = self.interval - dt
		self.particles:Update(Transform.GetPosition(entity.transformID))
		if self.interval < 0 then
			self.interval = self.interval + FIREEFFECTINTERVAL
			entity:Hurt(self.damage, self.owner)
		end
		
		return self.duration > 0 
	end

	return effect
end