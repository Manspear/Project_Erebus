MAX_FIRE_EFFECT_PARTICLES = 50

function BaseCharge(self, dt)
	if self.chargedTime < self.maxChargeTime then 
		self.chargedTime = self.chargedTime + dt
	end
	ZoomInCamera()
end

function BaseChargeCast(self, entity)
	self:Cast(entity, self.chargedTime)
end

function GetHeightmap(position)
	local result = nil
	for _,v in pairs(heightmaps) do
		if v.asset:Inside(position) then
			result = v
		end
	end
	return result
end


fireeffectparticles = {particles = {}, nextIndex = 0}
function InitFireEffectParticles()
	for i = 1, MAX_FIRE_EFFECT_PARTICLES do
		fireeffectparticles.particles[i] = CreateFireEffectParticles()
	end
end

function GetNextFireEffectParticle()
	fireeffectparticles.nextIndex = (fireeffectparticles.nextIndex%MAX_FIRE_EFFECT_PARTICLES)+1
	return fireeffectparticles.particles[fireeffectparticles.nextIndex]
end