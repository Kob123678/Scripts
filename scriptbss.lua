_G.Autojoin = _G.Autojoin or false
_G.AntiAfk = _G.AntiAfk or true
_G.AutoRemovePortal = _G.AutoRemovePortal or true
_G.AutoRejoin = _G.AutoRejoin or true

repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

local function promptTeleport()
    local p = game.Players.LocalPlayer
    local ui = Instance.new("ScreenGui", p:WaitForChild("PlayerGui"))
    local frame = Instance.new("Frame", ui)
    frame.Size, frame.Position, frame.BackgroundTransparency = UDim2.new(0.3, 0, 0.2, 0), UDim2.new(0.35, 0, 0.4, 0), 0.5

    local label = Instance.new("TextLabel", frame)
    label.Text, label.Size, label.Position, label.TextScaled, label.BackgroundTransparency = "Do you want to join Bee Swarm Simulator?", UDim2.new(1, 0, 0.5, 0), UDim2.new(0, 0, 0, 0), true, 1

    local yesButton, noButton = Instance.new("TextButton", frame), Instance.new("TextButton", frame)
    yesButton.Text, yesButton.Size, yesButton.Position, yesButton.TextScaled = "Yes", UDim2.new(0.4, 0, 0.3, 0), UDim2.new(0.1, 0, 0.6, 0), true
    noButton.Text, noButton.Size, noButton.Position, noButton.TextScaled = "No", UDim2.new(0.4, 0, 0.3, 0), UDim2.new(0.5, 0, 0.6, 0), true

    yesButton.MouseButton1Click:Connect(function() game:GetService("TeleportService"):Teleport(1537690962, p) end)
    noButton.MouseButton1Click:Connect(function() ui:Destroy() end)
end

if game.PlaceId ~= 1537690962 then
    if _G.Autojoin then
        game:GetService("TeleportService"):Teleport(1537690962, game.Players.LocalPlayer)
    else
        promptTeleport()
    end
else
    game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "Anti-Afk+Auto Rejoin Enabled!", Duration = 5})
    
    if _G.AutoRemovePortal then
        workspace.RetroEvent.RetroChallengePortal.Trigger:Destroy()
    end
    
    if _G.AntiAfk then
        local vu = game:service('VirtualUser')
        game.Players.LocalPlayer.Idled:connect(function() vu:CaptureController() vu:ClickButton2(Vector2.new()) end)
    end
    
    if _G.AutoRejoin then
        game.GuiService.ErrorMessageChanged:Connect(function()
            wait(0.1)
            syn.queue_on_teleport([[game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)]])
            game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
        end)
    end

    loadstring(game:HttpGet("https://raw.githubusercontent.com/AdelOnTheTop/Adel-Hub/main/BeeSwarmSimulator.lua"))()
end
