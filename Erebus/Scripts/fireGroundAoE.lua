FIREGROUNDAOEIFETIME = 0.5
FIREGROUNDMAXCHARGETIME = 3
FIREGROUNDDAMAGE = 3

function CreateFireGroundAoE()
	
	local fireaoe = {}
	fireaoe.lifeTime = FIREGROUNDAOEIFETIME
	fireaoe.startsize = 0.1
	fireaoe.endsize = 20
	fireaoe.type = CreateGroundAoEType(fireaoe.lifeTime, fireaoe.startsize) -- duration, startsize
	fireaoe.effect = CreateFireEffect --reference to function
	fireaoe.damage = 0
	fireaoe.alive = false
	fireaoe.particles = createFireballParticles() --particles
	fireaoe.hits = {}
	fireaoe.effectFlag = false
	fireaoe.maxChargeTime = FIREGROUNDMAXCHARGETIME
	fireaoe.chargedTime = 0

	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, fireaoe.type.transformID)

	function fireaoe:Update(dt)
		hits = self.type:Update(dt)
		--self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z)
		for index = 1, #hits do
			if hits[index].Hurt then
				if  not self.hits[hits[index].transformID]	then
					self.particles.die(self.type.position)
					if self.effectFlag then
						table.insert(hits[index].effects, self.effect())
					end
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
	
	function fireaoe:Cast(chargetime, effects)
		local scale = chargetime/FIREGROUNDMAXCHARGETIME
		self.alive = self.type:Cast(Transform.GetPosition(player.transformID), Camera.GetDirection(), self.endsize * scale + self.startsize)
		print(self.chargedTime)
		if self.alive then
			self.damage = scale *  FIREGROUNDDAMAGE
			self.lifeTime = FIREGROUNDAOEIFETIME
			self.particles.cast()
			self.effectFlag = effects

		end
		--Transform.SetPosition(self.transformID, self.position)
		self.chargedTime = 0
	end

	fireaoe.Charge = BaseCharge
	fireaoe.ChargeCast = BaseChargeCast

	function fireaoe:Kill()
		self.alive = false
		self.hits = {}
		self.type:Kill()
	end

	return fireaoe
end