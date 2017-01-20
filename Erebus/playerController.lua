function CreatePlayerController(animation)
	local controller = {}
	controller.currentState = 1
	controller.animation = animation
	print("DERP")

	-- : == syntactic sugar to send self as a variable into the function
	-- . == says that you send self into the function, although a name has 
	--to be set in the parametre
	function controller:StateSwitch(inState, inController)
		self.currentState = inController
		if self.currentState == 0 then
			self.RunningState(inState)

		end
		if self.currentState == 2 then
			--doStateStuff
		end
	end
	
	function controller:RunningState(state)
		
	end
	function controller:AttackState()
	
	end

	return controller
end

print("DOING CONTROLLER FIEL")