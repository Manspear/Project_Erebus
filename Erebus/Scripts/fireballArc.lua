function CreateFireballArc()
	local fireball = {}
	fireball.type = CreateArcType()
	fireball.effect = CreateFireEffect --reference to function
	fireball.damage = 0
	fireball.alive = false
	fireball.speed = 70
	fireball.particles = createFireballParticles() --particles

	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, fireball.type.transformID)

	function fireball:Update(dt)
		hits = self.type:Update(dt)
		self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z)
		for index = 1, #hits do
			if hits[index].Hurt then
				self.particles.die(self.type.position.x, self.type.position.y, self.type.position.z)
				table.insert(hits[index].effects, self.effect())
				hits[index]:Hurt(self.damage)
				self:Kill()
			end
		end
		if heightmap:GetHeight(self.type.position.x, self.type.position.z) > self.type.position.y then
			self.particles.die(self.type.position.x, self.type.position.y, self.type.position.z)
			self.Kill(self)
		end
	end
	
	function fireball:Cast()
		self.position = Transform.GetPosition(casterTransID)
		self.direction = dir	--Transform.GetLookAt(player.transformID
		self.type:Shoot(Transform.GetPosition(player.transformID), Camera.GetDirection(), self.speed)
		self.alive = true
		self.particles.cast()
		--Transform.SetPosition(self.transformID, self.position)
		
	end

	function fireball:Kill()
		self.alive = false
		self.type:Kill()
	end
	return fireball
end