FIREBALLLIFETIME = 2
function CreateFireball()
	local fireball = {}
	fireball.type = CreateProjectileType()
	fireball.effect = CreateFireEffect --reference to function
	fireball.lifeTime = FIREBALLLIFETIME
	fireball.damage = 0
	fireball.alive = false
	fireball.speed = 100
	fireball.particles = createFireballParticles() --particles

	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, fireball.type.transformID)

	function fireball:Update(dt)
		hits = self.type:Update(dt)
		self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z)
		for index = 1, #hits do
			if hits[index].Hurt then
				self.particles.die(self.type.position)
				table.insert(hits[index].effects, self.effect())
				hits[index]:Hurt(self.damage)
				self:Kill()
			end
		end
		self.lifeTime = self.lifeTime - dt

		local posx = math.floor(self.type.position.x/512)
		local posz = math.floor(self.type.position.z/512)
		local heightmapIndex = (posz*2 + posx)+1
		if heightmaps[heightmapIndex]:GetHeight(self.type.position.x, self.type.position.z) > self.type.position.y or self.lifeTime < 0 then
			self.particles.die(self.type.position)
			self.Kill(self)
		end
	end
	
	function fireball:Cast()
		--self.direction = dir	--Transform.GetLookAt(player.transformID
		self.type:Shoot(Transform.GetPosition(player.transformID), Camera.GetDirection(), self.speed)
		self.alive = true
		self.lifeTime = FIREBALLLIFETIME 
		self.particles.cast()
		--Transform.SetPosition(self.transformID, self.position)
		
	end

	function fireball:Kill()
		self.alive = false
		self.type:Kill()
	end
	return fireball
end