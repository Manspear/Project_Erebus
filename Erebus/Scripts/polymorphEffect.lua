POLYMORPH_EFFECT_DURATION = 2
POLYMORPH_POOL_SIZE = 4
POLYMORPH_POOFTIME = 0.3
polymorphPool = {}
polymorphParticles = {}
currentFree = 1
function CreatePolyEffect(owner, duration)
	local effect = {}
	effect.duration = duration or POLYMORPH_EFFECT_DURATION
	effect.poofTime = POLYMORPH_POOFTIME
	effect.polymorphTransform, effect.particles = GetNextFreeMorph()

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
		self.particles:poof(pos)
		self = nil
	end

	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		self.duration = self.duration - dt
		self.poofTime = self.poofTime - dt
		if self.poofTime < 0 then Transform.ActiveControl(self.polymorphTransform, true)  self.poofTime = 1000 end
		Transform.SetPosition(self.polymorphTransform, Transform.GetPosition(entity.transformID))	
		return self.duration > 0 
	end

	return effect
end

function InitPolymorphs()
	local someModels = {"Models/Polymorph.model", "Models/Polymorph.model", "Models/Polymorph.model", "Models/Polymorph.model"}
	local models = {}
	for i = 1, POLYMORPH_POOL_SIZE do 
		models[i] = Assets.LoadModel(someModels[i])
	end
	for i = 1, POLYMORPH_POOL_SIZE do
		currentFree = i
		--polymorphPool[currentFree] = Transform.Bind()
		--local model = Assets.LoadModel( someModels[i] )
		--Gear.AddStaticInstance(model, polymorphPool[currentFree] )
		
		polymorphPool[currentFree] = Gear.BindStaticInstance(models[i])
		polymorphParticles[i] = createCloudParticles()
		--Transform.ActiveControl(polymorphPool[currentFree], false)
	end
	currentFree = 0
end

function GetNextFreeMorph()
	if currentFree >= POLYMORPH_POOL_SIZE then currentFree = 0 end
	currentFree = currentFree + 1	
	return polymorphPool[currentFree], polymorphParticles[currentFree]
end

InitPolymorphs()