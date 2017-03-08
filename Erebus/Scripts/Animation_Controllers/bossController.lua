
TIMELASER_HITTIME = 1.66
CHRONOORB_HITTIME = 1.22
TIMEORBWAVE_HITTIME = 2.5

TIMEORBWAVE_ANIMATIONTIME = 5
CHRONOORB_ANIMATIONTIME = 2.5
TIMELASER_ANIMATIONTIME = 2.5
DYING_TIME_EFTER_JA = 5.0

COMBATSTART_ANIMATIONTIME = 5

function CreateBossController(boss)
	local controller = {}
	controller.animation = Animation.Bind()
	controller.oldAnimationState1 = 1
	controller.animationState1 = 1
	controller.watch = boss
	controller.oldWatch = {}

	--When boss is first engaged in combat
	controller.combatStartTimerStart = false
	controller.combatStartTimerThreshhold = COMBATSTART_ANIMATIONTIME
	controller.combatStartTimer = 0

	--When timeorbwave is cast 
	controller.timeOrbWaveTimerThreshhold = TIMEORBWAVE_ANIMATIONTIME
	controller.timeOrbWaveTimer = 0

	--When chronoorb is cast
	controller.chronoOrbTimerThreshhold = CHRONOORB_ANIMATIONTIME
	controller.chronoOrbTimer = 0

	--When tripleLaser is cast
	controller.timeLaserTimerThreshhold = TIMELASER_ANIMATIONTIME --the animation has keyframes for 5 seconds, but attack ends at 2.5
	controller.timeLaserTimer = 0

	--When boss is dead
	controller.deathTimerThreshhold = DYING_TIME_EFTER_JA
	controller.deathTimer = 0

	controller.firstTimePlay = true

	local animationTransitionTimes = {}
	for i = 1, 9 do
		animationTransitionTimes[i] = {}
		for j = 1, 9 do
			animationTransitionTimes[i][j] = 0.1
		end
	end
	controller.animation:SetTransitionTimes(animationTransitionTimes)

	controller.animation:SetAnimationSegments(1);

	function controller:AnimationUpdate(dt, Network)
		if self.watch.combatStarted == false then 
			self.animationState1 = 1
		elseif self.watch.combatStarted and self.oldWatch.combatStarted == false or self.combatStartTimerStart then 
			self.combatStartTimer = self.combatStartTimer + dt
			if self.combatStartTimer < self.combatStartTimerThreshhold then 
				self.animationState1 = 2
				self.combatStartTimerStart = true
			else
				self.combatStartTimerStart = false
				self.combatStartTimer = 0
			end
		elseif self.watch.castSpells[TIMEORBWAVE_INDEX] then 
			self.timeOrbWaveTimer = self.timeOrbWaveTimer + dt
			if self.timeOrbWaveTimer < self.timeOrbWaveTimerThreshhold then 
				self.animationState1 = 4
			else 
				self.watch.castSpells[TIMEORBWAVE_INDEX] = false
				self.timeOrbWaveTimer = 0
			end
		elseif self.watch.castSpells[CHRONOBALL_INDEX] then 
			self.chronoOrbTimer = self.chronoOrbTimer + dt
			if self.chronoOrbTimer < self.chronoOrbTimerThreshhold then 
				self.animationState1 = 5
			else 
				self.watch.castSpells[CHRONOBALL_INDEX] = false
				self.chronoOrbTimer = 0
			end
		elseif self.watch.castSpells[TIMELASER_INDEX] then 
			self.timeLaserTimer = self.timeLaserTimer + dt
			if self.timeLaserTimer < self.timeLaserTimerThreshhold then 
				self.animationState1 = 6
			else
				self.watch.castSpells[TIMELASER_INDEX] = false
				self.timeLaserTimer = 0
			end
		else
			
			--He's combatIdle
			self.animationState1 = 3
		end

		if self.watch.health <= 0 then 
			self.deathTimer = self.deathTimer + dt
			if self.deathTimer < self.deathTimerThreshhold then 
				self.animationState1 = 7
			else 
				--Play the nonexistent "stayDead"-animation
				self.animation:StopAnimationUpdating(true)
			end
		end

		if self.firstTimePlay then 
			self.animation:ResetSegmentAnimationClock(0)
			self.firstTimePlay = false
		elseif self.animationState1 ~= self.oldAnimationState1 then 
			self.animation:ResetSegmentAnimationClock(0)
		end

		self.oldAnimationState1 = self.animationState1

		self.animation:SetSegmentState( self.animationState1, 0)

		self:copyWatch()
	end

	function controller:copyWatch()
		self.oldWatch.combatStarted = self.watch.combatStarted
	end

	return controller
end