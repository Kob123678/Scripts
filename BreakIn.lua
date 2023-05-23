local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("KoSploit's Hub (Break In)", "Ocean")

-- MAIN MENU

local Tab = Window:NewTab("MAIN MENU")

-- Toggle UI

local Toggle = Tab:NewSection("Toggle UI")

Toggle:NewKeybind("Toggle UI", "Click to change keybinds", Enum.KeyCode.Delete, function()
	Library:ToggleUI()
end)

-- Server

local rejoin = Tab:NewSection("Server")

rejoin:NewButton("Rejoin", "Click to rejoin", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6wdd37J7"))()
end)

rejoin:NewButton("Server Hop", "Click to hop server", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/fuRgG35y"))()
end)

rejoin:NewButton("Server Hop (Join Lowest Player Server)", "Click to hop server", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ZRpw2BDy"))()
end)

-- Dex explorer

local Dex = Tab:NewSection("Dex explorer (Click to execute)")

Dex:NewButton("Dex explorer v2", "Click to execute", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex Explorer V2.txt"))()
end)

Dex:NewButton("Dex explorer v4", "Click to execute", function()
    loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
end)

-- Anti Afk

local Afk = Tab:NewSection("Anti Afk (Click to execute)")

Afk:NewButton("Anti-Afk", "Click to execute", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YaPHdZJ2"))()
end)

-- BEST Admin Scripts

local Admin = Tab:NewSection("BEST Admin Scripts (Click to execute)")

Admin:NewButton("ShatterVast Admin", "Click to execute", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/iL4NRDux"))()
end)

Admin:NewButton("Infinite Yield", "Click to execute", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

Admin:NewButton("CMD - X", "Click to execute", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))()
end)

Admin:NewButton("Fates Admin", "Click to execute", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)

Admin:NewButton("Reviz Admin", "Click to execute", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Caniwq2N"))()
end)

-- Credit

local Tab = Window:NewTab("Credit")
local Credit = Tab:NewSection("Credits!!")


Credit:NewLabel("UI Library: Kavo")
Credit:NewLabel("Script By Kob")
Credit:NewLabel("Functions By Lava#4650")

-- Break In

local Tab = Window:NewTab("BreakIn")
local Break = Tab:NewSection("Break In (Click to execute)")


Break:NewButton("Unlock Basement", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("Key") game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Door"):FireServer("Basement")
end)

Break:NewButton("Get Basement Key", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("Key")
end)

Break:NewButton("Get Bat", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("Bat")
end)

Break:NewButton("Get Medkit", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("MedKit")
end)

Break:NewButton("Get Lolipop", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("Lollipop")
end)

Break:NewButton("Apple Powered Heal", "Click to execute", function()
    for i=1, 100 do game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("Apple") game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Energy"):FireServer(15, "Apple") end
end)

Break:NewButton("Fire Skip On TV Part", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SkipTele"):FireServer()
end)

Break:NewButton("Get Poisoned Pizza", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("EpicPizza")
end)

Break:NewButton("Find BloxyPack", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("BloxyPack"):FireServer(1)
end)

Break:NewButton("Get Weapon", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("BasementWeapon"):FireServer(false)
end)

Break:NewButton("Annoy Loop Pizza", "Click to execute", function()
    while wait() do game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Energy"):FireServer(1, "Pizza1") end
end)

Break:NewButton("Annoy Pizza Sound", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Energy"):FireServer(1, "Pizza1")
end)

Break:NewButton("Get Planks", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("Plank")
end)

Break:NewButton("Get Pizza Big", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("Pizza3")
end)

Break:NewButton("Get Pizza Medium", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("Pizza2")
end)

Break:NewButton("Get Pizza Small", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("Pizza1")
end)

Break:NewButton("Play Sniff Sound", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Sounds"):FireServer(workspace:WaitForChild("TheHouse"):WaitForChild("SmallCat"):WaitForChild("Hiss"), true, math.huge)
end)

Break:NewButton("Lose Energy", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Energy"):FireServer(-10)
end)

Break:NewButton("Get Apple", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("Apple")
end)

Break:NewButton("Get Chips", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveTool"):FireServer("Chips")
end)

Break:NewButton("Loop An Annoying Sound", "Click to execute", function()
    while wait() do game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("DoSound"):FireServer(1) end
end)

Break:NewButton("Force Complete Loading Screen", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("LoadingScreen"):FireServer()
end)

-- Lobby

local Tab = Window:NewTab("BreakIn (Lobby)")
local Lobby = Tab:NewSection("Break In (Click to execute)")


Lobby:NewButton("Size Switcher", "Click to execute", function()
    while wait() do game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MakeRole"):FireServer(nil, false, false) task.wait(0.35) game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MakeRole"):FireServer("Chips", true, false) end
end)

Lobby:NewButton("Play As Hungry", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MakeRole"):FireServer("Chips", true, false)
end)

Lobby:NewButton("Play With No Role", "Click to execute", function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MakeRole"):FireServer(nil, false, false)
end)