local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("KoSploit's Hub (Discontinued)", "Ocean")

-- MAIN MENU

local Tab = Window:NewTab("MAIN MENU")

-- Toggle UI

local Toggle = Tab:NewSection("Toggle UI")

Toggle:NewKeybind("Toggle UI", "Click to change keybinds", Enum.KeyCode.LeftAlt, function()
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

-- Hotel Elephant

local Tab = Window:NewTab("Hotel Elephant")
local Hotel = Tab:NewSection("Ulimate money (Click to execute)")


Hotel:NewButton("Get Ulimate money", "Click to execute", function()
    game.ReplicatedStorage.MoneyRequest:FireServer(false, 2e9, "Cash")
end)

Hotel:NewTextBox("Set everyone's cash", "set everybody's money", function(txt)
	local SetMoney = (txt)
	
		local plyrs = game:GetService("Players")
	for _,P in pairs(plyrs:GetPlayers()) do
	   local N = {[1] = false, [2] = "inf", [3] = "Cash", [4] = P}
	    local UNN = {[1] = false, [2] = "9223372036854776000", [3] = "Cash", [4] = P}
	    local SixNine = {[1] = false, [2] = SetMoney, [3] = "Cash", [4] = P}
    
	 game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(N))
	 task.wait(0.10)
	   game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(UNN))
	 task.wait(0.10)
	    game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(SixNine))
 end
end)