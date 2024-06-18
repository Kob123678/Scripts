-- Work on auto exec

local GuiService = game:GetService("GuiService")

GuiService.ErrorMessageChanged:Connect(function()
    wait(0.1)
    local rejoinCode = [[game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)]]
    syn.queue_on_teleport(rejoinCode)
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)
