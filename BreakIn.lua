local L = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))().CreateLib("KoSploit's Hub (Break In)", "Ocean")
local T = L:NewTab("MAIN MENU")
local S = T:NewSection("Toggle UI")
S:NewKeybind("Toggle UI", "Click to change keybinds", Enum.KeyCode.Delete, function() L:ToggleUI() end)

S = T:NewSection("Server")
S:NewButton("Rejoin", "Click to rejoin", function() loadstring(game:HttpGet("https://pastebin.com/raw/6wdd37J7"))() end)
S:NewButton("Server Hop", "Click to hop server", function() loadstring(game:HttpGet("https://pastebin.com/raw/fuRgG35y"))() end)
S:NewButton("Server Hop (Join Lowest Player Server)", "Click to hop server", function() loadstring(game:HttpGet("https://pastebin.com/raw/ZRpw2BDy"))() end)

S = T:NewSection("Dex explorer (Click to execute)")
S:NewButton("Dex explorer v2", "Click to execute", function() loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex Explorer V2.txt"))() end)
S:NewButton("Dex explorer v4", "Click to execute", function() loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)() end)

S = T:NewSection("Anti Afk (Click to execute)")
S:NewButton("Anti-Afk", "Click to execute", function() loadstring(game:HttpGet("https://pastebin.com/raw/YaPHdZJ2"))() end)

S = T:NewSection("BEST Admin Scripts (Click to execute)")
S:NewButton("ShatterVast Admin", "Click to execute", function() loadstring(game:HttpGet("https://pastebin.com/raw/iL4NRDux"))() end)
S:NewButton("Infinite Yield", "Click to execute", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end)
S:NewButton("CMD - X", "Click to execute", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))() end)
S:NewButton("Fates Admin", "Click to execute", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))() end)
S:NewButton("Reviz Admin", "Click to execute", function() loadstring(game:HttpGet("https://pastebin.com/raw/Caniwq2N"))() end)

T = L:NewTab("Credit"):NewSection("Credits!!")
T:NewLabel("UI Library: Kavo")
T:NewLabel("Script By Kob")
T:NewLabel("Functions By Lava#4650")

T = L:NewTab("BreakIn"):NewSection("Break In (Click to execute)")
local function b(name, fn) T:NewButton(name, "Click to execute", fn) end
local RS, WFC = game:GetService("ReplicatedStorage"), game.WaitForChild
local RE = RS:WaitForChild("RemoteEvents")

b("Unlock Basement", function() RE:GiveTool:FireServer("Key") RE:Door:FireServer("Basement") end)
b("Get Basement Key", function() RE:GiveTool:FireServer("Key") end)
b("Get Bat", function() RE:GiveTool:FireServer("Bat") end)
b("Get Medkit", function() RE:GiveTool:FireServer("MedKit") end)
b("Get Lolipop", function() RE:GiveTool:FireServer("Lollipop") end)
b("Apple Powered Heal", function() for i=1, 100 do RE:GiveTool:FireServer("Apple") RE:Energy:FireServer(15, "Apple") end end)
b("Fire Skip On TV Part", function() RE:SkipTele:FireServer() end)
b("Get Poisoned Pizza", function() RE:GiveTool:FireServer("EpicPizza") end)
b("Find BloxyPack", function() RE:BloxyPack:FireServer(1) end)
b("Get Weapon", function() RE:BasementWeapon:FireServer(false) end)
b("Annoy Loop Pizza", function() while wait() do RE:Energy:FireServer(1, "Pizza1") end end)
b("Annoy Pizza Sound", function() RE:Energy:FireServer(1, "Pizza1") end)
b("Get Planks", function() RE:GiveTool:FireServer("Plank") end)
b("Get Pizza Big", function() RE:GiveTool:FireServer("Pizza3") end)
b("Get Pizza Medium", function() RE:GiveTool:FireServer("Pizza2") end)
b("Get Pizza Small", function() RE:GiveTool:FireServer("Pizza1") end)
b("Play Sniff Sound", function() RE:Sounds:FireServer(workspace:WaitForChild("TheHouse"):WaitForChild("SmallCat"):WaitForChild("Hiss"), true, math.huge) end)
b("Lose Energy", function() RE:Energy:FireServer(-10) end)
b("Get Apple", function() RE:GiveTool:FireServer("Apple") end)
b("Get Chips", function() RE:GiveTool:FireServer("Chips") end)
b("Loop An Annoying Sound", function() while wait() do RE:DoSound:FireServer(1) end end)
b("Force Complete Loading Screen", function() RE:LoadingScreen:FireServer() end)

T = L:NewTab("BreakIn (Lobby)"):NewSection("Break In (Click to execute)")
b = function(name, fn) T:NewButton(name, "Click to execute", fn) end

b("Size Switcher", function() while wait() do RE:MakeRole:FireServer(nil, false, false) task.wait(0.35) RE:MakeRole:FireServer("Chips", true, false) end end)
b("Play As Hungry", function() RE:MakeRole:FireServer("Chips", true, false) end)
b("Play With No Role", function() RE:MakeRole:FireServer(nil, false, false) end)