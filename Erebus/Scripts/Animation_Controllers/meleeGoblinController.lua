--DESCRIPTION OF THE USAGE OF AN ANIMATION controller
--[[
	GENERAL:
	The purpose of an animation controller is to divide the complexities of animation and game logic in 
	the code, making it easier to read, and therefore easier to manage. 
	You could say that an animation controller "watches and reacts" to gameplay variables.

	IMPORTANT VARIABLES:
	The "CreateXController" - function takes one reference to the creature-entity holding the gameplay 
	variables. When the creature's behaviour gets changed by gameplay variables, this animation controller 
	changes the played animations based on gameplay variables stored in the referenced entity. This 
	animation controller stores the relevant gamestate - variables of the previous frame through the use of "oldWatch", and it has a 
	reference to the current creature-entity through the "watch". 
	The number of animationStates of the controller must be equal to the amount of animation segments
	of the creature.

	USAGE:
	To utilize this animation controller you first have to make an instance of it in the creature-entity 
	it belongs to's table. Then you have to call CreateXController(entity) with that instance.
	After you've done that you update the animations once per frame by calling the controller's 
	AnimationUpdate(dt)-function, preferably after the creature-entity's gameplay variables are 
	calculated.

	NOTES:
	For each new creature with unique animations you create, you have to make a new Controller. 
	That controller must also follow the same principles as described above. 
]]

function CreateEnemyController(enemy)
	local controller = {}
	controller.animation = Animation.Bind()
	controller.animationState1 = 0
	controller.animationState2 = 0
	controller.animationState3 = 0
	controller.watch = enemy
	controller.oldWatch = {}


	controller.quickBlendFrom = 0
	controller.quickBlendTo = 7
	controller.quickBlendSegment = 2


	controller.currentAnimation = 1

	local animationTransitionTimes = {}
	for i = 1, 9 do
		animationTransitionTimes[i] = {}
		for j = 1, 9 do
			animationTransitionTimes[i][j] = 0.1
		end
	end

	controller.animation:SetTransitionTimes(animationTransitionTimes)

	controller.animation:SetAnimationSegments(2);
	-- : == syntactic sugar to send self as a variable into the function
	-- . == says that you send self into the function, although a name has 
	--to be set in the parametre

	function controller:AnimationUpdate(dt,enemy)
		--self.animation:Update(dt, 2, 0)
		--self.animation:UpdateShaderMatrices()

		self.animation:SetSegmentState( self.currentAnimation, 0 )
	end

	function controller:AnimationHurt(dt,enemy)
		self.animation:Update(dt, 0, 1)
	end


	function controller:copyWatch()
		self.oldWatch.health = self.watch.health
	end

	function controller:doAttack()
		self.currentAnimation = 7
	end

	function controller:doWalk()	
		self.currentAnimation = 1
	end

	function controller:doNothing()
		self.currentAnimation = 0
	end
		
	function controller:doStartLeap()
		self.currentAnimation = 4
	end
	function controller:doLeap()
		self.currentAnimation = 5
	end
	function controller:doEndLeap()
		self.currentAnimation = 6
	end
	--Use this to initialize oldWatch
	controller:copyWatch()

	return controller
end

function DestroyEnemyController(controller)
	Animation.Unbind(controller.animation)
	controller = nil
end