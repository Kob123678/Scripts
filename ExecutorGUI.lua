-- Instances:

local Haxx = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Panel = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local Execute = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Clear = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

--Properties:

Haxx.Name = "Haxx"
Haxx.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Haxx.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Haxx
Main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.040605586, 0, 0.100930981, 0)
Main.Size = UDim2.new(0, 376, 0, 211)

UICorner.Parent = Main

Panel.Name = "Panel"
Panel.Parent = Main
Panel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Panel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Panel.BorderSizePixel = 0
Panel.Size = UDim2.new(0, 376, 0, 28)

UICorner_2.Parent = Panel

TextLabel.Parent = Panel
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.212727249, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 216, 0, 28)
TextLabel.Font = Enum.Font.Kalam
TextLabel.Text = "Lachy Executor"
TextLabel.TextColor3 = Color3.fromRGB(170, 170, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.026626505, 0, 0.185690999, 0)
TextBox.Size = UDim2.new(0, 354, 0, 132)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "print(\"Hello World!\")"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

UICorner_3.Parent = TextBox

Execute.Name = "Execute"
Execute.Parent = Main
Execute.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.0265957452, 0, 0.843710244, 0)
Execute.Size = UDim2.new(0, 69, 0, 24)
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 14.000

UICorner_4.Parent = Execute

Clear.Name = "Clear"
Clear.Parent = Main
Clear.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.228723407, 0, 0.843710244, 0)
Clear.Size = UDim2.new(0, 69, 0, 24)
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 14.000

UICorner_5.Parent = Clear

-- Scripts:

local function AMSXK_fake_script() -- TextBox.LocalScript 
	local script = Instance.new('LocalScript', TextBox)

	local TextBox = script.Parent -- Replace with the actual TextBox
	
	TextBox.Focused:Connect(function(focused)
		if focused then
			TextBox.Text = TextBox.Text -- Prevent default behavior of clearing text
		end
	end)
	
end
coroutine.wrap(AMSXK_fake_script)()
local function RTSG_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		loadstring(textbox.Text)() -- Execute Script From TextBox
	end)
end
coroutine.wrap(RTSG_fake_script)()
local function TQFBEHK_fake_script() -- Clear.LocalScript 
	local script = Instance.new('LocalScript', Clear)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		textbox.Text = "" -- Make Textbox Empty
	end)
end
coroutine.wrap(TQFBEHK_fake_script)()
local function TMOYD_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	frame = script.Parent
	frame.Draggable = true
	frame.Selectable = true
	frame.Active = true
end
coroutine.wrap(TMOYD_fake_script)()
