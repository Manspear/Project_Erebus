FIREGROUNDAOEIFETIME = 0.5

function CreateFireGroundAoE()
	
	local fireaoe = {}
	fireaoe.lifeTime = FIREGROUNDAOEIFETIME
	fireaoe.type = CreateGroundAoEType(4, 20, fireaoe.lifeTime) --startsize, endsize, duration
	fireaoe.effect = CreateFireEffect --reference to function
	fireaoe.damage = 3
	fireaoe.alive = false
	fireaoe.particles = createFireballParticles() --particles
	fireaoe.hits = {}

	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, fireaoe.type.transformID)

	function fireaoe:Update(dt)
		hits = self.type:Update(dt)
		--self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z)
		for index = 1, #hits do
			if hits[index].Hurt then
				if  not self.hits[hits[index].transformID]	then
					self.particles.die(self.type.position)
					table.insert(hits[index].effects, self.effect())
					hits[index]:Hurt(self.damage)
					self.hits[hits[index].transformID] = true
				end
			end
		end
		self.lifeTime = self.lifeTime - dt
		if self.lifeTime < 0 then
			self:Kill()
		end
	end
	
	function fireaoe:Cast()

		self.alive = self.type:Cast(Transform.GetPosition(player.transformID), Camera.GetDirection())
		if self.alive then
			self.lifeTime = FIREGROUNDAOEIFETIME 
			self.particles.cast()
		end
		--Transform.SetPosition(self.transformID, self.position)
		
	end

	function fireaoe:Kill()
		self.alive = false
		self.hits = {}
		self.type:Kill()
	end

	return fireaoe
end