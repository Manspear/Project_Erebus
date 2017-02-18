MAX_FIRE_EFFECT_PARTICLES = 50
function BaseCombine(self, effect,damage)
	if #self.effects < 2 then
		table.insert(self.effects, effect)
		self.damage = self.damage + damage
	end
end

function BaseCharge(self, dt)
	if self == nil then
		return
	end
	if self.chargedTime < self.maxChargeTime then 
		self.chargedTime = self.chargedTime + dt
	end
	print(self.owner)
	print(player)
	if self.owner == player then
		ZoomInCamera()
	end
end

function BaseChargeCast(self, entity)
	if self.owner == player then
		ZoomOutCamera()
	end
	self:Cast(entity, self.chargedTime)
end

function BaseChange(self)
	self.isActiveSpell = not self.isActiveSpell
end

function BaseGetEffect(self)
	return self.effects[1]
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