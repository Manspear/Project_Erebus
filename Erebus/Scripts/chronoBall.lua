--CHRONOBALL_SPELL_TEXTURE = Assets.LoadTexture("Textures/ChargeTemp.dds");
CHRONOBALLLIFETIME = 1.6
CHRONOBALLSPEED = 35
CHRONOBALLORBITDISTANCE = 1.5
CHRONOBALLORBITSPEED = 10
CHRONOBALLMAXCHARGETIME = 5
CHRONOBALL_DAMAGE = 0

CHRONOBALL_SCALE = 1
CHRONOBALL_HITBOXRADIUS = 3

function CreateChronoBall(entity)
	local spell = {}
	spell.element = NATURE
	local model = Assets.LoadModel( "Models/blackHole.model" )
	spell.type = CreateProjectileType(model)
	spell.type.sphereCollider:SetRadius(CHRONOBALL_HITBOXRADIUS)
	spell.owner = entity
	spell.effect = TIME_SLOW_EFFECT_INDEX
	spell.lifeTime = CHRONOBALLLIFETIME
	spell.alive = false
	spell.hitflag = false
	spell.speed = CHRONOBALLSPEED
	spell.rotatingAngle = 0
	spell.particles = GetNextFireEffectParticle() --particles
	spell.effectFlag = false
	spell.maxChargeTime = CHRONOBALLMAXCHARGETIME
	spell.chargedTime = 0
	spell.hudtexture = Assets.LoadTexture("Textures/ChronoBallTexture.dds");
	spell.maxcooldown = -1 --Change to cooldown duration if it has a cooldown otherwise -1
	
	--local model = Assets.LoadModel( "Models/projectile1.model" )
	--Gear.AddStaticInstance(model, spell.type.transformID)

	function spell:Update(dt)
	if CollisionHandler.HitboxLayerCollision(spell.type.sphereCollider,3) then self:Kill() end -- if spell colliding with wall kill urself
		if self.alive then
			hits = self.type:Update(dt)

			self.rotatingAngle = self.rotatingAngle + dt * CHRONOBALLORBITSPEED
			local anglex =  math.cos(self.rotatingAngle)
			local anglez = math.sin(self.rotatingAngle)

			--self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z, anglex, 0, anglez)

			for index = 1, #hits do
				if not hits[index].invulnerable and hits[index].isAlive then
					if not self.hitflag then
						local effect = effectTable[self.effect]()
						hits[index]:Apply(effect)
						hits[index]:Hurt(CHRONOBALL_DAMAGE, self.owner, self.element)
						self.hitflag = true
					end
					local hitPos = Transform.GetPosition(self.type.transformID)
					hitPos.x = hitPos.x + anglex * CHRONOBALLORBITDISTANCE
					hitPos.z = hitPos.z + anglez * CHRONOBALLORBITDISTANCE
					--Transform.SetPosition(hits[index].transformID, hitPos)
					-- HitPos = where we wanna go
					player.controller:MoveOverride(hitPos.x,0,hitPos.z)
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
		if not self.alive then
			--self.position = Transform.GetPosition(casterTransID)
			--self.direction = dir	--Transform.GetLookAt(player.transformID

			Transform.SetScale(entity.transformID, CHRONOBALL_SCALE)
			self.type.sphereCollider:SetRadius(CHRONOBALL_HITBOXRADIUS)

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

function DestroyChronoBall(ball)
	DestroyProjectileType(ball.type)

	Gear.UnbindInstance(ball.transformID)
	Assets.UnloadModel("Models/ChronoBall.model")
	Assets.UnloadTexture("Textures/ChronoBallTexture.dds")
	ball = nil
end