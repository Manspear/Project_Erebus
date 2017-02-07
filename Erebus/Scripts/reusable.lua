MAX_FIRE_EFFECT_PARTICLES = 50

function BaseCharge(self, dt)
	self.chargedTime = self.chargedTime + dt
	ZoomInCamera()
end
function BaseChargeCast(self, entity)
	self:Cast(entity, math.min(self.chargedTime, self.maxChargeTime))
end
function GetHeightmap(position)
	local result = player.currentHeightmap

	assert( result, "Player has no current heightmap!" )

	if not result.asset:Inside(position) then
		result = nil

		for _,hmIndex in pairs(player.currentHeightmap.surrounding) do
			if heightmaps[hmIndex].asset:Inside(position) then
				result = heightmaps[hmIndex]
				break
			end
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