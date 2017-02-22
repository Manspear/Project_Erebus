HEALTH_EFFECT_DURATION = 2
HEALTH_ORB_LIFE = 20
ORB_POOL_SIZE = 5
healthOrbPool = {}
healthOrbParticles = {}
currentFree = 1
function CreateHealthOrb(owner)
	local orb = {}
	orb.duration = HEALTH_EFFECT_DURATION
	orb.transformID, orb.particles = GetNextHealthOrb()



	function effect:Apply(entity, duration)
		Transform.SetScale(entity.transformID, 0)
		local pos = Transform.GetPosition(entity.transformID)
		Transform.SetPosition(self.polymorphTransform, pos)
		if entity.SetState then
			entity.SetState(entity, DO_NOTHING_STATE)
		end
		effect.particles:poof(pos)
	end

	function effect:Deapply(entity)
		Transform.SetScale(entity.transformID, 1)	
		Transform.ActiveControl(self.polymorphTransform, false)
		if entity.SetState then
			entity.SetState(entity,IDLE_STATE)
		end
		effect.particles:poof(pos)
	end

	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		self.duration = self.duration - dt
		self.poofTime = self.poofTime - dt
		if self.poofTime < 0 then Transform.ActiveControl(self.polymorphTransform, true) end
		Transform.SetPosition(self.polymorphTransform, Transform.GetPosition(entity.transformID))	
		return self.duration > 0 
	end

	return effect
end

function InitLifeOrbs()
	local model = {"Models/Stone3.model"}
	for i = 1, ORB_POOL_SIZE do
		currentFree = i
		healthOrbPool[currentFree] = Transform.Bind()
		Gear.AddStaticInstance(model, polymorphPool[currentFree] )
		polymorphParticles[i] = createCloudParticles()
		Transform.ActiveControl(polymorphPool[currentFree], false)
	end
	currentFree = 0
end

function GetNextFreeMorph()
	if currentFree >= POLYMORPH_POOL_SIZE then currentFree = 0 end
	currentFree = currentFree + 1	
	return polymorphPool[currentFree], polymorphParticles[currentFree]
end

InitPolymorphs()