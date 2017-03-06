
function CreateBossController(boss)
	local controller = {}
	controller.animation = Animation.Bind()
	controller.animationState1 = 1
	controller.watch = boss
	controller.oldWatch = {}

	local animationTransitionTimes = {}
	for i = 1, 9 do
		animationTransitionTimes[i] = {}
		for j = 1, 9 do
			animationTransitionTimes[i][j] = 0.3
		end
	end
	controller.animation:SetTransitionTimes(animationTransitionTimes)

	controller.animation:SetAnimationSegments(1);

	function controller:AnimationUpdate(dt, Network)
		
		self.animationState1 = 1
		
		self.animation:SetSegmentState( self.animationState1, 0)
	end

	return controller
end