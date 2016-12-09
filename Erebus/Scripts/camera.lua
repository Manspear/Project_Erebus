STATE_ZOOMED_IN, STATE_ZOOMED_OUT, STATE_ZOOMING_IN, STATE_ZOOMING_OUT = 0, 1, 2, 3
camera = {distance = 10, angle = 0, xOffset = 0, yOffset = 2, state = STATE_ZOOM_OUT}

timeSinceShot = 0
DelayZoomOut = 3


ZoomedOut = {distance = 12, angle = 3.14/16, time =1.5, timeSpent = 0, xOffset = 0, yOffset = 2}
ZoomedIn = {distance = 5.5, angle = 0, time = 0.2, timeSpent = 0, xOffset = 2, yOffset = 2}
StartState = {distance = 0, angle = 0, xOffset = 0}



function UpdateCamera(dt)
	if player.testCamera == true then 
		timeSinceShot = 0
		if camera.state ~= STATE_ZOOMED_IN and camera.state ~= STATE_ZOOMING_IN then --start zooming in if not already zoomed in
			camera.state = STATE_ZOOMING_IN
			ZoomedIn.timeSpent = 0
		end
	end
	timeSinceShot = timeSinceShot + dt
	if timeSinceShot > DelayZoomOut and camera.state ~= STATE_ZOOMED_OUT and camera.state ~= STATE_ZOOMING_OUT then --start zooming out if not already zoomed out, triggers when player have not shot recently
		ZoomedOut.timeSpent = 0
		camera.state = STATE_ZOOMING_OUT
	end 

	if camera.state == STATE_ZOOMING_OUT then
		ZoomedOut.timeSpent = ZoomedOut.timeSpent + dt
		local factor = math.min(ZoomedOut.timeSpent, ZoomedOut.time)/ZoomedOut.time
		camera.distance = ZoomedIn.distance + factor*(ZoomedOut.distance - ZoomedIn.distance)
		camera.angle = ZoomedIn.angle + factor*(ZoomedOut.angle - ZoomedIn.angle)
		camera.xOffset = ZoomedIn.xOffset + factor*(ZoomedOut.xOffset - ZoomedIn.xOffset)
		camera.yOffset = ZoomedIn.yOffset + factor*(ZoomedOut.yOffset - ZoomedIn.yOffset)
		if ZoomedOut.timeSpent > ZoomedOut.time then --if transition complete -> change state to reflect that
			camera.state = STATE_ZOOMED_OUT
		end
	elseif camera.state == STATE_ZOOMING_IN then
		ZoomedIn.timeSpent =  ZoomedIn.timeSpent + dt 
		local factor = math.min(ZoomedIn.timeSpent, ZoomedIn.time)/ZoomedIn.time
		camera.distance = ZoomedOut.distance + factor*(ZoomedIn.distance - ZoomedOut.distance)
		camera.angle = ZoomedOut.angle + factor*(ZoomedIn.angle - ZoomedOut.angle)
		camera.xOffset = ZoomedOut.xOffset + factor*(ZoomedIn.xOffset - ZoomedOut.xOffset)
		camera.yOffset = ZoomedOut.yOffset + factor*(ZoomedIn.yOffset - ZoomedOut.yOffset)
		if ZoomedIn.timeSpent > ZoomedIn.time then --if transition complete -> change state to reflect that
			camera.state = STATE_ZOOMED_IN
		end
	end
	Camera.Follow(player.transformID, camera.yOffset, camera.xOffset, camera.distance, camera.angle)
end



return { Update = UpdateCamera }