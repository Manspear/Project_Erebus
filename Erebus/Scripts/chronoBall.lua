CHRONOBALL_SPELL_TEXTURE = Assets.LoadTexture("Textures/firepillar.dds");
CHRONOBALLLIFETIME = 10
CHRONOBALLORBITDISTANCE = 1.5
CHRONOBALLORBITSPEED = 10
CHRONOBALLMAXCHARGETIME = 5
CHRONOBALL_DAMAGE = 30

function CreateChronoBall(entity)
	local spell = {}
	spell.element = NATURE
	spell.type = CreateProjectileType()
	spell.owner = entity
	spell.effect = TIME_SLOW_EFFECT_INDEX
	spell.lifeTime = CHRONOBALLLIFETIME
	spell.alive = false
	spell.hitflag = false
	spell.speed = 50
	spell.rotatingAngle = 0
	spell.particles = GetNextFireEffectParticle() --particles
	spell.effectFlag = false
	spell.maxChargeTime = CHRONOBALLMAXCHARGETIME
	spell.chargedTime = 0
	spell.hudtexture = CHRONOBALL_SPELL_TEXTURE
	spell.maxcooldown = -1 --Change to cooldown duration if it has a cooldown otherwise -1
	
	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, spell.type.transformID)

	function spell:Update(dt)
		if self.alive then
			hits = self.type:Update(dt)

			self.rotatingAngle = self.rotatingAngle + dt * CHRONOBALLORBITSPEED
			local anglex =  math.cos(self.rotatingAngle)
			local anglez = math.sin(self.rotatingAngle)

			--self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z, anglex, 0, anglez)

			for index = 1, #hits do
				if not hits[index].invulnerable then
					if not self.hitflag then
						local effect = effectTable[self.effect]()
						hits[index]:Apply(effect)
						hits[index]:Hurt(CHRONOBALL_DAMAGE, self.owner)
						self.hitflag = true
					end
					local hitPos = Transform.GetPosition(self.type.transformID)
					hitPos.x = hitPos.x + anglex * CHRONOBALLORBITDISTANCE
					hitPos.z = hitPos.z + anglez * CHRONOBALLORBITDISTANCE
					Transform.SetPosition(hits[index].transformID, hitPos)
				end
			end
			self.lifeTime = self.lifeTime - dt

			local hm = GetHeightmap(self.type.position)
			if hm and hm.asset:GetHeight(self.type.position.x, self.type.position.z) > self.type.position.y then
				self.Kill(self)
			end

			if self.alive and self.lifeTime < 0 then
				self.Kill(self)
			end
		end
	end
	
	function spell:Cast( entity )
		--self.position = Transform.GetPosition(casterTransID)
		--self.direction = dir	--Transform.GetLookAt(player.transformID
		local pos = Transform.GetPosition(entity.transformID)
		pos.y = pos.y - 3
		local to = Transform.GetPosition(player.transformID)
		to.y = to.y + 1
		self.direction = Math.GetDir(pos, to);
		self.type:Shoot(pos , self.direction, self.speed)
		self.alive = true
		self.lifeTime = CHRONOBALLLIFETIME 
		self.chargedTime = chargetime
		self.effectFlag = effect
		self.hitflag = false
		--print(type(self.particles))
		--self.particles.Cast()
		--Transform.SetPosition(self.transformID, self.position)
		--self.particles.cast()
		
	end

	spell.Charge = BaseCharge
	spell.ChargeCast = BaseChargeCast

	function spell:Kill()
		self.alive = false
		--self.particles.Die()
		self.type:Kill()
	end
	return spell
end