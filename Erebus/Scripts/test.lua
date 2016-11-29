
player = {}

function Init()
	player.trans = Transform.Bind()
end

function ChangePlayer()
	
end

function Update()
	
end

buttons = {}
function Controls()
	forward, left, up = 0, 0, 0
	for i = 1, #buttons do
		if buttons[i] == 0 then	forward = 1 end
		if buttons[i] == 1 then	forward = -1 end
		if buttons[i] == 2 then	left = 1 end
		if buttons[i] == 3 then left = -1 end
		if buttons[i] == 4 then up = 1 end
		if buttons[i] == 5 then up = -1 end
		if buttons[i] == 6 then ChangePlayer() end
	end	
	Transform.Move(player.trans, forward, up, left)
	buttons = {}
end
