--DESCRIPTION OF THE USAGE OF AN ANIMATION controller
--	GENERAL:
--	The purpose of an animation controller is to divide the complexities of animation and game logic in 
--	the code, making it easier to read, and therefore easier to manage. 
--	You could say that an animation controller "watches and reacts" to gameplay variables.
--
--	IMPORTANT VARIABLES:
--	The "CreateXController" - function takes one reference to the creature-entity holding the gameplay 
--	variables. When the creature's behaviour gets changed by gameplay variables, this animation controller 
--	changes the played animations based on gameplay variables stored in the referenced entity. This 
--	animation controller stores the relevant gamestate - variables of the previous frame through the use of "oldWatch", and it has a 
--	reference to the current creature-entity through the "watch". 
--	The number of animationStates of the controller must be equal to the amount of animation segments
--	of the creature.
--
--	USAGE:
--	To utilize this animation controller you first have to make an instance of it in the creature-entity 
--	it belongs to's table. Then you have to call CreateXController(entity) with that instance.
--	After you've done that you update the animations once per frame by calling the controller's 
--	AnimationUpdate(dt)-function, preferably after the creature-entity's gameplay variables are 
--	calculated.
--
--	NOTES:
--	For each new creature with unique animations you create, you have to make a new Controller. 
--	That controller must also follow the same principles as described above. 
--

function CreatePlayerController(player)
	local controller = {}
	controller.currentState = 1
	controller.animation = Animation.Bind()
	controller.animationState1 = 0
	controller.animationState2 = 0
	controller.animationState3 = 0
	controller.watch = player
	controller.oldWatch = {}

	controller.damagedMaxTime = 0.5

	controller.dyingTimer = 1

	controller.quickBlendFrom = 0
	controller.quickBlendTo = 4
	controller.quickBlendSegment = 2 --0, 1, 2

	--controller.jumpTimerStart = false
	--controller.jumpTimer = 0
	--controller.jumpTimerThreshhold = 4
	
	controller.attackTimerStarted = false
	controller.attackTimer = 0
	controller.attackTimerThreshhold = SUNRAY_DURATION

	controller.deathTimerStarted = false
	controller.deathTimer = 0
	controller.deathTimerThreshhold = 0.5

	controller.chargeTimerStart = false
	controller.chargeTimer = 0
	controller.chargeMaxTime = SUNRAY_DURATION + SUNRAY_STARTUPTIME + SUNRAY_STARTUPTIMELVL2 + 0.1 -- the length of the chargeRelease-animation

	local animationTransitionTimes = {}
	for i = 1, 40 do
		animationTransitionTimes[i] = {}
		for j = 1, 40 do
			animationTransitionTimes[i][j] = 0.3
		end
	end

	controller.animation:SetTransitionTimes(animationTransitionTimes)

	controller.animation:SetAnimationSegments(3);

	-- : == syntactic sugar to send self as a variable into the function
	-- . == says that you send self into the function, although a name has 
	--to be set in the parametre

	function controller:AnimationUpdate(dt, Network)
		--The higher the priority of the action, the longer down in this update function it should be
		--since the prioritized actions override the unprioritized ones

		--if you don't move AND HAVENT ATTACKED you're Idle
		if self.watch.forward == 0 and self.watch.left == 0 and self.attackTimerStarted == false and self.chargeTimerStart == false and self.watch.useRayAttack == false then
			self:IdleState(dt)
		--else running noncombat
		elseif (self.watch.forward ~= 0 or self.watch.left ~= 0) and self.attackTimerStarted == false then
			self:RunningState(dt)
		elseif (self.watch.forward ~= 0 or self.watch.left ~= 0) and self.attackTimerStarted == true then
			self:CombatRunningState(dt)
		--else legs stand still
		else
			self.animationState1 = 9
			self.animationState2 = 25
		end

		if self.oldWatch.health ~= self.watch.health or self.isDamagedTimerStart == true 
		then
			self.animation:SetQuickBlend(self.quickBlendFrom, self.quickBlendTo, self.damagedMaxTime, controller.quickBlendSegment)
			Network.SendQuickBlendPacket(self.quickBlendFrom, self.quickBlendTo, self.damagedMaxTime, controller.quickBlendSegment)
		end

		if self.watch.resetSpamAttack == true then
			self.animation:ResetSegmentAnimationClock(1)
			self.watch.resetSpamAttack = false
		else
			if self.oldWatch.spamCasting == true 
			then
				self:AttackState(dt)
			elseif self.attackTimerStarted == true then
				self:AttackReadyState(dt)
			end
		end

		if self.watch.spamCasting == true and self.oldWatch.spamCasting == false then 
			self.animation:ResetSegmentAnimationClock(1)
		elseif self.watch.spamCasting == false and self.oldWatch.spamCasting == true then 
			self.animation:ResetSegmentPlayTime(1)
		end 

		if self.watch.charging == true then 
			self.animationState2 = 27
			self.attackTimerStarted = true
			self.attackTimer = 0
		end

		if self.watch.charging == false and self.oldWatch.charging == true then
			self.animation:ResetSegmentAnimationClock(1)
			self.chargeTimerStart = true
			self.attackTimerStarted = true
			self.attackTimer = 0
			self.chargeTimer = 0
		end

		if self.chargeTimerStart == true then 
			
			self.chargeTimer = self.chargeTimer + dt
			if self.chargeTimer <= self.chargeMaxTime then
				self.animationState2 = 28
			else
				self.chargeTimer = 0
				self.chargeTimerStart = false
				self.attackTimerStarted = true
			end
		end

		if self.watch.useRayAttack == true and self.watch.spamCasting == true then 
			self.attackTimerStarted = true
			self.animationState2 = 29
		end
		if self.chargeTimerStart == true and self.watch.useRayAttack == true then 
			self.animationState2 = 29
		end

		if self.watch.forward == 0 and self.watch.left == 0 and self.attackTimerStarted == true then
			self.animationState1 = 9
		end

		if self.watch.isAlive == false then
			self.dyingTimer = self.dyingTimer - dt
			if self.dyingTimer < 0 then
				self.animationState1  = 5
				self.animationState2  = 0
			else
				self.animationState1  = 3
				self.animationState2  = 0
			end
		end
		if self.watch.health <= 0 then 
			self:DeathState(dt)
		end

		self.animation:SetSegmentState( self.animationState1, 0 )
		self.animation:SetSegmentState( self.animationState2, 1 )

		self:copyWatch()
	end


	
	function controller:AnimationUpdatePlayer2(dt, animationState1, animationState2)
		--self.animation:Update(dt, animationState1, 0)
		--self.animation:Update(dt, animationState2, 1)

		--self.animation:UpdateShaderMatrices()

		self.animation:SetSegmentState( animationState1, 0 )
		self.animation:SetSegmentState( animationState2, 1 )

		--self:copyWatch()
	end

	function controller:SetQuickBlendPlayer2(quickBlendFrom, quickBlendTo, damagedMaxTime, quickBlendSegment)
		self.animation:SetQuickBlend(quickBlendFrom, quickBlendTo, damagedMaxTime, quickBlendSegment)
	end

	--Handles everything that has to do with death. 
	function controller:DeathState(dt)
		if self.oldWatch.health > 0 then 
			self.deathTimerStarted = true
		end
		if self.deathTimerStarted then 
			self.animationState1 = 3
			self.animationState2 = 0
			self.deathTimer = self.deathTimer + dt
			if self.deathTimer >= self.deathTimerThreshhold then 
				self.deathTimerStarted = false
				self.deathTimer = 0
			end
		elseif self.deathTimerStarted == false then 
			self.animationState1 = 31
			self.animationState2 = 0
		end
	end

	function controller:CombatRunningState(dt)
		--if walking left forward
		if self.watch.left > 0 and self.watch.forward > 0 then
			self.animationState1 = 17
		end
		--if walking left back
		if self.watch.left > 0 and self.watch.forward < 0 then
			self.animationState1 = 19
		end
		--if walking left
		if self.watch.left > 0 and self.watch.forward == 0 then
			self.animationState1 = 18
		end
		--if walking forward
		if self.watch.left == 0 and self.watch.forward > 0 then
			self.animationState1 = 10
		end
		--if walking backward
		if self.watch.left == 0 and self.watch.forward < 0 then
			self.animationState1 = 20
		end
		--if walking right forward
		if self.watch.left < 0 and self.watch.forward > 0 then
			self.animationState1 = 16
		end
		--if walking right back
		if self.watch.left < 0 and self.watch.forward < 0 then
			self.animationState1 = 21
		end
		--if walking right
		if self.watch.left < 0 and self.watch.forward == 0 then
			self.animationState1 = 15
		end

		self.animationState2 = 26
	end

	function controller:RunningState(dt)
		--oldWatch remembers old stuff. Used sometime maybe.

		--if walking left forward
		if self.watch.left > 0 and self.watch.forward > 0 then
			self.animationState1 = 11
		end
		--if walking left back
		if self.watch.left > 0 and self.watch.forward < 0 then
			self.animationState1 = 19
		end
		--if walking left
		if self.watch.left > 0 and self.watch.forward == 0 then
			self.animationState1 = 12
		end
		--if walking forward
		if self.watch.left == 0 and self.watch.forward > 0 then
			self.animationState1 = 10
		end
		--if walking backward
		if self.watch.left == 0 and self.watch.forward < 0 then
			self.animationState1 = 20
		end
		--if walking right forward
		if self.watch.left < 0 and self.watch.forward > 0 then
			self.animationState1 = 14
		end
		--if walking right back
		if self.watch.left < 0 and self.watch.forward < 0 then
			self.animationState1 = 21
		end
		--if walking right
		if self.watch.left < 0 and self.watch.forward == 0 then
			self.animationState1 = 13
		end
		if self.watch.forward < 0 or self.watch.left < 0 then
			self.animationState2 = 23
		elseif self.watch.forward > 0 or self.watch.left > 0 then
			self.animationState2 = 24
		end
	end

	function controller:AttackState(dt)
		--the attack animation is different depending on what the legs do.
		
		self.animationState2 = 30

		self.attackTimerStarted = true
	end

	function controller:AttackReadyState(dt)
		self.attackTimer = self.attackTimer + dt
		if self.attackTimer >= self.attackTimerThreshhold then
			self.attackTimerStarted = false
			self.attackTimer = 0
		end
	end

	function controller:IdleState(dt)
		self.animationState1 = 1
		self.animationState2 = 0
	end

	--function controller:DamagedState(dt)
	--	if self.isDamagedTimerStart == false then
	--		self.isDamagedTimerStart = true
	--	end
	--	if self.isDamagedTimerStart == true then
	--		res = self.animation:QuickBlend(dt, self.quickBlendFrom, self.quickBlendTo, self.damagedMaxTime, controller.quickBlendSegment)
	--		if res == true then
	--			self.isDamagedTimerStart = false
	--		end
	--	end
	--end

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

function DestroyPlayerController(controller)
	--TODO(Niclas): Unbind animation
	controller = nil
end