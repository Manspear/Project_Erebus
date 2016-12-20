local CONSOLE_MAX_MESSAGES = 4
local CONSOLE_MAX_PREVS = 3
local CONSOLE_CARET_BLINK_DELAY = 0.4
console = {}

function LoadConsole()
	console.messages = {}
	for i=1, CONSOLE_MAX_MESSAGES do
		console.messages[i] = ""
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

	console.AddMessage = function(self, message)
		for i=1, CONSOLE_MAX_MESSAGES-1 do
			self.messages[i] = self.messages[i+1]
		end

		self.messages[CONSOLE_MAX_MESSAGES] = message
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
			console:AddMessage(console.textInput)

			local chunk = load(console.textInput)
			if chunk then
				local success, errorMsg = pcall(chunk)
				if not success then
					console:AddMessage(errorMsg)
				end
			end

			for i=CONSOLE_MAX_PREVS, 2, -1 do
				console.prevs[i] = console.prevs[i-1]
			end
			console.prevs[1] = console.textInput

			console.textInput = ""
		end

		-- get new text input
		local newText = Inputs.GetTextInput()
		if #newText > 0 then
			--console.textInput = console.textInput .. newText
			console.textInput = string.format( "%s%s%s", console.textInput:sub(0,console.caretIndex), newText, console.textInput:sub(console.caretIndex+1))
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

		-- scroll through text input
		if Inputs.KeyRepeated(Keys.Left) then
			console.caretIndex = console.caretIndex - 1
			if console.caretIndex < 1 then
				console.caretIndex = 1
			end
		elseif Inputs.KeyRepeated(Keys.Right) then
			console.caretIndex = console.caretIndex + 1
			if console.caretIndex > #console.textInput then
				console.caretIndex = #console.textInput
			end
		end

		-- draw console messages
		for i=1, CONSOLE_MAX_MESSAGES do
			Gear.Print(console.messages[i], 0, (i-1)*32)
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