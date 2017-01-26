BLACK_HOLE_DURATION = 10
BLACK_HOLE_RADIUS = 5
BLACK_HOLE_DAMAGE = 8
BLACK_HOLE_TICK_TIME = 1 --interval between damage ticks
--BLACK_HOLE_CASTER_SLOW = 0.01  optional for possible later use
BLACK_HOLE_WHOBLE_FACTOR = 0.2
BLACK_HOLE_WHOBLE_INTERVAL = 0.5
BLACK_HOLE_COOLDOWN = 15

function CreateBlackHole()
	local spell = {}
	spell.type = CreateStaticAoEType()
	spell.effects = {}
	table.insert(spell.effects, CreateTimeSlowEffect)
	spell.maxChargeTime = 0
	spell.chargedTime = 0
	spell.damage = 0
	spell.lastTick = 0
	spell.duration = 0
	spell.owner = {}
	spell.hits = {}
	spell.alive = false
	spell.timeSinceShot = 0
	--spell.spamcd = 5
	
	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, spell.type.transformID)

	function spell:Cast(entity, chargetime) end
	function spell:Charge() end

	function spell:ChargeCast(entity)
		if self.timeSinceShot > BLACK_HOLE_COOLDOWN then
			local pos = Transform.GetPosition(entity.transformID)
			local dir = Transform.GetLookAt(entity.transformID)
			pos.x = pos.x  + 10*dir.x
			pos.y = pos.y  + 10*dir.y
			pos.z = pos.z  + 10*dir.z
			self.type:Cast(1, BLACK_HOLE_RADIUS, pos)
			self.damage = BLACK_HOLE_DAMAGE
			self.lastTick = 0
			self.duration = 0
			self.owner = entity
			--entity.moveSpeed = entity.moveSpeed * BLACK_HOLE_CASTER_SLOW --if you want the player to be "unable" to walk while casting black hole
			self.alive = true
			self.timeSinceShot = 0
		end
	end

	function spell:Update(dt)
		self.timeSinceShot = self.timeSinceShot + dt
		if self.alive then
			self.duration = self.duration + dt
			self.type:Update(dt)
			local scale = Transform.GetScale(self.type.transformID)
			scale = scale + BLACK_HOLE_WHOBLE_FACTOR * math.cos((self.timeSinceShot/BLACK_HOLE_WHOBLE_INTERVAL)*3.14)
			Transform.SetScale(self.type.transformID, scale)
			SphereCollider.SetRadius(self.type.sphereCollider, scale)
			
			
			if self.duration > BLACK_HOLE_DURATION then
				self:Kill()
			end
		end
	end

	function spell:Kill()
		self.type:Kill()
		--self.owner.moveSpeed = self.owner.moveSpeed / BLACK_HOLE_CASTER_SLOW --if you want the player to be "unable" to walk while casting black hole
		self.alive = false
	
	end

	return spell
end