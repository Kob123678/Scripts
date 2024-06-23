-- Work on auto exec
if not _G.AutoRejoin then
    _G.AutoRejoin = true
    game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "Anti-Afk Enabled!", Duration = 5})
    game:GetService("GuiService").ErrorMessageChanged:Connect(function()
        syn.queue_on_teleport([[game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)]])
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end)
else
    game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "You Already Executed!", Duration = 5})
end
