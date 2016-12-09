local projectile = {}
projectile.transformID = Transform.Bind()
projectile.position = {x=0, y=0, z=0}
projectile.direction = {x=0, y=0, z=0}
projectile.speed = 100

local projectileModel = Assets.LoadModel( "Models/moleman5.model" )
Gear.AddModelInstance(projectileModel, projectile.transformID)
function projectile:Cast(position, direction)
	self.position = position
	self.direction = direction
	Transform.SetPosition(self.transformID, self.position)
end

function projectile:AddPosition(dt)
	self.position.x = self.position.x + ( self.direction.x * self.speed ) * dt
	self.position.y = self.position.y + ( self.direction.y * self.speed ) * dt
	self.position.z = self.position.z + ( self.direction.z * self.speed ) * dt
end

function projectile:Update(dt)
	self:AddPosition(dt)
	Transform.SetPosition(self.transformID, self.position)
end

return projectile