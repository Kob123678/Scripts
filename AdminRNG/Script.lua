local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Roblox/master/Orion.lua"))()
local Window = OrionLib:MakeWindow({Name = "Admin RNG", SaveConfig = true, ConfigFolder = "OrionTest"})
local Main = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998"})
local Credit = Window:MakeTab({Name = "Credit", Icon = "rbxassetid://4483345998"})
Credit:AddLabel("Made By SecondKob")

local autoRollEnabled, antiAfkEnabled, autoRejoinEnabled = _G.AutoRoll or false, _G.AntiAfk or false, _G.AutoRejoin or false

Main:AddToggle({Name = "Auto Roll", Default = autoRollEnabled, Callback = function(Value) _G.AutoRoll, autoRollEnabled = Value, Value end})
Main:AddToggle({Name = "Anti-AFK", Default = antiAfkEnabled, Callback = function(Value) _G.AntiAfk, antiAfkEnabled = Value, Value if Value then game.Players.LocalPlayer.Idled:Connect(function() if antiAfkEnabled then game:GetService("VirtualUser"):ClickButton2(Vector2.new()) end end) end end})
Main:AddToggle({Name = "Auto Rejoin", Default = autoRejoinEnabled, Callback = function(Value) _G.AutoRejoin, autoRejoinEnabled = Value, Value if Value then game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child) if child.Name == "ErrorPrompt" then game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer) end end) end end})

spawn(function() while true do if autoRollEnabled then game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Spin"):InvokeServer(false) end wait(0.1) end end)
