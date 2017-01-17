function CreatePlayerController(animation, player)
	local controller = {}
	controller.currentState = 1
	controller.animation = animation
	controller.animationState1 = 0
	controller.animationState2 = 0
	controller.watch = player
	controller.oldWatch = {}
	poop
	print(poop)

	-- : == syntactic sugar to send self as a variable into the function
	-- . == says that you send self into the function, although a name has 
	--to be set in the parametre
	function controller:StateSwitch(inState, inController, dt)
		self.currentState = inController
		if self.currentState == 1 then
			self:RunningState(inState, dt)
		end
		if self.currentState == 2 then
			--doStateStuff
		end
	end

	function controller:AnimationUpdate(dt)
		--if everything is the same
		if	self.oldWatch.right == self.watch.right and
			self.oldWatch.forward == self.watch.forward and
			
		   self.oldWatch.health == self.watch.health and
		   self.oldWatch.canJump == self.watch.canJump and
		   self.oldWatch.spamCasting == self.watch.spamCasting and
		   self.oldWatch.charging == self.watch.charging 
		   
		   then
			self.animation:Update(dt, self.animationState1, 0)
			self.animation:Update(dt, self.animationState2, 1)
		
			else 
				self.animationState1 = 9
				self.animationState2 = 17

				if self.watch.forward == 0 then
				
					self.animationState1 = 2
					self.animationState2 = 0
				end

				self.animation:Update(dt, self.animationState1, 0)
				self.animation:Update(dt, self.animationState2, 1)
			end

			--self.animation:Update(dt, 9, 0)
			--self.animation:Update(dt, 17, 1)
		--used last
		self:copyWatch()
	end
	
	function controller:RunningState(dt)
		--oldWatch remembers old stuff. Used sometime maybe.

		--if walking left forward
		if self.watch.left > 0 and self.watch.forward > 0 then
			
		end
		--if walking left back
		if self.watch.left > 0 and self.watch.forward < 0 then

		end
		--if walking left
		if self.watch.left > 0 and self.watch.forward == 0 then

		end
		--if walking forward
		if self.watch.left == 0 and self.watch.forward > 0 then

		end
		--if walking backward
		if self.watch.left == 0 and self.watch.forward < 0 then

		end
		--if walking right forward
		if self.watch.left < 0 and self.watch.forward > 0 then
			
		end
		--if walking right back
		if self.watch.left < 0 and self.watch.forward < 0 then

		end
		--if walking right
		if self.watch.left < 0 and self.watch.forward == 0 then

		end

		--Since I know that this is a  running state, both the torso 
		--and legs are supposed to be running in the same direction

		--if torso
		if inState >= 17 and inState <= 20 then
			self.animation:Update(dt, inState, 0)
		end 
		--if legs
		if inState >= 9 and inState <= 16 then
			self.animation:Update(dt, inState, 1)
		end
		
	end

	function controller:copyWatch()
		self.oldWatch.health = self.watch.health
		self.oldWatch.canJump = self.watch.canJump
		self.oldWatch.forward = self.watch.forward
		self.oldWatch.left = self.watch.left 
		self.oldWatch.spamCasting = self.watch.spamCasting
		self.oldWatch.charging = self.watch.charging
	end

	--Use this to initialize oldWatch
	controller:copyWatch()

	return controller
end