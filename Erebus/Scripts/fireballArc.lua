FIREBALLARCMAXCHARGETIME = 3
FIREBALLARCDAMAGE = 10

function CreateFireballArc()
	local fireball = {}
	fireball.type = CreateArcType()
	fireball.effect = CreateFireEffect --reference to function
	fireball.damage = 0
	fireball.alive = false
	fireball.speed = 70
	fireball.particles = createFireballParticles() --particles
	fireball.effectFlag = false
	fireball.maxChargeTime = FIREBALLARCMAXCHARGETIME
	fireball.chargedTime = 0

	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, fireball.type.transformID)

	function fireball:Update(dt)
		hits = self.type:Update(dt)
		self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z)
		self.damage = FIREBALLARCDAMAGE * self.chargedTime / FIREBALLARCMAXCHARGETIME
		for index = 1, #hits do
			if hits[index].Hurt then
				self.particles.die(self.type.position)
				if self.effectFlag then
					table.insert(hits[index].effects, self.effect())
				end
				hits[index]:Hurt(self.damage)
				self:Kill()
			end
		end

		local posx = math.floor(self.type.position.x/512)
		local posz = math.floor(self.type.position.z/512)
		local heightmapIndex = (posz*2 + posx)+1

		if heightmapIndex < 1 then heightmapIndex = 1 end
		if heightmapIndex > 4 then heightmapIndex = 4 end

		if heightmaps[heightmapIndex]:GetHeight(self.type.position.x, self.type.position.z) > self.type.position.y then
			self.particles.die(self.type.position)
			self.Kill(self)
		end
	end
	
	function fireball:Cast(chargetime, effect)
		--self.direction = dir	--Transform.GetLookAt(player.transformID
		self.type:Shoot(Transform.GetPosition(player.transformID), Camera.GetDirection(), self.speed)
		self.alive = true
		self.chargedTime = chargetime
		self.effectFlag = effect
		self.particles.cast()
		--Transform.SetPosition(self.transformID, self.position)
		
	end
	
	fireball.Charge = BaseCharge
	fireball.ChargeCast = BaseChargeCast


	function fireball:Kill()
		self.alive = false
		self.type:Kill()
	end
	return fireball
end