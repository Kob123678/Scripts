-- Made By SecondKob
-- Work on auto exec
if not _G.AutoRejoin then
    _G.AutoRejoin = true
    game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "Auto Rejoin Enabled!", Duration = 5})
    game:GetService("GuiService").ErrorMessageChanged:Connect(function()
        wait(0.1) -- Wait a short delay to ensure the rejoin works properly
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
    end)
else
    game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "You Already Executed!", Duration = 5})
end
