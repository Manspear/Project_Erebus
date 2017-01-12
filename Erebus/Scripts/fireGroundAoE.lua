FIREGROUNDAOEIFETIME = 4

function CreateFireGroundAoE()
	
	local fireaoe = {}
	fireaoe.lifeTime = FIREBALLLIFETIME
	fireaoe.type = CreateGroundAoEType(4, 20, fireaoe.lifeTime) --startsize, endsize, duration
	fireaoe.effect = CreateFireEffect --reference to function
	fireaoe.damage = 3
	fireaoe.alive = false
	fireaoe.particles = createFireballParticles() --particles

	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, fireaoe.type.transformID)

	function fireaoe:Update(dt)
		hits = self.type:Update(dt)
		--self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z)
		for index = 1, #hits do
			if hits[index].Hurt then
				self.particles.die(self.type.position.x, self.type.position.y, self.type.position.z)
				table.insert(hits[index].effects, self.effect())
				hits[index]:Hurt(self.damage)
				self:Kill()
			end
		end
		self.lifeTime = self.lifeTime - dt

	end
	
	function fireaoe:Cast()
		self.position = Transform.GetPosition(casterTransID)
		self.direction = dir	--Transform.GetLookAt(player.transformID
		self.type:Cast(Transform.GetPosition(player.transformID), Camera.GetDirection())
		self.alive = true
		self.lifeTime = FIREGROUNDAOEIFETIME 
		self.particles.cast()
		--Transform.SetPosition(self.transformID, self.position)
		
	end

	function fireaoe:Kill()
		self.alive = false
		self.type:Kill()
	end

	return fireaoe
end