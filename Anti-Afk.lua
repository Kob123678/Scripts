game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "Anti-Afk Enabled!", Duration = 5})

local vu = game:service('VirtualUser')
game.Players.LocalPlayer.Idled:connect(function()
    vu:CaptureController()
    vu:ClickButton2(Vector2.new())
end)
