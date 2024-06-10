-- BABFT Auto Farm
-- Made By SecondKob

-- Define a function for displaying notifications
local function notify(message)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Notification",
        Text = message,
        Duration = 5
    })
end

-- Anti-Afk
notify("Anti-Afk is Enabled.")
local virtualUser = game:service('VirtualUser')
game:service('Players').LocalPlayer.Idled:connect(function()
    virtualUser:CaptureController()
    virtualUser:ClickButton2(Vector2.new())
end)

while true do
    -- Change gravity to 0
    game.Workspace.Gravity = 0
    
    -- Notify
    notify("Starting...")
    
    -- Function to teleport player and claim river results
    local function teleportAndClaim(position, stage)
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(position))
        wait(1)
        workspace:WaitForChild("ClaimRiverResultsGold"):FireServer()
        wait(1)
    end
    
    -- Teleport player to each stage and claim river results
    for i = 1, 10 do
        teleportAndClaim(workspace.BoatStages.NormalStages["CaveStage" .. i].DarknessPart.Position)
    end
    
    -- Reset Character
    wait(0.5)
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    
    -- Wait 12 seconds before running the script again
    notify("Will Farm in 12 Seconds")
    wait(12.65)
end
