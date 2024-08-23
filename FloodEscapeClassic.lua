-- From Tomato Hub
repeat wait() until game:IsLoaded()

getgenv().autofarm, getgenv().Debug = true, true

local lastdebug, LP, wait = tick(), game:GetService("Players").LocalPlayer, task.wait
local gameModes, winsGained = {"Easy", "Medium", "Hard"}, 0

local function debugprint(...) 
    if Debug then warn(..., tick() - lastdebug) end
    lastdebug = tick()
end
debugprint('Game Loaded')

local function getThing(mode, thing)
    local mode = workspace[mode]
    if thing == "entry" then return mode.Entry.LiftEntry end
    if thing == "info" then return mode.Info end
    return mode:WaitForChild('Main'):WaitForChild('Exit')
end

local function touchPart(part)
    local root = LP.Character and LP.Character:WaitForChild("HumanoidRootPart") or LP.CharacterAdded:Wait():WaitForChild("HumanoidRootPart")
    firetouchinterest(root, part, 0)
    firetouchinterest(root, part, 1)
end

local function playGame(mode)
    debugprint('Entering Lift..')
    touchPart(getThing(mode, 'entry'))
    repeat wait() until getThing(mode, 'info').Value == "Game is Ready!"
    for i = 1, 3 do getThing(mode, 'info').Changed:Wait() end
    debugprint('Touching Exit..')
    repeat wait() touchPart(getThing(mode, 'exit')) until LP.Ingame.Value == 0
    winsGained += 1
end

while wait() do
    if autofarm and LP.Ingame.Value == 0 and LP.Waiting.Value == 0 then
        for _, mode in ipairs(gameModes) do
            if getThing(mode, 'info').Value:lower():match('game is ready!|intermission') then
                playGame(mode)
                print("Gained", winsGained, "wins so far!")
                break
            end
        end
    end
end
