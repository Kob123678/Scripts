if _G.ScriptExecuted then
    game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "You Already Executed!", Duration = 5})
else
    _G.ScriptExecuted = true
    game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "Anti-Afk Enabled!", Duration = 5})
    game.Players.LocalPlayer.Idled:connect(function()
        game:service('VirtualUser'):CaptureController()
        game:service('VirtualUser'):ClickButton2(Vector2.new())
    end)
end
