


player = {}

function Foo()
	player.trans = Transform.New() 
end


buttons = {}
function Controls()
	forward, left = 0, 0
	for i = 1, #buttons do
		if buttons[i] == 0 then	forward = 1 end
		if buttons[i] == 1 then	forward = -1 end
		if buttons[i] == 2 then	left = 1 end
		if buttons[i] == 3 then left = -1 end
	end	
	player.trans:Move(forward, left)
	buttons = {}
end
