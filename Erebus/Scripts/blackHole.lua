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
BLACK_HOLE_CAST_SFX = {"Effects/portal-idle.wav", "Effects/Bluezone-BC0212-ambience-053.wav", "Effects/Bluezone-BC0212-sound-effect-004.wav"}

function CreateBlackHole(entity)
	local spell = {}
	spell.type = CreateStaticAoEType()
	spell.innerTransformID = Transform.Bind()
	spell.owner = entity
	spell.effects = {}
	table.insert(spell.effects, TIME_SLOW_EFFECT_INDEX)
	spell.maxChargeTime = 0
	spell.chargedTime = 0
	spell.damage = 0
	spell.lastTick = 0
	spell.duration = 0
	spell.hits = {}
	spell.alive = false
	spell.cooldown = 0
	spell.soundID = {-1, -1, -1}
	spell.Change = GenericChange
	--spell.spamcd = 5
	spell.hudtexture = BLACK_HOLE_SPELL_TEXTURE
	spell.maxcooldown = BLACK_HOLE_COOLDOWN --Change to cooldown duration if it has a cooldown otherwise -1
	
	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, spell.type.transformID)
	Gear.AddStaticInstance(model, spell.innerTransformID)

	function spell:Cast(entity, chargetime) end
	function spell:Charge(dt) ZoomInCamera() end

	function spell:ChargeCast(entity)
		if self.cooldown < 0 then
			ZoomOutCamera()
			local pos = Transform.GetPosition(entity.transformID)
			local dir = Transform.GetLookAt(entity.transformID)
			pos.x = pos.x  + 5*dir.x
			pos.y = pos.y  + 5*dir.y
			pos.z = pos.z  + 5*dir.z
			self.type:Cast(1, BLACK_HOLE_RADIUS, pos)
			Transform.SetPosition(self.innerTransformID, pos)
			Transform.ActiveControl(self.innerTransformID, true)
			self.damage = BLACK_HOLE_DAMAGE
			self.lastTick = 0
			self.duration = 0
			self.owner = entity
			--entity.moveSpeed = entity.moveSpeed * BLACK_HOLE_CASTER_SLOW --if you want the player to be "unable" to walk while casting black hole
			self.alive = true
			self.cooldown = BLACK_HOLE_COOLDOWN
			for i = 1, #BLACK_HOLE_CAST_SFX do
				if self.soundID[i] ~= -1 then
					Sound.Fade(self.soundID[i], 1)
				end
				self.soundID[i] = Sound.Play(BLACK_HOLE_CAST_SFX[i], 7, pos)
				--Sound.SetVolume(self.soundID[i], 0.1)
			end
		end
	end

	function spell:Update(dt)
		local pos = Transform.GetPosition(player.transformID)
		self.cooldown = self.cooldown - dt
		if self.alive then
			self.duration = self.duration + dt
			hits = self.type:Update(dt)
			local scale = Transform.GetScale(self.type.transformID)
			scale = scale + BLACK_HOLE_WHOBLE_FACTOR * math.cos(((BLACK_HOLE_COOLDOWN -self.cooldown)/BLACK_HOLE_WHOBLE_INTERVAL)*3.14)
			Transform.SetScaleNonUniform(self.type.transformID, scale, 0.01, scale) 
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
						local effect = effectTable[self.effects[i]]()
						hits[index]:Apply(effect)
						self.hits[hits[index].transformID] = true
					end
					hits[index]:Hurt(self.damage, self.owner)
				end
			end

			if self.duration > BLACK_HOLE_DURATION then
				self:Kill()
			end
		end
		if self.isActiveSpell then self:Aim() end
	end

	function spell:Kill()
		for i = 1, #BLACK_HOLE_CAST_SFX do
			Sound.Fade(self.soundID[i], 1)
			self.soundID[i] = -1
		end
		self.type:Kill()
		self.hits = {}
		--self.owner.moveSpeed = self.owner.moveSpeed / BLACK_HOLE_CASTER_SLOW --if you want the player to be "unable" to walk while casting black hole
		self.alive = false
		Transform.ActiveControl(self.innerTransformID, false)
	
	end
	
	function spell:Aim()	
		local lookAt = Transform.GetLookAt(self.caster)
		local aPos = Transform.GetPosition(self.caster)
		self.aimPos = {x = aPos.x + lookAt.x *10, y = aPos.y + lookAt.y *10, z = aPos.z + lookAt.z *10 }
		player.aim:SetPos(self.aimPos)
	end

	function spell:Change()
		self.isActiveSpell = not self.isActiveSpell
		Transform.ActiveControl(self.owner.aim.transformID, self.isActiveSpell)
	end

	function spell:GetEffect()
		return self.effects[1]
	end
	function spell:Combine(effect, damage)
		if #self.effects < 2 then
			self.damage = self.damage + 2 * damage
			table.insert(self.effects, effect)
		end
	end

	return spell
end