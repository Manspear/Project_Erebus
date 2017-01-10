local CONSOLE_MAX_MESSAGES = 4
local CONSOLE_MAX_PREVS = 3
local CONSOLE_CARET_BLINK_DELAY = 0.4
console = {}

function LoadConsole()
	console.messages = {}
	console.messageColors = {}
	for i=1, CONSOLE_MAX_MESSAGES do
		console.messages[i] = ""
		console.messageColors[i] = { 1, 1, 1, 1 }
	end

	console.prevIndex = 0
	console.prevs = {}
	for i=1, CONSOLE_MAX_PREVS do
		console.prevs[i] = ""
	end

	console.textInput = ""
	console.visible = false
	console.caretIndex = 1
	console.caretBlink = 0.0
	console.caretVisible = false

	console.AddMessage = function(self, message, color)
		for i=1, CONSOLE_MAX_MESSAGES-1 do
			self.messages[i] = self.messages[i+1]
			self.messageColors[i] = self.messageColors[i+1]
		end

		self.messages[CONSOLE_MAX_MESSAGES] = message
		self.messageColors[CONSOLE_MAX_MESSAGES] = color
	end

	console.Clear = function(self)
		for i=1, CONSOLE_MAX_MESSAGES do
			console.messages[i] = ""
			console.messageColors[i] = {1,1,1,1}
		end
	end
end

function UnloadConsole()
end

function UpdateConsole(dt)
	if Inputs.KeyPressed(Keys.Console) then
		console.visible = not console.visible
	end

	if console.visible then
		-- check if the user wants to delete text
		if Inputs.KeyRepeated(Keys.Backspace) then
			console.textInput = console.textInput:sub(0,#console.textInput-1)
		end

		-- run command and add message
		if Inputs.KeyPressed(Keys.Enter) then
			console:AddMessage(console.textInput, {1,1,1,1})

			local chunk = load(console.textInput)
			if chunk then
				local success, errorMsg = pcall(chunk)
				if not success then
					console:AddMessage(errorMsg, {1,0,0,1})
				end
			end

			for i=CONSOLE_MAX_PREVS, 2, -1 do
				console.prevs[i] = console.prevs[i-1]
			end
			console.prevs[1] = console.textInput
			console.prevIndex = 1

			console.textInput = ""
		end

		-- get new text input
		local newText = Inputs.GetTextInput()
		if #newText > 0 then
			console.textInput = console.textInput .. newText
			console.caretIndex = console.caretIndex + #newText
		end

		-- scroll through previous commands
		if Inputs.KeyRepeated(Keys.Up) then
			console.textInput = console.prevs[console.prevIndex+1]
			console.prevIndex = (console.prevIndex+1) % CONSOLE_MAX_PREVS
		elseif Inputs.KeyRepeated(Keys.Down) then
			console.textInput = console.prevs[console.prevIndex+1]
			console.prevIndex = (console.prevIndex-1) % (CONSOLE_MAX_PREVS-1)
		end

		-- draw console messages
		for i=1, CONSOLE_MAX_MESSAGES do
			Gear.Print(console.messages[i], 0, (i-1)*32, console.messageColors[i])
		end

		-- print text input and caret
		Gear.Print(console.textInput, 0, 128)
		if console.caretVisible then
			local subtext = console.textInput:sub(0,console.caretIndex-1)
			local x,y = Gear.GetTextDimensions(subtext)
			Gear.Print("_", x, 128)
		end

		-- blink caret
		if console.caretBlink > 0 then
			console.caretBlink = console.caretBlink - dt
		else
			console.caretVisible = not console.caretVisible
			console.caretBlink = CONSOLE_CARET_BLINK_DELAY
		end
	end
end

return { Load = LoadConsole, Unload = UnloadConsole, Update = UpdateConsole }