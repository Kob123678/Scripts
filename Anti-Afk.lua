if not _G.AntiAfk then
    _G.AntiAfk = true
    game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "Anti-Afk Enabled!", Duration = 5})
    game.Players.LocalPlayer.Idled:connect(function()
        game:GetService('VirtualUser'):CaptureController()
        game:GetService('VirtualUser'):ClickButton2(Vector2.new())
    end)
else
    game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "You Already Executed!", Duration = 5})
end
