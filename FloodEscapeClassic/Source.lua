-- By Tomato Hub
repeat wait() until game:IsLoaded()

-- Debug Print
local lastdebug = tick()
local function debugprint(...)
    if Debug == true then
        warn(..., tick() - lastdebug)
    end
    lastdebug = tick()
    wait()
end
debugprint('Game Loaded')

local gameModes = {"Easy", "Medium", "Hard"}
local winsGained = 0

-- Constants
local LP = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")
local wait = task.wait

-- Functions
local function getThing(mode, thing)
    local mode = workspace[mode]
    local thing = thing:lower()
    if thing == "entry" then
        return mode.Entry.LiftEntry
    elseif thing == "info" then
        return mode.Info
    elseif thing == "exit" then
        return mode:WaitForChild('Main'):WaitForChild('Exit')
    end
end

local function getRoot()
    return (LP.Character or LP.CharacterAdded:Wait()) and LP.Character:WaitForChild("HumanoidRootPart")
end

local function touchPart(part)
    local root = getRoot()
    firetouchinterest(root, part, 0)
    firetouchinterest(root, part, 1)
end

local function playGame(mode)
    -- Enters Lift
    debugprint('Entering Lift..')
    touchPart(getThing(mode, 'entry'))
    debugprint('Entered Lift')
    -- Wait until game is ready
    debugprint('Waiting for "Game is Ready!"')
    repeat
        wait()
    until getThing(mode, 'info').Value == "Game is Ready!"
    debugprint('"Game is Ready!" detected.')
    debugprint('Info Changed Checks Started..')
    for i = 1,3 do
        debugprint('Info Changed #', i)
        getThing(mode, 'info').Changed:wait()
    end
    debugprint('Touching Exit..')
    -- Spam touch exit until win
    repeat
        wait()
        touchPart(getThing(mode, 'exit'))
    until LP.Ingame.Value == 0
    winsGained += 1
    debugprint('Game Won.')
end

while wait() do
    if autofarm and LP.Ingame.Value == 0 and LP.Waiting.Value == 0 then
        for _, mode in ipairs(gameModes) do
            local infoval = getThing(mode, 'info').Value
            if infoval == "Game is Ready!" or infoval:lower():match('intermission') then
                playGame(mode)
                print("Gained", winsGained, "wins so far!")
                continue
            end
        end
    end
end
