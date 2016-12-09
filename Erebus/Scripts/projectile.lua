local PROJECTILE_LIFETIME = 2
local projectile = {}
projectile.transformID = Transform.Bind()
projectile.position = {x=0, y=0, z=0}
projectile.direction = {x=0, y=0, z=0}
projectile.speed = 100
projectile.alive = false
projectile.lifeTime = PROJECTILE_LIFETIME

local projectileModel = Assets.LoadModel( "Models/molerat.model" )
Gear.AddModelInstance(projectileModel, projectile.transformID)

function projectile:Cast(position, direction)
	self.position = position
	self.direction = direction
	self.alive = true
	self.lifeTime = PROJECTILE_LIFETIME
	Transform.SetPosition(self.transformID, self.position)
end

function projectile:AddPosition(dt)
	self.position.x = self.position.x + ( self.direction.x * self.speed ) * dt
	self.position.y = self.position.y + ( self.direction.y * self.speed ) * dt
	self.position.z = self.position.z + ( self.direction.z * self.speed ) * dt
end

function projectile:Kill()
	self.alive = false
	self.position.x = 0
	self.position.y = 0
	self.position.z = 0
	Transform.SetPosition(self.transformID, self.position)
end

function projectile:Update(dt)
	if not self.alive then return end

	self:AddPosition(dt)

	local height = heightmap:GetHeight(self.position.x, self.position.z)
	if self.position.y <= height then
		self:Kill()
	end

	self.lifeTime = self.lifeTime - dt
	if self.lifeTime <= 0 then
		self:Kill()
	end

	Transform.SetPosition(self.transformID, self.position)
end

return projectile