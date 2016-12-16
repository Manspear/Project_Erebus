local ARC_LIFETIME = 10
local ARC_GRAVITY = 49.1

function CreateArc()
	local arc = dofile( "Scripts/basespell.lua" )
	print(arc.BaseUpdate)
	arc.speed = 50
	arc.upSpeed = 50
	arc.currentUpSpeed = 0
	arc.lifeTime = ARC_LIFETIME

	arc.damage = 5
	arc.sphereCollider = SphereCollider.Create(arc.transformID)
	CollisionHandler.AddSphere(arc.sphereCollider)


	local arcModel = Assets.LoadModel( "Models/bullet.model" )
	Gear.AddStaticInstance(arcModel, arc.transformID)

	function arc:Cast()
		self.position = Transform.GetPosition(player.transformID)
		self.velocity = Transform.GetLookAt(player.transformID)
		self.velocity.y = self.upSpeed

		self.velocity.x = self.velocity.x * 50
		self.velocity.z = self.velocity.z * 50

		self.alive = true
		self.lifeTime = ARC_LIFETIME
		self.currentUpSpeed = self.upSpeed
		Transform.SetPosition(self.transformID, self.position)
	end


	function arc:Update(dt)
		self.velocity.y = self.velocity.y - self.speed*dt

		local height = heightmap:GetHeight(self.position.x, self.position.z)
		if self.position.y <= height then
			self:Kill()
		end

		self.lifeTime = self.lifeTime - dt
		if self.lifeTime<=0 then
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

	return arc
end