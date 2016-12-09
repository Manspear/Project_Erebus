local ARC_LIFETIME = 10
local ARC_GRAVITY = 49.1
local arc = {}
arc.transformID = Transform.Bind()
arc.position = {x=0, y=0, z=0}
arc.direction = {x=0, y=0, z=0}
arc.speed = 50
arc.upSpeed = 50
arc.currentUpSpeed = 0
arc.alive = false
arc.lifeTime = ARC_LIFETIME

local arcModel = Assets.LoadModel( "Models/Sten.model" )
Gear.AddModelInstance(arcModel, arc.transformID)

function arc:UpdatePosition(dt)
	self.position.x = self.position.x + ((self.direction.x * self.speed)*dt)
	self.position.z = self.position.z + ((self.direction.z * self.speed)*dt)
	self.direction.y = self.direction.y - (ARC_GRAVITY*dt)
	self.position.y = self.position.y + (self.direction.y * dt)
end

function arc:Cast()
	self.position = Transform.GetPosition(player.transformID)
	self.direction = Transform.GetLookAt(player.transformID)
	self.direction.y = self.upSpeed
	self.alive = true
	self.lifeTime = ARC_LIFETIME
	self.currentUpSpeed = self.upSpeed
	Transform.SetPosition(self.transformID, self.position)
	
end

function arc:Kill()
	self.alive = false
	self.position.x=0
	self.position.y=0
	self.position.z=0
	Transform.SetPosition(self.transformID, self.position)
end

function arc:Update(dt)
	if not self.alive then
		return
	end

	self:UpdatePosition(dt)

	local height = heightmap:GetHeight(self.position.x, self.position.z)
	if self.position.y <= height then
		self:Kill()
	end

	self.lifeTime = self.lifeTime - dt
	if self.lifeTime<=0 then
		self:Kill()
	end

	Transform.SetPosition(self.transformID, self.position)

end



return arc