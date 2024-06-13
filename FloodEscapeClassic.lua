repeat wait() until game:IsLoaded()
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Roblox/master/Orion.lua", true))()
local Window = OrionLib:MakeWindow({Name = "Flood Escape"})
local Tab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998"})
local Section = Tab:AddSection({Name = "Auto Farm by Tomato Hub"})

for _, v in ipairs({"Auto Farm", "Debug (Open Console)"}) do
    Tab:AddToggle({
        Name = v,
        Default = false,
        Callback = function(val)
            getgenv()[v:gsub(" ", ""):lower()] = val
        end
    })
end

getgenv().autofarm, getgenv().debug = false, false

local LP, RunService, wait = game:GetService("Players").LocalPlayer, game:GetService("RunService"), task.wait
local lastdebug, winsGained, gameModes = tick(), 0, {"Easy", "Medium", "Hard"}

local function debugprint(...) if getgenv().debug then warn(..., tick() - lastdebug) end lastdebug = tick() wait() end
debugprint('Game Loaded')

local function getThing(mode, thing)
    local mode = workspace[mode]
    if thing:lower() == "entry" then return mode.Entry.LiftEntry end
    if thing:lower() == "info" then return mode.Info end
    return mode:WaitForChild('Main'):WaitForChild('Exit')
end

local function getRoot() return (LP.Character or LP.CharacterAdded:Wait()) and LP.Character:WaitForChild("HumanoidRootPart") end
local function touchPart(part) local root = getRoot() firetouchinterest(root, part, 0) firetouchinterest(root, part, 1) end

local function playGame(mode)
    debugprint('Entering Lift..')
    touchPart(getThing(mode, 'entry'))
    debugprint('Entered Lift')

    repeat wait() until getThing(mode, 'info').Value == "Game is Ready!"
    debugprint('"Game is Ready!" detected.')
    
    for _ = 1, 3 do getThing(mode, 'info').Changed:wait() end
    debugprint('Touching Exit..')

    repeat wait() touchPart(getThing(mode, 'exit')) until LP.Ingame.Value == 0
    winsGained += 1
    debugprint('Game Won.')
end

while wait() do
    if getgenv().autofarm and LP.Ingame.Value == 0 and LP.Waiting.Value == 0 then
        for _, mode in ipairs(gameModes) do
            local infoval = getThing(mode, 'info').Value
            if infoval == "Game is Ready!" or infoval:lower():match('intermission') then
                playGame(mode)
                print("Gained", winsGained, "wins so far!")
            end
        end
    end
end
