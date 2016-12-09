STATE_ZOOMED_IN, STATE_ZOOMED_OUT, STATE_ZOOMING_IN, STATE_ZOOMING_OUT = 0, 1, 2, 3
camera = {distance = 10, angle = 0, xOffset = 0, yOffset = 2, state = STATE_ZOOM_OUT}

timeSinceShot = 0
DelayZoomOut = 3


ZoomedOut = {distance = 12, angle = 3.14/20, time =1.5, timeSpent = 0, xOffset = 0, yOffset = 2}
ZoomedIn = {distance = 5.5, angle = 0, time = 0.2, timeSpent = 0, xOffset = 2, yOffset = 2}
StartState = {distance = 0, angle = 0, xOffset = 0, yOffset = 0}

function interpolate(a, b, factor) 
	return a + factor*(b-a)
end

function UpdateCamera(dt)
	if player.testCamera == true then 
		timeSinceShot = 0
		if camera.state ~= STATE_ZOOMED_IN and camera.state ~= STATE_ZOOMING_IN then --start zooming in if not already zoomed in
			camera.state = STATE_ZOOMING_IN

			StartState.distance = camera.distance
			StartState.angle = camera.angle
			StartState.xOffset = camera.xOffset
			StartState.yOffset = camera.yOffset
			
			ZoomedIn.timeSpent = 0
		end
	end
	timeSinceShot = timeSinceShot + dt
	if timeSinceShot > DelayZoomOut and camera.state ~= STATE_ZOOMED_OUT and camera.state ~= STATE_ZOOMING_OUT then --start zooming out if not already zoomed out, triggers when player have not shot recently
		ZoomedOut.timeSpent = 0

		StartState.distance = camera.distance
		StartState.angle = camera.angle
		StartState.xOffset = camera.xOffset
		StartState.yOffset = camera.yOffset

		camera.state = STATE_ZOOMING_OUT
	end 

	if camera.state == STATE_ZOOMING_OUT then
		ZoomedOut.timeSpent = ZoomedOut.timeSpent + dt

		--i vilket läge övergången är i
		local factor = math.sin((math.min(ZoomedOut.timeSpent, ZoomedOut.time)/ZoomedOut.time)*3.14 - 3.14/2)/2 + 0.5	--ciruklär (mjukare, men dyrare)
		--local factor = math.min(ZoomedOut.timeSpent, ZoomedOut.time)/ZoomedOut.time										--linjär

		--Linjär interpolation mellan vart kameran var när övergången började och vart den ska vara när övergången är klar
		camera.distance = interpolate(	StartState.distance,	ZoomedOut.distance, factor	)
		camera.angle = interpolate(		StartState.angle,		ZoomedOut.angle,	factor	)
		camera.xOffset = interpolate(		StartState.xOffset,		ZoomedOut.xOffset,	factor	)
		camera.yOffset = interpolate(		StartState.yOffset,		ZoomedOut.yOffset,	factor	) 

		if ZoomedOut.timeSpent > ZoomedOut.time then --if transition complete -> change state to reflect that
			camera.state = STATE_ZOOMED_OUT
		end
	elseif camera.state == STATE_ZOOMING_IN then
		ZoomedIn.timeSpent =  ZoomedIn.timeSpent + dt 
		
		--i vilket läge övergången är i
		local factor = math.sin((math.min(ZoomedIn.timeSpent, ZoomedIn.time)/ZoomedIn.time)*3.14 - 3.14/2)/2 + 0.5	--cirkulär (mjukare, men dyrare)
		--local factor = math.min(ZoomedIn.timeSpent, ZoomedIn.time)/ZoomedIn.time										--linjär

		--interpolation mellan vart kameran var när övergången började och vart den ska vara när övergången är klar, factor kan vara linjär eller cirkulär :)
		camera.distance = interpolate(	StartState.distance,	ZoomedIn.distance,	factor	)
		camera.angle = interpolate(		StartState.angle,		ZoomedIn.angle,		factor	)
		camera.xOffset = interpolate(		StartState.xOffset,		ZoomedIn.xOffset,	factor	)
		camera.yOffset = interpolate(		StartState.yOffset,		ZoomedIn.yOffset,	factor	)

		if ZoomedIn.timeSpent > ZoomedIn.time then --if transition complete -> change state to reflect that
			camera.state = STATE_ZOOMED_IN
		end
	end
	
	Camera.Follow(player.transformID, camera.yOffset, camera.xOffset, camera.distance, camera.angle)
end



return { Update = UpdateCamera }