CHRONOBALLLIFETIME = 10
CHRONOBALLORBITDISTANCE = 1.5
CHRONOBALLORBITSPEED = 10

function CreateChronoBall()
	local spell = {}
	spell.type = CreateProjectileType()
	spell.effect = CreateTimeSlowEffect
	spell.lifeTime = CHRONOBALLLIFETIME
	spell.alive = false
	spell.speed = 10
	spell.rotatingAngle = 0
	spell.particles = createFireballParticles() --particles
	
	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, spell.type.transformID)

	function spell:Update(dt)
		hits = self.type:Update(dt)

		self.rotatingAngle = self.rotatingAngle + dt * CHRONOBALLORBITSPEED
		local anglex =  math.cos(self.rotatingAngle)
		local anglez = math.sin(self.rotatingAngle)

		self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z, anglex, 0, anglez)

		for index = 1, #hits do
			if hits[index].timeScalar == 1.0 then
				table.insert(hits[index].effects, self.effect())
			end
			local hitPos = Transform.GetPosition(self.type.transformID)
			hitPos.x = hitPos.x + anglex * CHRONOBALLORBITDISTANCE
			hitPos.z = hitPos.z + anglez * CHRONOBALLORBITDISTANCE
			Transform.SetPosition(hits[index].transformID, hitPos)
		end
		self.lifeTime = self.lifeTime - dt

		local posx = math.floor(self.type.position.x/512)
		local posz = math.floor(self.type.position.z/512)
		local heightmapIndex = (posz*2 + posx)+1
		if heightmapIndex < 1 then heightmapIndex = 1 end
		if heightmapIndex > 4 then heightmapIndex = 4 end

		if heightmaps[heightmapIndex]:GetHeight(self.type.position.x, self.type.position.z) > self.type.position.y or self.lifeTime < 0 then
			--self.particles.die(self.type.position.x, self.type.position.y, self.type.position.z)
			self.Kill(self)
		end
	end
	
	function spell:Cast()
		self.position = Transform.GetPosition(casterTransID)
		self.direction = dir	--Transform.GetLookAt(player.transformID
		self.type:Shoot(Transform.GetPosition(player.transformID), Camera.GetDirection(), self.speed)
		self.alive = true
		self.lifeTime = CHRONOBALLLIFETIME 
		--self.particles.cast()
		Transform.SetPosition(self.transformID, self.position)
		self.particles.cast()
		
	end

	function spell:Kill()
		self.alive = false
		self.particles.die(self.type.position)
		self.type:Kill()
	end
	return spell
end