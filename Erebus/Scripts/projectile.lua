local PROJECTILE_LIFETIME = 2
local projectile  = dofile( "Scripts/basespell.lua" )
projectile.speed = 100
projectile.damage = 5
projectile.lifeTime = PROJECTILE_LIFETIME
projectile.sphereCollider = SphereCollider.Create(projectile.transformID)
CollisionHandler.AddSphere(projectile.sphereCollider)

local projectileModel = Assets.LoadModel( "Models/moleman5.model" )
Gear.AddStaticInstance(projectileModel, projectile.transformID)
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

	local collisionIDs = self.sphereCollider:GetCollisionIDs()
	for curID = 1, #collisionIDs do
		for curEnemy=1, MAX_ENEMIES do
			if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
				self:Kill()

				enemies[curEnemy]:Hurt(self.damage)
			end

			if not self.alive then break end
		end

		if not self.alive then break end
	end
end

return projectile