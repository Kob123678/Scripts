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
local ScriptHub = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local ScriptHubUI = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local AdminScript = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Brookhaven = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local BladeBall = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local PetSim99 = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local ImageButton = Instance.new("ImageButton")
local UICorner_13 = Instance.new("UICorner")

--Properties:

Haxx.Name = "Haxx"
Haxx.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Haxx.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Haxx
Main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.385538965, 0, 0.177237004, 0)
Main.Size = UDim2.new(0, 376, 0, 211)
Main.Visible = false

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

ScriptHub.Name = "ScriptHub"
ScriptHub.Parent = Main
ScriptHub.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScriptHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptHub.BorderSizePixel = 0
ScriptHub.Position = UDim2.new(0.784574449, 0, 0.843710244, 0)
ScriptHub.Size = UDim2.new(0, 69, 0, 24)
ScriptHub.Font = Enum.Font.SourceSans
ScriptHub.Text = "ScriptHub"
ScriptHub.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptHub.TextSize = 14.000

UICorner_6.Parent = ScriptHub

ScriptHubUI.Name = "ScriptHubUI"
ScriptHubUI.Parent = Main
ScriptHubUI.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ScriptHubUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptHubUI.BorderSizePixel = 0
ScriptHubUI.Position = UDim2.new(-9.93444555e-05, 0, 0.132701427, 0)
ScriptHubUI.Size = UDim2.new(0, 376, 0, 182)
ScriptHubUI.Visible = false

UICorner_7.Parent = ScriptHubUI

AdminScript.Name = "AdminScript"
AdminScript.Parent = ScriptHubUI
AdminScript.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
AdminScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
AdminScript.BorderSizePixel = 0
AdminScript.Position = UDim2.new(0.0265957452, 0, 0.0568500571, 0)
AdminScript.Size = UDim2.new(0, 111, 0, 35)
AdminScript.Font = Enum.Font.SourceSans
AdminScript.Text = "Inf Yield"
AdminScript.TextColor3 = Color3.fromRGB(255, 255, 255)
AdminScript.TextSize = 14.000
AdminScript.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

UICorner_8.Parent = AdminScript

Close.Name = "Close"
Close.Parent = ScriptHubUI
Close.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.784574449, 0, 0.820586324, 0)
Close.Size = UDim2.new(0, 69, 0, 24)
Close.Font = Enum.Font.SourceSans
Close.Text = "Close"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000

UICorner_9.Parent = Close

Brookhaven.Name = "Brookhaven"
Brookhaven.Parent = ScriptHubUI
Brookhaven.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Brookhaven.BorderColor3 = Color3.fromRGB(0, 0, 0)
Brookhaven.BorderSizePixel = 0
Brookhaven.Position = UDim2.new(0.356382966, 0, 0.0568500571, 0)
Brookhaven.Size = UDim2.new(0, 110, 0, 35)
Brookhaven.Font = Enum.Font.SourceSans
Brookhaven.Text = "Brookhaven"
Brookhaven.TextColor3 = Color3.fromRGB(255, 255, 255)
Brookhaven.TextSize = 14.000
Brookhaven.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)

UICorner_10.Parent = Brookhaven

BladeBall.Name = "BladeBall"
BladeBall.Parent = ScriptHubUI
BladeBall.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BladeBall.BorderColor3 = Color3.fromRGB(0, 0, 0)
BladeBall.BorderSizePixel = 0
BladeBall.Position = UDim2.new(0.675531924, 0, 0.0568500571, 0)
BladeBall.Size = UDim2.new(0, 110, 0, 35)
BladeBall.Font = Enum.Font.SourceSans
BladeBall.Text = "Blade Ball"
BladeBall.TextColor3 = Color3.fromRGB(255, 255, 255)
BladeBall.TextSize = 14.000
BladeBall.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/nqxlOfc/Loaders/main/Blade_Ball.lua'))()
end)

UICorner_11.Parent = BladeBall

PetSim99.Name = "PetSim99"
PetSim99.Parent = ScriptHubUI
PetSim99.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
PetSim99.BorderColor3 = Color3.fromRGB(0, 0, 0)
PetSim99.BorderSizePixel = 0
PetSim99.Position = UDim2.new(0.0265957452, 0, 0.271135777, 0)
PetSim99.Size = UDim2.new(0, 110, 0, 35)
PetSim99.Font = Enum.Font.SourceSans
PetSim99.Text = "Pet Simulator 99"
PetSim99.TextColor3 = Color3.fromRGB(255, 255, 255)
PetSim99.TextSize = 14.000
PetSim99.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
end)

UICorner_12.Parent = PetSim99

TextLabel_2.Parent = ScriptHubUI
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.228684768, 0, 0.543956041, 0)
TextLabel_2.Size = UDim2.new(0, 216, 0, 28)
TextLabel_2.Font = Enum.Font.Kalam
TextLabel_2.Text = "More is comming soon!!"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

ImageButton.Parent = Haxx
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.0523755252, 0, 0.264838934, 0)
ImageButton.Size = UDim2.new(0, 82, 0, 82)
ImageButton.Image = "rbxassetid://15550241838"

UICorner_13.Parent = ImageButton

-- Scripts:

local function FNSPI_fake_script() -- TextBox.LocalScript 
	local script = Instance.new('LocalScript', TextBox)

	local TextBox = script.Parent -- Replace with the actual TextBox
	
	TextBox.Focused:Connect(function(focused)
		if focused then
			TextBox.Text = TextBox.Text -- Prevent default behavior of clearing text
		end
	end)
	
end
coroutine.wrap(FNSPI_fake_script)()
local function MOVEYF_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		loadstring(textbox.Text)() -- Execute Script From TextBox
	end)
end
coroutine.wrap(MOVEYF_fake_script)()
local function LRXUPJ_fake_script() -- Clear.LocalScript 
	local script = Instance.new('LocalScript', Clear)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		textbox.Text = "" -- Make Textbox Empty
	end)
end
coroutine.wrap(LRXUPJ_fake_script)()
local function SFYFND_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(SFYFND_fake_script)()
local function CETSVQ_fake_script() -- ScriptHub.LocalScript 
	local script = Instance.new('LocalScript', ScriptHub)

	local frame = script.Parent.Parent.ScriptHubUI
	local textbox = script.Parent.Parent.TextBox
	local execute = script.Parent.Parent.Execute
	local clear = script.Parent.Parent.Clear
	
	script.Parent.MouseButton1Click:Connect(function()
		frame.Visible = true
		textbox.Visible = false
		execute.Visible = false
		clear.Visible = false
	end)
end
coroutine.wrap(CETSVQ_fake_script)()
local function OHLQRO_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	local frame = script.Parent.Parent
	local textbox = script.Parent.Parent.Parent.TextBox
	local execute = script.Parent.Parent.Parent.Execute
	local clear = script.Parent.Parent.Parent.Clear
	
	script.Parent.MouseButton1Click:Connect(function()
		frame.Visible = false
		textbox.Visible = true
		execute.Visible = true
		clear.Visible = true
	end)
end
coroutine.wrap(OHLQRO_fake_script)()
local function IQPAFQ_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	local btn = script.Parent
	
	local isHovering = false
	
	
	btn.MouseEnter:Connect(function()
		
		isHovering = true
		
		btn:TweenSize(UDim2.new(0, 90, 0, 90), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	end)
	
	btn.MouseLeave:Connect(function()
		
		isHovering = false
		
		btn:TweenSize(UDim2.new(0, 82, 0, 82), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	end)
	
	btn.MouseButton1Down:Connect(function()
		
		btn:TweenSize(UDim2.new(0, 73, 0, 73), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	end)
	
	btn.MouseButton1Up:Connect(function()
		
		if not isHovering then
			btn:TweenSize(UDim2.new(0, 82, 0, 82), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
		else
			btn:TweenSize(UDim2.new(0, 90, 0, 90), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
		end
	end)
end
coroutine.wrap(IQPAFQ_fake_script)()
local function VEER_fake_script() -- Haxx.LocalScript 
	local script = Instance.new('LocalScript', Haxx)

	local SGui = script.Parent
	local Frame = SGui:WaitForChild("Main")
	local Button = SGui:WaitForChild("ImageButton")
	
	Button.MouseButton1Up:Connect(function()
		Frame.Visible = not Frame.Visible
	end)
end
coroutine.wrap(VEER_fake_script)()
