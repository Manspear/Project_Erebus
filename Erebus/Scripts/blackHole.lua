BLACK_HOLE_SPELL_TEXTURE = Assets.LoadTexture("Textures/blackhole.dds");
BLACK_HOLE_DURATION = 7
BLACK_HOLE_RADIUS = 5
BLACK_HOLE_DAMAGE = 1
BLACK_HOLE_TICK_TIME = 1 --interval between damage ticks
--BLACK_HOLE_CASTER_SLOW = 0.01  optional for possible later use
BLACK_HOLE_WHOBLE_FACTOR = 0.5
BLACK_HOLE_WHOBLE_INTERVAL = 0.5
BLACK_HOLE_COOLDOWN = 6
BLACK_HOLE_PULL_SPEED = 1
BLACK_HOLE_SPIN_SPEED = 3.14/1

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
	spell.timeSinceShot = 1616661
	spell.castSFX = "Effects/Bluezone-BC0212-sound-effect-004.wav"
	spell.soundID = -1
	--spell.spamcd = 5
	spell.hudtexture = BLACK_HOLE_SPELL_TEXTURE
	spell.maxcooldown = -1 --Change to cooldown duration if it has a cooldown otherwise -1
	
	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, spell.type.transformID)

	function spell:Cast(entity, chargetime) end
	function spell:Charge(dt) end

	function spell:ChargeCast(entity)
		if self.timeSinceShot > BLACK_HOLE_COOLDOWN then
			local pos = Transform.GetPosition(entity.transformID)
			local dir = Transform.GetLookAt(entity.transformID)
			pos.x = pos.x  + 5*dir.x
			pos.y = pos.y  + 5*dir.y
			pos.z = pos.z  + 5*dir.z
			self.type:Cast(1, BLACK_HOLE_RADIUS, pos)
			self.damage = BLACK_HOLE_DAMAGE
			self.lastTick = 0
			self.duration = 0
			self.owner = entity
			--entity.moveSpeed = entity.moveSpeed * BLACK_HOLE_CASTER_SLOW --if you want the player to be "unable" to walk while casting black hole
			self.alive = true
			self.timeSinceShot = 0
			self.soundID = Sound.Play(self.castSFX, 11, pos)
			Sound.SetVolume(self.soundID, 1)
		end
	end

	function spell:Update(dt)
		self.timeSinceShot = self.timeSinceShot + dt
		if self.alive then
			self.duration = self.duration + dt
			hits = self.type:Update(dt)
			local scale = Transform.GetScale(self.type.transformID)
			scale = scale + BLACK_HOLE_WHOBLE_FACTOR * math.cos((self.timeSinceShot/BLACK_HOLE_WHOBLE_INTERVAL)*3.14)
			Transform.SetScale(self.type.transformID, scale) 
			for index = 1, #hits do
				local position = Transform.GetPosition(hits[index].transformID)--kanske borde flyttas ut till c
				local pos = self.type.position
				local direction = {x=0,y=0,z=0}
				direction.x = position.x - pos.x
				direction.z = position.z - pos.z
				local angle = dt * BLACK_HOLE_SPIN_SPEED
				direction.x = direction.x * math.cos(angle) - direction.z *math.sin(angle)
				direction.z = direction.z * math.cos(angle) + direction.x *math.sin(angle)
				position.x = pos.x+direction.x
				position.z = pos.z+direction.z
				Transform.SetPosition(hits[index].transformID, position)

				if hits[index].Hurt and not self.hits[hits[index].transformID] then
					for i = 1, #self.effects do
						local effect = self.effects[i]()
						table.insert(hits[index].effects, effect)
						effect:Apply(hits[index])
						hits[index]:Hurt(self.damage)
						self.hits[hits[index].transformID] = true
					end
				end
			end


			if self.duration > BLACK_HOLE_DURATION then
				self:Kill()
			end
		end
	end

	function spell:Kill()
		Sound.Pause(self.soundID)
		self.type:Kill()
		self.hits = {}
		--self.owner.moveSpeed = self.owner.moveSpeed / BLACK_HOLE_CASTER_SLOW --if you want the player to be "unable" to walk while casting black hole
		self.alive = false
	
	end

	return spell
end