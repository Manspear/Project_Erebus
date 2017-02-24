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
	local model = Assets.LoadModel("Models/Polymorph.model")
	effect.polymorphTransform = Gear.BindStaticInstance(model)
	effect.particles = createCloudParticles()

	function effect:Apply(entity, duration)
		Transform.SetScale(entity.transformID, 0)
		local pos = Transform.GetPosition(entity.transformID)
		Transform.SetPosition(self.polymorphTransform, pos)
		if entity.SetState then
			if entity.type ~= ENEMY_DUMMY then
				entity.SetState(entity, DO_NOTHING_STATE)
			end
		end
		effect.particles:poof(pos)
	end

	function effect:Deapply(entity)
		Transform.SetScale(entity.transformID, 1)	
		Transform.ActiveControl(self.polymorphTransform, false)
		if entity.SetState then
			if entity.type ~= ENEMY_DUMMY then
				entity.SetState(entity,IDLE_STATE)
			end
		end
		self.particles:poof(pos)
		Gear.UnbindInstance(self.polymorphTransform)
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
	--local someModels = {"Models/Polymorph.model", "Models/Polymorph.model", "Models/Polymorph.model", "Models/Polymorph.model"}
end

function GetNextFreeMorph()
	--if currentFree >= POLYMORPH_POOL_SIZE then currentFree = 0 end
	--currentFree = currentFree + 1	
	--return polymorphPool[currentFree], polymorphParticles[currentFree]
end

