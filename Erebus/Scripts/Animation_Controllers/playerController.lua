function CreatePlayerController(animation, player)
	local controller = {}
	controller.currentState = 1
	controller.animation = animation
	controller.animationState1 = 0
	controller.animationState2 = 0
	controller.animationState3 = 0
	controller.watch = player
	controller.oldWatch = {}

	controller.isDamagedTimerStart = false
	controller.damagedTimer = 0
	controller.damagedMaxTime = 2

	controller.jumpTimerStart = false
	controller.jumpTimer = 0
	controller.jumpTimerThreshhold = 0.3

	-- : == syntactic sugar to send self as a variable into the function
	-- . == says that you send self into the function, although a name has 
	--to be set in the parametre

	function controller:AnimationUpdate(dt)
		
		--you cannot run if you jump
		if self.watch.canJump == true then
			--if you don't move you're Idle
			if self.watch.forward == 0 and self.watch.left == 0 then
				self:IdleState(dt)
			--else running
			elseif self.watch.forward ~= 0 or self.watch ~= left then
				self:RunningState(dt)
			end
		end

		if self.oldWatch.health ~= self.watch.health or self.isDamagedTimerStart == true 
		then
			self:DamagedState(dt)
		end

		if self.oldWatch.canJump ~= self.watch.canJump or self.watch.verticalSpeed ~= 0 then
			self:JumpState(dt)
		end

		if self.watch.spamCasting == true then
			self:AttackState(dt)
		end

		self.animation:Update(dt, self.animationState1, 0)
		self.animation:Update(dt, self.animationState2, 1)
		--self.animation:Update(dt, self.animationState3, 2)

		self.animation:UpdateShaderMatrices()

		self:copyWatch()
	end
	
	function controller:RunningState(dt)
		--oldWatch remembers old stuff. Used sometime maybe.

		--if walking left forward
		if self.watch.left > 0 and self.watch.forward > 0 then
			self.animationState1 = 10
			self.animationState2 = 18
		end
		--if walking left back
		if self.watch.left > 0 and self.watch.forward < 0 then
			self.animationState1 = 13
			self.animationState2 = 19
		end
		--if walking left
		if self.watch.left > 0 and self.watch.forward == 0 then
			self.animationState1 = 11
			self.animationState2 = 18
		end
		--if walking forward
		if self.watch.left == 0 and self.watch.forward > 0 then
			self.animationState1 = 9
			self.animationState2 = 17
		end
		--if walking backward
		if self.watch.left == 0 and self.watch.forward < 0 then
			self.animationState1 = 13
			self.animationState2 = 19
		end
		--if walking right forward
		if self.watch.left < 0 and self.watch.forward > 0 then
			self.animationState1 = 16
			self.animationState2 = 20
		end
		--if walking right back
		if self.watch.left < 0 and self.watch.forward < 0 then
			self.animationState1 = 13
			self.animationState2 = 20
		end
		--if walking right
		if self.watch.left < 0 and self.watch.forward == 0 then
			self.animationState1 = 15
			self.animationState2 = 20
		end
	end

	function controller:AttackState(dt)
		
	end

	function controller:IdleState(dt)
		self.animationState1 = 1
		self.animationState2 = 0
	end

	function controller:DamagedState(dt)
		if self.isDamagedTimerStart == false then
			self.isDamagedTimerStart = true
		end
		if self.isDamagedTimerStart == true then
			res = self.animation:QuickBlend(dt, 0, 7, self.damagedMaxTime, 2);
			if res == true then
				self.isDamagedTimerStart = false
			end
		end
	end

	function controller:JumpState(dt)
		--if jumped
		if self.oldWatch.canJump == true and self.watch.canJump == false then
			self.animationState1 = 33
			self.animationState2 = 0
			self.jumpTimerStart = true
		end
		
		--if landed
		if self.oldWatch.canJump == false and self.watch.canJump == true then
			self.animationState1 = 36
			self.animationState2 = 0
		end

		if self.jumpTimerStart == true then
			self.jumpTimer = self.jumpTimer + dt
		end

		if self.jumpTimer >= self.jumpTimerThreshhold then
			self.jumpTimer = 0
			self.jumpTimerStart = false
		end

		if self.jumpTimerStart == false then
			self:AirState(dt)
		end

	end

	function controller:AirState(dt)
		--if falling
		if self.watch.verticalSpeed <= 0 and self.watch.canJump == false then
			self.animationState1 = 35
			self.animationState2 = 0
		end
		--if ascending
		if self.watch.verticalSpeed > 0 and self.watch.canJump == false then
			self.animationState1 = 34
			self.animationState2 = 0
		end
	end

	function controller:copyWatch()
		self.oldWatch.health = self.watch.health
		self.oldWatch.canJump = self.watch.canJump
		self.oldWatch.verticalSpeed = self.watch.verticalSpeed
		self.oldWatch.forward = self.watch.forward
		self.oldWatch.left = self.watch.left 
		self.oldWatch.spamCasting = self.watch.spamCasting
		self.oldWatch.charging = self.watch.charging
	end

	--Use this to initialize oldWatch
	controller:copyWatch()

	return controller
end