HEALTH_EFFECT_DURATION = 2
HEALTH_ORB_LIFE = 20
ORB_POOL_SIZE = 5
healthOrbPool = {}
--healthOrbParticles = {}
healthColliderPool = {}
currentFreeOrb = 1
function CreateHealthOrb()
	local orb = {}
	orb.duration = HEALTH_EFFECT_DURATION
	orb.transformID, orb.collider, success = GetFreeMorph()
	if success then
		orb.position = 0
		orb.direction = 0
		return orb
	else
		return nil
	end	
end

function SpawnHealthOrb(self, position)
	if self then
		print(self.transformID)
		self.position = position
		self.direction = {x = math.random(), y = 1, z = math.random()}
		Transform.ActiveControl(self.transformID, true)
		Transform.SetPosition(self.transformID, self.position)
		SphereCollider.SetActive(self.collider, true)
		vec3print(Transform.GetPosition(self.transformID))
	end
end

function KillHealthOrb(self)
		
end

function UpdateHealthOrb(self, dt) 
	vec3print(Transform.GetPosition(self.transformID))
	--Transform.SetPosition(self.transformID, self.position)
end

function InitLifeOrbs()
	local model = Assets.LoadModel( "Models/Stone4.model" )
	for i = 1, ORB_POOL_SIZE do
		currentFreeOrb = i
		healthOrbPool[currentFreeOrb] =  Gear.BindForwardInstance(model)
		print(healthOrbPool[currentFreeOrb])
		Transform.ActiveControl(healthOrbPool[currentFreeOrb], false)
		healthColliderPool[currentFreeOrb] = SphereCollider.Create(healthOrbPool[currentFreeOrb])
		CollisionHandler.AddSphere(healthColliderPool[currentFreeOrb], 1)
		SphereCollider.SetActive(healthColliderPool[currentFreeOrb], false)
	end
	currentFreeOrb = 0
end

function GetFreeMorph()
	local success = true
	if currentFreeOrb > ORB_POOL_SIZE then success = false  end
	currentFreeOrb = currentFreeOrb + 1	
	return healthOrbPool[currentFreeOrb], healthColliderPool[currentFreeOrb], success
end

InitLifeOrbs()