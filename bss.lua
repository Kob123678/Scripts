repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
local p = game.Players.LocalPlayer
local id = 1537690962

if game.PlaceId ~= id then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Join Bee Swarm Simulator?",
        Text = "Would you like to join Bee Swarm Simulator?",
        Duration = 10,
        Button1 = "Yes",
        Button2 = "No",
        Callback = function(c)
            if c == "Yes" then
                game:GetService("TeleportService"):Teleport(id, p)
            end
        end
    })
else
    game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "Anti-Afk+Auto Rejoin Enabled!", Duration = 5})
    workspace.RetroEvent.RetroChallengePortal.Trigger:Destroy()
    local vu = game:service('VirtualUser')
    p.Idled:connect(function() vu:CaptureController() vu:ClickButton2(Vector2.new()) end)
    game.GuiService.ErrorMessageChanged:Connect(function()
        wait(0.1)
        syn.queue_on_teleport([[game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)]])
        game:GetService("TeleportService"):Teleport(game.PlaceId, p)
    end)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AdelOnTheTop/Adel-Hub/main/BeeSwarmSimulator.lua"))()
end
