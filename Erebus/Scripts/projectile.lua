local PROJECTILE_LIFETIME = 2
local projectile  = dofile( "Scripts/basespell.lua" )
projectile.speed = 100
projectile.lifeTime = PROJECTILE_LIFETIME

local projectileModel = Assets.LoadModel( "Models/molerat.model" )
Gear.AddModelInstance(projectileModel, projectile.transformID)

function projectile:Cast()
	self.position = Transform.GetPosition(player.transformID)
	self.direction = Transform.GetLookAt(player.transformID)

	self.velocity.x = self.direction.x * self.speed
	self.velocity.y = self.direction.y * self.speed
	self.velocity.z = self.direction.z * self.speed
	self.alive = true
	self.lifeTime = PROJECTILE_LIFETIME
	Transform.SetPosition(self.transformID, self.position)
end


function projectile:Update(dt)

	local height = heightmap:GetHeight(self.position.x, self.position.z)
	if self.position.y <= height then
		self:Kill()
	end

	self.lifeTime = self.lifeTime - dt
	if self.lifeTime <= 0 then
		self:Kill()
	end

end

return projectile