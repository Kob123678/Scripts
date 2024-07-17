-- decomped by yours truly (.kirvv)
-- filename: beecon_hub.lua
-- version: lua51
-- line: [0, 0] id: 0
local r0_0 = game:GetService("MarketplaceService")
local r1_0, r2_0 = pcall(r0_0.GetProductInfo, r0_0, game.PlaceId)
local r3_0 = "Unknown Game"
if r1_0 and r2_0 then
  r3_0 = r2_0.Name
end
  local r5_0 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
  local r6_0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
  local r7_0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
  local r8_0 = r5_0:CreateWindow({
    Title = "Bee Swarm Simulator | Beecon Hub",
    SubTitle = "by @BaconBossScripts On Youtube",
    TabWidth = 160,
    Size = UDim2.fromOffset(520, 320),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl,
  })
  local r9_0 = {
    Setting = r8_0:AddTab({
      Title = "Settings",
      Icon = "file-cog",
    }),
    Main = r8_0:AddTab({
      Title = "Main",
      Icon = "home",
    }),
    Combat = r8_0:AddTab({
      Title = "Combat",
      Icon = "swords",
    }),
    Boost = r8_0:AddTab({
      Title = "Dispenser",
      Icon = "rocket",
    }),
    Misc = r8_0:AddTab({
      Title = "Misc",
      Icon = "file-text",
    }),
    Webhook = r8_0:AddTab({
      Title = "Webhook",
      Icon = "bar-chart-3",
    }),
    Credit = r8_0:AddTab({
      Title = "Credit",
      Icon = "scroll",
    }),
    Settings = r8_0:AddTab({
      Title = "Gui Settings",
      Icon = "settings",
    }),
  }
  local r10_0 = r5_0.Options
  r5_0:Notify({
    Title = "Hello",
    Content = "Enjoy My Script",
    SubContent = "Don\'t Forget To Subscribe :D",
    Duration = 10,
  })
  pcall(function()
    -- line: [0, 0] id: 44
    local r1_44 = game:GetService("Players").LocalPlayer
    local function r2_44()
      -- line: [0, 0] id: 45
      print("Character died")
      r1_44.CharacterAdded:Wait()
      print("Character respawned")
      local r0_45 = r1_44.Character
      if not r0_45 then
        r0_45 = r1_44.CharacterAdded:Wait()
      end
      workspace.CurrentCamera.CameraSubject = r0_45:WaitForChild("Humanoid")
      print("Camera reset")
    end
    local function r3_44(r0_46)
      -- line: [0, 0] id: 46
      local r1_46 = r0_46:WaitForChild("Humanoid")
      r1_46.Died:Connect(r2_44)
      workspace.CurrentCamera.CameraSubject = r1_46
    end
    r1_44.CharacterAdded:Connect(r3_44)
    if r1_44.Character then
      r3_44(r1_44.Character)
    end
    for r8_44, r9_44 in pairs(workspace.Collectibles:GetDescendants()) do
      if r9_44.Name == "C" then
        r9_44:Destroy()
      end
    end
    workspace.Toys["Field Booster"]["Boost Pod"].Union:Destroy()
    workspace.Map.Fences:Destroy()
    workspace.Toys["Instant Converter"].Machine:Destroy()
    workspace.Map.Ground.RedClubhouse:Destroy()
    workspace["Invisible Walls"]:Destroy()
    workspace.Map.Ground.StickerPrinterGround:Destroy()
    workspace.Decorations.JumpGames.RockClimbBamboo:Destroy()
    workspace.Toys["Moon Amulet Generator"]:Destroy()
    workspace.Decorations.TreatBooth:Destroy()
    workspace.RetroEvent:Destroy()
    workspace.Decorations.Misc["Blue Flower 4"]:Destroy()
    workspace.Honey:Destroy()
    workspace.FieldDecos:Destroy()
    workspace.HiveDeco.BackPillars:Destroy()
    workspace.Map.Part:Destroy()
    for r8_44, r9_44 in pairs(workspace.Decorations.Misc:GetDescendants()) do
      if r9_44.Name == "Part" then
        r9_44:Destroy()
      end
    end
    for r8_44, r9_44 in pairs(workspace.Decorations["30BeeZone"]:GetDescendants()) do
      if r9_44.Name == "Part" then
        r9_44:Destroy()
      end
    end
    for r8_44, r9_44 in ipairs(workspace.Map.Ground:GetDescendants()) do
      if r9_44.Name == "Part" and r9_44.Size.X == 76.24794006347656 and r9_44.Size.Y == 16.825281143188477 and r9_44.Size.Z == 51.86602783203125 then
        r9_44:Destroy()
      end
    end
    for r8_44, r9_44 in pairs(workspace.Map.Ground.RedClubhouse:GetDescendants()) do
      if r9_44.Name == "SurfaceLight" then
        r9_44.Parent:Destroy()
      end
    end
  end)
  local r11_0 = false
  local r12_0 = false
  local r13_0 = false
  local r14_0 = false
  local r15_0 = false
  local r16_0 = false
  local r17_0 = true
  local r18_0 = true
  local r19_0 = true
  local r20_0 = true
  local r21_0 = true
  local r22_0 = true
  local r23_0 = true
  local r24_0 = 40
  local r25_0 = {}
  local r26_0 = nil
  local r27_0 = 100
  local r28_0 = "Walk"
  local r29_0 = "Walk"
  local r30_0 = false
  local r31_0 = 40
  local r32_0 = nil
  local r33_0 = "over 35"
  local r34_0 = 1000000000
  local r35_0 = 69
  for r39_0, r40_0 in ipairs(workspace.FlowerZones:GetDescendants()) do
    if r40_0:IsA("Part") then
      table.insert(r25_0, r40_0.Name)
    end
  end
  function isCharacterAlive()
    -- line: [0, 0] id: 43
    if game.Players.LocalPlayer.Character then
      local r0_43 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
      if r0_43 and r0_43.Health > 0 then
        return true
      end
    end
    return false
  end
  r9_0.Webhook:AddParagraph({
    Title = "Webhook To Check How Much Honey Is Made",
    Content = "",
  })
  local r36_0 = 60
  local r37_0 = ""
  local r38_0 = r9_0.Webhook:AddInput("WEBHOOK", {
    Title = "Webhook",
    Default = "",
    Placeholder = "input webhook address",
    Numeric = false,
    Finished = false,
    Callback = function(r0_55)
      -- line: [0, 0] id: 55
      r37_0 = r0_55
    end,
  })
  local r39_0 = r9_0.Webhook:AddInput("COOLDOWN", {
    Title = "When Send Webhook",
    Default = "",
    Placeholder = "input second",
    Numeric = true,
    Finished = false,
    Callback = function(r0_133)
      -- line: [0, 0] id: 133
      r36_0 = tonumber(r0_133)
    end,
  })
  local r40_0 = r9_0.Webhook:AddToggle("web1", {
    Title = "Auto Send Webhook",
    Default = false,
  })
  r40_0:OnChanged(function()
    -- line: [0, 0] id: 110
    _G.web1 = r40_0.Value
    if _G.web1 then
      while _G.web1 do
        local r0_110 = game:GetService("Players").LocalPlayer.CoreStats.Honey
        local r1_110 = http_request
        if not r1_110 then
          r1_110 = request
          if not r1_110 then
            r1_110 = syn
            if r1_110 then
              r1_110 = syn.request
              if not r1_110 then
                ::label_36::
                r1_110 = fluxus
                if r1_110 then
                  r1_110 = fluxus.request
                  if not r1_110 then
                    ::label_43::
                    r1_110 = http
                    if r1_110 then
                      r1_110 = http.request
                    end
                  end
                else
                  goto label_43	-- block#12 is visited secondly
                end
              end
            else
              goto label_36	-- block#10 is visited secondly
            end
          end
        end
        local r2_110 = game:GetService("HttpService")
        local function r3_110(r0_111)
          -- line: [0, 0] id: 111
          local r1_111 = tostring(r0_111)
          while true do
            r1_111, k = string.gsub(r1_111, "^(-?%d+)(%d%d%d)", "%1,%2")
            if k == 0 then
              goto label_15	-- block#3 is visited secondly
            end
          end
          return r1_111
        end
        local function r4_110(r0_112, r1_112)
          -- line: [0, 0] id: 112
          r1_110({
            Url = r37_0,
            Method = "POST",
            Body = tostring(r2_110:JSONEncode({
              embeds = {
                {
                  title = r0_112,
                  description = r1_112,
                  footer = {
                    text = "BaconBossScript",
                    icon_url = "https://cdn.discordapp.com/attachments/1165237292147945573/1250344088885137438/dep.png",
                  },
                  thumbnail = {
                    url = "https://media.discordapp.net/attachments/1237398892094554162/1252497144179458058/beecon_hub.png?ex=66726e5d&is=66711cdd&hm=0c2776c572657868fdbddd0e87dfe3c41f369589379f096eb1a9fe3b4dd1e9cb&=&format=webp&quality=lossless&width=563&height=563",
                  },
                  author = {
                    name = "Bee Swarm Simulator | Beecon Hub",
                    icon_url = "https://cdn.discordapp.com/attachments/1165237292147945573/1250345136999895050/images_23.jpg",
                  },
                }
              },
            })),
            Headers = {
              ["Content-Type"] = "application/json",
            },
          })
        end
        local r5_110 = r0_110.Value
        task.wait(r36_0)
        local r6_110 = r0_110.Value
        r4_110("Honey Stats", " | Old Honey: " .. r3_110(r5_110) .. "\n" .. " | New Honey: " .. r3_110(r6_110) .. "\n" .. " | Calculating Honey Got From Past " .. r36_0 .. " Seconds\n" .. "Total: " .. r3_110(r6_110 - r5_110))
        -- close: r0_110
      end
    end
  end)
  r40_0:SetValue(false)
  r9_0.Webhook:AddParagraph({
    Title = "Send Feedback Report Bugs & Rate The Script & Suggest",
    Content = "",
  })
  local r41_0 = "Hello"
  local r42_0 = r9_0.Webhook:AddInput("FEEDBACK", {
    Title = "Write Your Feedback",
    Default = "",
    Placeholder = "tell somthing...",
    Numeric = false,
    Finished = false,
    Callback = function(r0_53)
      -- line: [0, 0] id: 53
      r41_0 = r0_53
    end,
  })
  r9_0.Webhook:AddButton({
    Title = "Send Feedback",
    Description = "",
    Callback = function()
      -- line: [0, 0] id: 125
      local r0_125 = http_request
      if not r0_125 then
        r0_125 = request
        if not r0_125 then
          r0_125 = syn
          if r0_125 then
            r0_125 = syn.request
            if r0_125 then
            end
          end
          r0_125 = fluxus
          if r0_125 then
            r0_125 = fluxus.request
            if not r0_125 then
            end
          end
          r0_125 = http and http.request
        end
      end
      local r1_125 = game:GetService("HttpService")
      (function(r0_126, r1_126)
        -- line: [0, 0] id: 126
        r0_125({
          Url = "https://discord.com/api/webhooks/1252510026808033351/uvB5qmtkNnCJRYE_qgIsPfLLc8uTE1w0YNefxemuHCBZDBAGQdRc4PaaV0MNHx0GpXbn",
          Method = "POST",
          Body = tostring(r1_125:JSONEncode({
            embeds = {
              {
                title = r0_126,
                description = r1_126,
                footer = {
                  text = "BaconBossScript",
                  icon_url = "https://cdn.discordapp.com/attachments/1165237292147945573/1250344088885137438/dep.png",
                },
                thumbnail = {
                  url = "https://media.discordapp.net/attachments/1237398892094554162/1252497144179458058/beecon_hub.png?ex=66726e5d&is=66711cdd&hm=0c2776c572657868fdbddd0e87dfe3c41f369589379f096eb1a9fe3b4dd1e9cb&=&format=webp&quality=lossless&width=563&height=563",
                },
                author = {
                  name = "Bee Swarm Simulator | Beecon Hub",
                  icon_url = "https://cdn.discordapp.com/attachments/1165237292147945573/1250345136999895050/images_23.jpg",
                },
              }
            },
          })),
          Headers = {
            ["Content-Type"] = "application/json",
          },
        })
      end)("Feedback Sent By: " .. game.Players.LocalPlayer.Name, r41_0)
    end,
  })
  r9_0.Webhook:AddParagraph({
    Title = "Honey Process",
    Content = "",
  })
  local r49_0 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ScreenGui"):WaitForChild("MeterHUD"):WaitForChild("HoneyMeter"):WaitForChild("Bar"):WaitForChild("PerSecLabel")
  local function r50_0(r0_109)
    -- line: [0, 0] id: 109
    local r1_109 = tostring(math.floor(r0_109))
    repeat
      local r2_109 = nil
      r1_109, r2_109 = r1_109:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
    until r2_109 == 0
    return r1_109
  end
  local r51_0 = r9_0.Webhook:AddParagraph({
    Title = "Honey per hour: 0",
    Content = "",
  })
  local r52_0 = r9_0.Webhook:AddParagraph({
    Title = "Honey per day: 0",
    Content = "",
  })
  local function r53_0()
    -- line: [0, 0] id: 33
    local r1_33 = r49_0.Text:match("([%d,%.]+)")
    if not r1_33 then
      return 
    end
    local r3_33 = tonumber(r1_33:gsub(",", ""))
    if not r3_33 then
      return 
    end
    local r4_33 = r3_33 * 3600
    local r5_33 = r3_33 * 86400
    r51_0:Destroy()
    r52_0:Destroy()
    r51_0 = r9_0.Webhook:AddParagraph({
      Title = "Honey Per Hour: " .. r50_0(r4_33),
      Content = "",
    })
    r52_0 = r9_0.Webhook:AddParagraph({
      Title = "Honey Per Day: " .. r50_0(r5_33),
      Content = "",
    })
  end
  local r54_0 = r9_0.Webhook:AddToggle("web", {
    Title = "Check Process",
    Default = false,
  })
  r54_0:OnChanged(function()
    -- line: [0, 0] id: 63
    _G.web = r54_0.Value
    if _G.web then
      while _G.web do
        r53_0()
        wait(1)
      end
    end
  end)
  r54_0:SetValue(false)
  r9_0.Misc:AddToggle("ActiveSpeed", {
    Title = "Active Speed",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 131
    _G.ActiveSpeed = r10_0.ActiveSpeed.Value
    if _G.ActiveSpeed then
      while _G.ActiveSpeed do
        task.spawn(function()
          -- line: [0, 0] id: 132
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = r35_0
        end)
        wait(0.2)
      end
    end
  end)
  r10_0.ActiveSpeed:SetValue(false)
  local r56_0 = r9_0.Misc:AddInput("InputSpeed", {
    Title = "Speed",
    Default = "",
    Placeholder = "input number",
    Numeric = true,
    Finished = false,
    Callback = function(r0_41)
      -- line: [0, 0] id: 41
      r35_0 = tonumber(r0_41)
    end,
  })
  r9_0.Misc:AddButton({
    Title = "Find All Sticker",
    Description = "sticker respawn everyday",
    Callback = function()
      -- line: [0, 0] id: 93
      for r3_93, r4_93 in ipairs(workspace.HiddenStickers:GetDescendants()) do
        if r4_93:IsA("ClickDetector") then
          task.spawn(function()
            -- line: [0, 0] id: 94
            fireclickdetector(r4_93)
          end)
        end
        -- close: r3_93
      end
    end,
  })
  r9_0.Misc:AddButton({
    Title = "Anti AFK",
    Description = "",
    Callback = function()
      -- line: [0, 0] id: 67
      loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/AntiAFK/main/AntiAFK"))()
    end,
  })
  r9_0.Misc:AddButton({
    Title = "Anti LAG",
    Description = "",
    Callback = function()
      -- line: [0, 0] id: 128
      local r0_128 = true
      local r1_128 = game
      local r3_128 = r1_128.Lighting
      local r4_128 = r1_128.Workspace.Terrain
      r4_128.WaterWaveSize = 0
      r4_128.WaterWaveSpeed = 0
      r4_128.WaterReflectance = 0
      r4_128.WaterTransparency = 0
      r3_128.GlobalShadows = false
      r3_128.FogEnd = 9000000000
      r3_128.Brightness = 0
      settings().Rendering.QualityLevel = "Level01"
      for r8_128, r9_128 in pairs(r1_128:GetDescendants()) do
        if not r9_128:IsA("Part") and not r9_128:IsA("Union") and not r9_128:IsA("CornerWedgePart") and not r9_128:IsA("TrussPart") then
          if not r9_128:IsA("Decal") then
            if r9_128:IsA("Texture") and not r0_128 then
            end
            if not r9_128:IsA("ParticleEmitter") and not r9_128:IsA("Trail") then
              if r9_128:IsA("Explosion") then
                r9_128.BlastPressure = 1
                r9_128.BlastRadius = 1
              elseif r9_128:IsA("Fire") or r9_128:IsA("SpotLight") or r9_128:IsA("Smoke") then
                r9_128.Enabled = false
              elseif r9_128:IsA("MeshPart") then
                r9_128.Material = "Plastic"
                r9_128.Reflectance = 0
                r9_128.TextureID = 10385902758728956
              end
            else
              r9_128.Lifetime = NumberRange.new(0)
            end
          else
            r9_128.Transparency = 1
          end
        end
        r9_128.Material = "Plastic"
        r9_128.Reflectance = 0
      end
      for r8_128, r9_128 in pairs(r3_128:GetChildren()) do
        if not r9_128:IsA("BlurEffect") and not r9_128:IsA("SunRaysEffect") then
          if r9_128:IsA("ColorCorrectionEffect") then
            goto label_147
          elseif not r9_128:IsA("BloomEffect") and not r9_128:IsA("DepthOfFieldEffect") then
          end
        else
          ::label_147::
          ::label_147::
          r9_128.Enabled = false
        end
      end
    end,
  })
  r9_0.Boost:AddToggle("tb", {
    Title = "Auto Claim Ant Pass",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 40
    _G.tb = r10_0.tb.Value
    if _G.tb then
      while _G.tb do
        local r0_40 = {
          [1] = "Free Ant Pass Dispenser",
        }
        local r1_40 = game:GetService("ReplicatedStorage")
        r1_40 = r1_40:WaitForChild("Events")
        r1_40:WaitForChild("ToyEvent"):FireServer(unpack(r0_40))
        wait(1)
      end
    end
  end)
  r10_0.tb:SetValue(false)
  r9_0.Boost:AddToggle("tb5", {
    Title = "Auto Claim Wealth Clock",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 98
    _G.tb5 = r10_0.tb5.Value
    if _G.tb5 then
      while _G.tb5 do
        local r0_98 = {
          [1] = "Wealth Clock",
        }
        local r1_98 = game:GetService("ReplicatedStorage")
        r1_98 = r1_98:WaitForChild("Events")
        r1_98:WaitForChild("ToyEvent"):FireServer(unpack(r0_98))
        wait(1)
      end
    end
  end)
  r10_0.tb5:SetValue(false)
  r9_0.Boost:AddToggle("tb4", {
    Title = "Auto Coconut Dispenser",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 54
    _G.tb4 = r10_0.tb4.Value
    if _G.tb4 then
      while _G.tb4 do
        local r0_54 = {
          [1] = "Coconut Dispenser",
        }
        local r1_54 = game:GetService("ReplicatedStorage")
        r1_54 = r1_54:WaitForChild("Events")
        r1_54:WaitForChild("ToyEvent"):FireServer(unpack(r0_54))
        wait(1)
      end
    end
  end)
  r10_0.tb4:SetValue(false)
  r9_0.Boost:AddToggle("tb1", {
    Title = "Auto Blue Field Booster",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 19
    _G.tb1 = r10_0.tb1.Value
    if _G.tb1 then
      while _G.tb1 do
        local r0_19 = {
          [1] = "Blue Field Booster",
        }
        local r1_19 = game:GetService("ReplicatedStorage")
        r1_19 = r1_19:WaitForChild("Events")
        r1_19:WaitForChild("ToyEvent"):FireServer(unpack(r0_19))
        wait(1)
      end
    end
  end)
  r10_0.tb1:SetValue(false)
  r9_0.Boost:AddToggle("tb2", {
    Title = "Auto Red Field Booster",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 29
    _G.tb2 = r10_0.tb2.Value
    if _G.tb2 then
      while _G.tb2 do
        local r0_29 = {
          [1] = "Red Field Booster",
        }
        local r1_29 = game:GetService("ReplicatedStorage")
        r1_29 = r1_29:WaitForChild("Events")
        r1_29:WaitForChild("ToyEvent"):FireServer(unpack(r0_29))
        wait(1)
      end
    end
  end)
  r10_0.tb2:SetValue(false)
  r9_0.Boost:AddToggle("tb3", {
    Title = "Auto Field Booster",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 66
    _G.tb3 = r10_0.tb3.Value
    if _G.tb3 then
      while _G.tb3 do
        local r0_66 = {
          [1] = "Field Booster",
        }
        local r1_66 = game:GetService("ReplicatedStorage")
        r1_66 = r1_66:WaitForChild("Events")
        r1_66:WaitForChild("ToyEvent"):FireServer(unpack(r0_66))
        wait(1)
      end
    end
  end)
  r10_0.tb3:SetValue(false)
  r9_0.Boost:AddToggle("tb6", {
    Title = "Auto Gacha Sticker Use Basic Egg",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 96
    _G.tb6 = r10_0.tb6.Value
    if _G.tb6 then
      while _G.tb6 do
        local r0_96 = {
          [1] = "Basic Egg",
        }
        local r1_96 = game:GetService("ReplicatedStorage")
        r1_96 = r1_96:WaitForChild("Events")
        r1_96:WaitForChild("StickerPrinterActivate"):FireServer(unpack(r0_96))
        wait(1)
      end
    end
  end)
  r10_0.tb6:SetValue(false)
  r9_0.Boost:AddToggle("tb7", {
    Title = "Auto Honey Dispenser",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 62
    _G.tb7 = r10_0.tb7.Value
    if _G.tb7 then
      while _G.tb7 do
        local r0_62 = {
          [1] = "Honey Dispenser",
        }
        local r1_62 = game:GetService("ReplicatedStorage")
        r1_62 = r1_62:WaitForChild("Events")
        r1_62:WaitForChild("ToyEvent"):FireServer(unpack(r0_62))
        wait(1)
      end
    end
  end)
  r10_0.tb7:SetValue(false)
  r9_0.Boost:AddToggle("tb8", {
    Title = "Auto Blueberry Dispenser",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 3
    _G.tb8 = r10_0.tb8.Value
    if _G.tb8 then
      while _G.tb8 do
        local r0_3 = {
          [1] = "Blueberry Dispenser",
        }
        local r1_3 = game:GetService("ReplicatedStorage")
        r1_3 = r1_3:WaitForChild("Events")
        r1_3:WaitForChild("ToyEvent"):FireServer(unpack(r0_3))
        wait(1)
      end
    end
  end)
  r10_0.tb8:SetValue(false)
  r9_0.Boost:AddToggle("tb9", {
    Title = "Auto Strawberry Dispenser",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 100
    _G.tb9 = r10_0.tb9.Value
    if _G.tb9 then
      while _G.tb9 do
        local r0_100 = {
          [1] = "Strawberry Dispenser",
        }
        local r1_100 = game:GetService("ReplicatedStorage")
        r1_100 = r1_100:WaitForChild("Events")
        r1_100:WaitForChild("ToyEvent"):FireServer(unpack(r0_100))
        wait(1)
      end
    end
  end)
  r10_0.tb9:SetValue(false)
  r9_0.Boost:AddToggle("tb10", {
    Title = "Auto Treat Dispenser",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 130
    _G.tb10 = r10_0.tb10.Value
    if _G.tb10 then
      while _G.tb10 do
        local r0_130 = {
          [1] = "Treat Dispenser",
        }
        local r1_130 = game:GetService("ReplicatedStorage")
        r1_130 = r1_130:WaitForChild("Events")
        r1_130:WaitForChild("ToyEvent"):FireServer(unpack(r0_130))
        wait(1)
      end
    end
  end)
  r10_0.tb10:SetValue(false)
  r9_0.Boost:AddButton({
    Title = "Claim Glue Dispenser",
    Description = "",
    Callback = function()
      -- line: [0, 0] id: 65
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ToyEvent"):FireServer(unpack({
        [1] = "Glue Dispenser",
      }))
    end,
  })
  r9_0.Boost:AddButton({
    Title = "Claim Free Royal Jelly Per Gifted bee",
    Description = "",
    Callback = function()
      -- line: [0, 0] id: 95
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ToyEvent"):FireServer(unpack({
        [1] = "Free Royal Jelly Dispenser",
      }))
    end,
  })
  r9_0.Boost:AddButton({
    Title = "Summon Mythic Meteor Shower",
    Description = "",
    Callback = function()
      -- line: [0, 0] id: 134
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ToyEvent"):FireServer(unpack({
        [1] = "Mythic Meteor Shower",
      }))
    end,
  })
  r9_0.Boost:AddButton({
    Title = "Summon Honey Storm",
    Description = "",
    Callback = function()
      -- line: [0, 0] id: 28
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ToyEvent"):FireServer(unpack({
        [1] = "Honeystorm",
      }))
    end,
  })
  r9_0.Boost:AddButton({
    Title = "Summon Special Sprout",
    Description = "",
    Callback = function()
      -- line: [0, 0] id: 32
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ToyEvent"):FireServer(unpack({
        [1] = "Sprout Summoner",
      }))
    end,
  })
  r9_0.Credit:AddParagraph({
    Title = "Click Button To Copy Link",
    Content = "",
  })
  r9_0.Credit:AddButton({
    Title = "Buy Lifetime Key",
    Description = "buy to support me :D",
    Callback = function()
      -- line: [0, 0] id: 56
      pcall(function()
        -- line: [0, 0] id: 57
        setclipboard("https://discordapp.com/users/955103993418375198")
      end)
    end,
  })
  r9_0.Credit:AddButton({
    Title = "Youtube Channel",
    Description = "check it now many good scripts :)",
    Callback = function()
      -- line: [0, 0] id: 107
      pcall(function()
        -- line: [0, 0] id: 108
        setclipboard("https://www.youtube.com/@BaconBossScripts")
      end)
    end,
  })
  r9_0.Credit:AddButton({
    Title = "Discord",
    Description = "stay turn for more update and report bug \xed\xa0\xbd\xed\xb0\x9b",
    Callback = function()
      -- line: [0, 0] id: 30
      pcall(function()
        -- line: [0, 0] id: 31
        setclipboard("https://discord.gg/xUvY22gZp4")
      end)
    end,
  })
  r9_0.Setting:AddParagraph({
    Title = "Setting | Main",
    Content = "",
  })
  r9_0.Setting:AddDropdown("MultiDropdown", {
    Title = "Select Farm Method",
    Description = "You can select multiple method",
    Values = {
      "Walk Around",
      "Token",
      "Fruit",
      "Bubble",
      "Honey"
    },
    Multi = true,
    Default = {},
  }):OnChanged(function(r0_127)
    -- line: [0, 0] id: 127
    local r1_127 = r0_127["Walk Around"]
    if not r1_127 then
      r1_127 = false
    end
    r11_0 = r1_127
    r1_127 = r0_127.Token
    if not r1_127 then
      r1_127 = false
    end
    r12_0 = r1_127
    r1_127 = r0_127.Fruit
    if not r1_127 then
      r1_127 = false
    end
    r13_0 = r1_127
    r14_0 = r0_127.Bubble or false
    r1_127 = r0_127.Honey
    if not r1_127 then
      r1_127 = false
    end
    r15_0 = r1_127
  end)
  r9_0.Setting:AddDropdown("Dropdown", {
    Title = "Select Field",
    Values = r25_0,
    Multi = false,
    Default = 1,
  }):OnChanged(function(r0_47)
    -- line: [0, 0] id: 47
    r26_0 = r0_47
  end)
  r9_0.Setting:AddDropdown("Dropdown1", {
    Title = "Way To Convert",
    Values = {
      "Walk",
      "Reset",
      "Tween - Risk"
    },
    Multi = false,
    Default = 1,
  }):OnChanged(function(r0_48)
    -- line: [0, 0] id: 48
    r28_0 = r0_48
  end)
  r9_0.Setting:AddDropdown("Dropdown2", {
    Title = "Way To Move",
    Values = {
      "Walk",
      "Tween - Risk"
    },
    Multi = false,
    Default = 1,
  }):OnChanged(function(r0_99)
    -- line: [0, 0] id: 99
    r29_0 = r0_99
  end)
  local r72_0 = r9_0.Setting:AddInput("Input", {
    Title = "% Convert",
    Default = "",
    Placeholder = "input number",
    Numeric = true,
    Finished = false,
    Callback = function(r0_64)
      -- line: [0, 0] id: 64
      r27_0 = tonumber(r0_64)
    end,
  })
  local r73_0 = r9_0.Setting:AddInput("Input1", {
    Title = "When Convert Balloon",
    Default = "",
    Placeholder = "input number",
    Numeric = false,
    Finished = false,
    Callback = function(r0_27)
      -- line: [0, 0] id: 27
      local r1_27 = r0_27:lower()
      if not r1_27:match("[kmnbt]$") then
        r34_0 = tonumber(r0_27)
      else
        local r2_27 = 1
        local r3_27 = r1_27:sub(-1)
        if r3_27 == "k" then
          r2_27 = 1000
        elseif r3_27 ~= "m" then
          if r3_27 ~= "b" then
            if r3_27 == "t" then
              r2_27 = 1000000000000
            end
          else
            r2_27 = 1000000000
          end
        else
          r2_27 = 1000000
        end
        r34_0 = tonumber(r1_27:match("%d+")) * r2_27
      end
    end,
  })
  local r74_0 = r9_0.Setting:AddInput("Input2", {
    Title = "Tween Speed",
    Default = "",
    Placeholder = "input number",
    Numeric = true,
    Finished = false,
    Callback = function(r0_106)
      -- line: [0, 0] id: 106
      r31_0 = tonumber(r0_106)
    end,
  })
  r9_0.Setting:AddParagraph({
    Title = "Setting | Quest",
    Content = "",
  })
  r9_0.Setting:AddDropdown("Dropdown4", {
    Title = "Select Quest",
    Values = {
      "Bucko Bee",
      "Polar Bear",
      "Black Bear",
      "Black Bear - Repeatable",
      "Riley Bee",
      "Brown Bear",
      "Onett",
      "Spirit Bear"
    },
    Multi = false,
    Default = 1,
  }):OnChanged(function(r0_97)
    -- line: [0, 0] id: 97
    r32_0 = r0_97
  end)
  r9_0.Setting:AddDropdown("Dropdown5", {
    Title = "Select Bee You Have",
    Values = {
      "under 5",
      "under 15",
      "under 35",
      "over 35"
    },
    Multi = false,
    Default = 1,
  }):OnChanged(function(r0_101)
    -- line: [0, 0] id: 101
    r33_0 = r0_101
  end)
  r9_0.Main:AddParagraph({
    Title = "Main | Farm",
    Content = "",
  })
  r9_0.Main:AddToggle("MyToggle", {
    Title = "Auto Farm",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 68
    _G.Mytoggle = r10_0.MyToggle.Value
    if _G.Mytoggle then
      while _G.Mytoggle do
        pcall(function()
          -- line: [0, 0] id: 69
          local r0_69 = game.Players.LocalPlayer.Character
          getgenv().char = game.Players.LocalPlayer.Character
          getgenv().humanoid = char.Humanoid
          getgenv().maxDistance = 100
          if not r0_69 then
            return 
          end
          local r1_69 = r0_69.PrimaryPart.Position
          local r2_69 = workspace.FlowerZones:FindFirstChild(r26_0)
          local r3_69 = game.Players.LocalPlayer
          local r4_69 = r3_69.Character or r3_69.CharacterAdded:Wait()
          local r5_69 = r4_69:WaitForChild("HumanoidRootPart")
          local r6_69 = workspace.FlowerZones:FindFirstChild(r26_0)
          local r7_69 = r6_69.Size
          local r8_69 = r6_69.Position
          local r9_69 = r4_69:WaitForChild("Humanoid")
          function getHumanoidAndRootPart()
            -- line: [0, 0] id: 73
            local r0_73 = game.Players.LocalPlayer.Character
            if r0_73 then
              return r0_73:FindFirstChild("HumanoidRootPart"), r0_73:FindFirstChild("Humanoid")
            end
            return nil, nil
          end
          function moveAndPlaceSprinkler(r0_81)
            -- line: [0, 0] id: 81
            local r1_81, r2_81 = getHumanoidAndRootPart()
            if not r1_81 or not r2_81 then
              return 
            end
            for r6_81, r7_81 in pairs(r0_81) do
              r2_81:MoveTo(r7_81)
              r2_81.MoveToFinished:Wait()
              r2_81.Jump = true
              wait(0.2)
              game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerActivesCommand"):FireServer(unpack({
                [1] = {
                  Name = "Sprinkler Builder",
                },
              }))
              wait(2)
            end
          end
          function data()
            -- line: [0, 0] id: 80
            return game.ReplicatedStorage.Events.RetrievePlayerStats:InvokeServer()
          end
          if r2_69 then
            local r10_69 = 10
            local function r11_69(r0_72, r1_72, r2_72)
              -- line: [0, 0] id: 72
              local r3_72 = r1_72.Position
              local r4_72 = r1_72.Size
              if r3_72 and r4_72 then
                local r5_72 = Vector3.new(r4_72.X + r2_72, r4_72.Y, r4_72.Z + r2_72)
                local r6_72 = r3_72 - r5_72 / 2
                local r7_72 = r3_72 + r5_72 / 2
                local r8_72 = r0_72.X
                if r6_72.X <= r8_72 then
                  r8_72 = r0_72.X
                  if r8_72 > r7_72.X then
                    goto label_36
                  else
                    r8_72 = r0_72.Z
                    if r6_72.Z <= r8_72 then
                      r8_72 = r0_72.Z
                      if r8_72 <= r7_72.Z then
                        r8_72 = true
                      end
                    end
                  end
                else
                  ::label_36::
                  ::label_36::
                  r8_72 = false
                end
                return r8_72
              end
              return false
            end
            function IsToken(r0_75)
              -- line: [0, 0] id: 75
              if not r0_75 then
                return false
              end
              if not r0_75.Parent then
                return false
              end
              if r0_75.Orientation.Z ~= 0 then
                return false
              end
              if not r0_75:FindFirstChild("FrontDecal") then
                return false
              end
              if not r0_75:FindFirstChild("Sparkles") then
                return false
              end
              if r0_75.Name ~= "C" then
                return false
              end
              if not r0_75:IsA("Part") then
                return false
              end
              return true
            end
            function farm(r0_79)
              -- line: [0, 0] id: 79
              r9_69:MoveTo(r0_79.Position)
              while true do
                task.wait()
                if IsToken(r0_79) then
                  local r1_79 = (r0_79.Position - char.HumanoidRootPart.Position).magnitude
                  if r1_79 > 4 then
                    r1_79 = isCharacterAlive()
                    if not r1_79 then
                      break
                    end
                  else
                    break
                  end
                else
                  break
                end
              end
            end
            function collectFruit()
              -- line: [0, 0] id: 77
              for r3_77, r4_77 in pairs(workspace.Collectibles:GetChildren()) do
                if r13_0 and r4_77:FindFirstChild("BackDecal") then
                  if r4_77.BackDecal.Texture ~= "rbxassetid://2028453802" and r4_77.BackDecal.Texture ~= "rbxassetid://1952740625" and r4_77.BackDecal.Texture ~= "rbxassetid://1952682401" and r4_77.BackDecal.Texture ~= "rbxassetid://1952796032" then
                  end
                  if (r4_77.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and isCharacterAlive() then
                    farm(r4_77)
                  end
                end
              end
            end
            function collectHoney()
              -- line: [0, 0] id: 70
              for r3_70, r4_70 in pairs(workspace.Collectibles:GetChildren()) do
                if r15_0 and r4_70:FindFirstChild("BackDecal") and r4_70.BackDecal.Texture == "rbxassetid://1472135114" and (r4_70.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and isCharacterAlive() then
                  farm(r4_70)
                end
              end
            end
            function collectToken()
              -- line: [0, 0] id: 71
              local r0_71 = next
              local r1_71, r2_71 = game:GetService("Workspace").Collectibles:GetChildren()
              for r3_71, r4_71 in r0_71, r1_71, r2_71 do
                if r12_0 and IsToken(r4_71) and (r4_71.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and isCharacterAlive() then
                  farm(r4_71)
                end
              end
            end
            function collectBubble()
              -- line: [0, 0] id: 76
              local r0_76 = next
              local r1_76, r2_76 = game:GetService("Workspace").Particles:GetChildren()
              for r3_76, r4_76 in r0_76, r1_76, r2_76 do
                if not game:GetService("Workspace").Particles:FindFirstChild("Bubble") then
                  break
                elseif r14_0 and string.find(r4_76.Name, "Bubble") and (r4_76.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and isCharacterAlive() then
                  farm(r4_76)
                end
              end
            end
            local function r12_69(r0_74, r1_74)
              -- line: [0, 0] id: 74
              local r2_74 = r0_74.X - r1_74.X / 2
              local r4_74 = r0_74.Z - r1_74.Z / 2
              return Vector3.new(math.random() * (r0_74.X + r1_74.X / 2 - r2_74) + r2_74, r0_74.Y, math.random() * (r0_74.Z + r1_74.Z / 2 - r4_74) + r4_74)
            end
            local function r13_69()
              -- line: [0, 0] id: 78
              local r0_78 = r12_69(r8_69, r7_69)
              if r11_0 then
                r9_69:MoveTo(r0_78)
              end
            end
            if not isCharacterAlive() then
              wait(0.2)
              return 
            end
            local r14_69 = r11_69(r1_69, r2_69, r10_69)
            if r18_0 and r20_0 and r21_0 and r23_0 and not r16_0 and isCharacterAlive() then
              if r14_69 then
                collectFruit()
                collectBubble()
                collectToken()
                collectHoney()
                r13_69()
              elseif r29_0 == "Walk" or r29_0 == "Tween - Risk" then
                local r15_69 = workspace.FlowerZones:FindFirstChild(r26_0)
                while true do
                  wait(0.2)
                  if not r11_69(r4_69.PrimaryPart.Position, r15_69, r10_69) then
                    local r16_69 = r4_69:FindFirstChildOfClass("Humanoid")
                    if r16_69 then
                      if r29_0 == "Walk" then
                        r16_69:MoveTo(r15_69.Position)
                        local r17_69 = r4_69:FindFirstChildOfClass("Humanoid")
                        local r18_69 = r4_69:FindFirstChild("HumanoidRootPart")
                        if r17_69 and r18_69 and workspace:FindPartOnRay(Ray.new(r18_69.Position, r18_69.CFrame.LookVector * r24_0), r4_69) and r17_69:GetState() ~= Enum.HumanoidStateType.Jumping then
                          r17_69:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                      else
                        local r18_69 = game:GetService("TweenService"):Create(r4_69.HumanoidRootPart, TweenInfo.new(((r15_69.Position - r4_69.HumanoidRootPart.Position)).magnitude / r31_0, Enum.EasingStyle.Linear), {
                          CFrame = r15_69.CFrame,
                        })
                        local r19_69 = Instance.new("BodyVelocity", r4_69.HumanoidRootPart)
                        local r20_69 = Vector3.new(0, 0, 0)
                        r19_69.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                        r19_69.velocity = r20_69
                        r19_69.Name = "Main"
                        r18_69:Play()
                        r18_69.Completed:Wait()
                        r19_69:Destroy()
                      end
                    end
                  end
                  local r16_69 = _G.Mytoggle
                  if r16_69 then
                    r16_69 = r11_69(r4_69.PrimaryPart.Position, r15_69, r10_69)
                    if not r16_69 then
                      r16_69 = r18_0
                      if not r16_69 then
                        break
                      else
                        r16_69 = r20_0
                        if r16_69 then
                          r16_69 = r21_0
                          if r16_69 then
                            r16_69 = r23_0
                            if r16_69 then
                              r16_69 = r16_0
                              if not r16_69 then
                                r16_69 = isCharacterAlive()
                                if not r16_69 then
                                  break
                                end
                              else
                                break
                              end
                            else
                              break
                            end
                          else
                            break
                          end
                        else
                          break
                        end
                      end
                    else
                      break
                    end
                  else
                    break
                  end
                end
                wait(1.5)
                if r18_0 and _G.Mytoggle then
                  local r16_69, r17_69 = getHumanoidAndRootPart()
                  if r16_69 and r17_69 then
                    local r18_69 = data().EquippedSprinkler
                    if r18_69 ~= "Basic Sprinkler" and r18_69 ~= "The Supreme Saturator" then
                      if r18_69 ~= "Silver Soakers" then
                        if r18_69 == "Golden Gushers" then
                          moveAndPlaceSprinkler({
                            r16_69.Position + r16_69.CFrame.LookVector * 1,
                            r16_69.Position - r16_69.CFrame.LookVector * 20,
                            r16_69.Position - r16_69.CFrame.RightVector * 20
                          })
                        elseif r18_69 == "Diamond Drenchers" then
                          moveAndPlaceSprinkler({
                            r16_69.Position + r16_69.CFrame.LookVector * 1,
                            r16_69.Position - r16_69.CFrame.LookVector * 20,
                            r16_69.Position - r16_69.CFrame.RightVector * 20,
                            r16_69.Position + r16_69.CFrame.RightVector * 20
                          })
                        end
                      else
                        moveAndPlaceSprinkler({
                          r16_69.Position + r16_69.CFrame.LookVector * 1,
                          r16_69.Position - r16_69.CFrame.LookVector * 20
                        })
                      end
                    end
                    moveAndPlaceSprinkler({
                      r16_69.Position + r16_69.CFrame.LookVector * 1
                    })
                  end
                end
              end
            end
            -- close: r10_69
          end
        end)
        wait(0.1)
      end
    end
  end)
  r10_0.MyToggle:SetValue(false)
  r9_0.Main:AddToggle("MyToggle1", {
    Title = "Auto Convert",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 58
    _G.Mytoggle1 = r10_0.MyToggle1.Value
    if _G.Mytoggle1 then
      while true do
        if _G.Mytoggle1 then
          pcall(function()
            -- line: [0, 0] id: 59
            local r0_59 = game.Players.LocalPlayer.Character
            if not r0_59 then
              return 
            end
            local r1_59 = game.Players.LocalPlayer
            local r3_59 = nil
            for r7_59, r8_59 in pairs(workspace.Honeycombs:GetDescendants()) do
              if r8_59:IsA("ObjectValue") and r8_59.Name == "Owner" and r8_59.Value == r1_59 then
                for r13_59, r14_59 in pairs(r8_59.Parent:GetDescendants()) do
                  if r14_59.Name == "StickerCanvas" then
                    r3_59 = r14_59.Value
                  end
                end
              end
            end
            local r4_59 = 2.5
            local function r5_59(r0_60, r1_60, r2_60)
              -- line: [0, 0] id: 60
              local r3_60 = r1_60.Position
              local r4_60 = r1_60.Size
              if r3_60 and r4_60 then
                local r5_60 = Vector3.new(r4_60.X + r2_60, r4_60.Y, r4_60.Z + r2_60)
                local r6_60 = r3_60 - r5_60 / 2
                local r7_60 = r3_60 + r5_60 / 2
                local r8_60 = r0_60.X
                if r6_60.X > r8_60 then
                  goto label_39
                else
                  r8_60 = r0_60.X
                  if r8_60 > r7_60.X then
                    goto label_39
                  else
                    r8_60 = r0_60.Z
                    if r6_60.Z > r8_60 then
                      goto label_39
                    else
                      r8_60 = r0_60.Z
                      if r8_60 <= r7_60.Z then
                        r8_60 = true
                      else
                        ::label_39::
                        ::label_39::
                        r8_60 = false
                      end
                    end
                  end
                end
                return r8_60
              end
              return false
            end
            local r7_59, r8_59 = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MeterHUD.PollenMeter.Bar.TextLabel.Text:match("([^/]+)/([^/]+)")
            local function r9_59(r0_61)
              -- line: [0, 0] id: 61
              return r0_61:gsub(",", "")
            end
            local r10_59 = r9_59(r7_59)
            local r11_59 = r9_59(r8_59)
            local r12_59 = tonumber(r10_59)
            local r13_59 = tonumber(r11_59)
            if r12_59 and r13_59 and r13_59 * r27_0 / 100 <= r12_59 or r30_0 then
              r18_0 = false
              r19_0 = false
              r20_0 = false
              r21_0 = false
              r22_0 = false
              r17_0 = false
              if r28_0 == "Reset" then
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                while true do
                  wait(0.2)
                  if game.Players.LocalPlayer.Character then
                    local r14_59 = game.Players.LocalPlayer.Character.Humanoid.Health
                    if r14_59 > 0 then
                      break
                    end
                  else
                    local r14_59 = _G.Mytoggle1
                    if not r14_59 then
                      break
                    end
                  end
                end
                wait(0.5)
                while true do
                  game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerHiveCommand"):FireServer("ToggleHoneyMaking")
                  wait(0.5)
                  make_honey = game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.TextBox.Text
                  if make_honey == "Make Honey" then
                    local r14_59 = _G.Mytoggle1
                    if not r14_59 then
                      break
                    end
                  else
                    break
                  end
                end
                while true do
                  r7_59, r8_59 = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MeterHUD.PollenMeter.Bar.TextLabel.Text:match("([^/]+)/([^/]+)")
                  r12_59 = tonumber(r9_59(r7_59))
                  wait(0.2)
                  if r12_59 == 0 then
                    local r14_59 = r30_0
                    if r14_59 then
                      ::label_198::
                      r14_59 = _G.Mytoggle1
                      if not r14_59 then
                        break
                      end
                    else
                      break
                    end
                  else
                    goto label_198	-- block#28 is visited secondly
                  end
                end
                wait(6.5)
                r18_0 = true
                r19_0 = true
                r20_0 = true
                r21_0 = true
                r22_0 = true
                r17_0 = true
              elseif r28_0 == "Walk" or r28_0 == "Tween - Risk" then
                r18_0 = false
                r19_0 = false
                r20_0 = false
                r21_0 = false
                r22_0 = false
                r17_0 = false
                local r14_59 = workspace.HiveDeco.StickerCanvases[r3_59.Name].PlaceableSurfaces.NegateCircle
                repeat
                  wait(0.2)
                  if not r5_59(r0_59.PrimaryPart.Position, r14_59, r4_59) then
                    local r15_59 = r0_59:FindFirstChildOfClass("Humanoid")
                    if r15_59 then
                      if r28_0 == "Walk" then
                        r15_59:MoveTo(r14_59.Position)
                        local r16_59 = r0_59:FindFirstChildOfClass("Humanoid")
                        local r17_59 = r0_59:FindFirstChild("HumanoidRootPart")
                        if r16_59 and r17_59 and workspace:FindPartOnRay(Ray.new(r17_59.Position, r17_59.CFrame.LookVector * 8), r0_59) and r16_59:GetState() ~= Enum.HumanoidStateType.Jumping then
                          r16_59:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                      else
                        local r17_59 = game:GetService("TweenService"):Create(r0_59.HumanoidRootPart, TweenInfo.new(((r14_59.Position - r0_59.HumanoidRootPart.Position)).magnitude / r31_0, Enum.EasingStyle.Linear), {
                          CFrame = r14_59.CFrame,
                        })
                        local r18_59 = Instance.new("BodyVelocity", r0_59.HumanoidRootPart)
                        local r19_59 = Vector3.new(0, 0, 0)
                        r18_59.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                        r18_59.velocity = r19_59
                        r18_59.Name = "Main"
                        r17_59:Play()
                        r17_59.Completed:Wait()
                        r18_59:Destroy()
                      end
                    end
                  end
                  local r15_59 = r5_59(r0_59.PrimaryPart.Position, r14_59, r4_59)
                  if r15_59 then
                    break
                  end
                  r15_59 = _G.Mytoggle1
                until not r15_59
                wait(0.5)
                repeat
                  game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerHiveCommand"):FireServer("ToggleHoneyMaking")
                  wait(0.5)
                  make_honey = game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.TextBox.Text
                  if make_honey ~= "Make Honey" then
                    break
                  end
                  local r15_59 = _G.Mytoggle1
                until not r15_59
                while true do
                  r7_59, r8_59 = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MeterHUD.PollenMeter.Bar.TextLabel.Text:match("([^/]+)/([^/]+)")
                  r12_59 = tonumber(r9_59(r7_59))
                  wait(0.2)
                  if r12_59 == 0 then
                    local r15_59 = r30_0
                    if r15_59 then
                      ::label_439::
                      r15_59 = _G.Mytoggle1
                      if not r15_59 then
                        break
                      end
                    else
                      break
                    end
                  else
                    goto label_439	-- block#54 is visited secondly
                  end
                end
                wait(6.5)
                r18_0 = true
                r19_0 = true
                r20_0 = true
                r21_0 = true
                r22_0 = true
                r17_0 = true
              end
            else
              r18_0 = true
              r19_0 = true
              r22_0 = true
              r17_0 = true
            end
          end)
          wait(0.2)
        end
      end
      r18_0 = true
      r19_0 = true
      r20_0 = true
      r21_0 = true
      r22_0 = true
      r17_0 = true
    else
      goto label_30	-- block#3 is visited secondly
    end
  end)
  r10_0.MyToggle1:SetValue(false)
  r9_0.Main:AddToggle("MyToggle2", {
    Title = "Auto Convert Balloon",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 20
    _G.MyToggle2 = r10_0.MyToggle2.Value
    if not _G.MyToggle2 then
      r30_0 = false
    else
      spawn(function()
        -- line: [0, 0] id: 21
        while _G.MyToggle2 do
          wait()
          pcall(function()
            -- line: [0, 0] id: 22
            local r1_22 = game.Players.LocalPlayer
            local r3_22 = nil
            local r4_22 = nil
            local r5_22 = 10
            for r9_22, r10_22 in pairs(workspace.Honeycombs:GetDescendants()) do
              if r10_22:IsA("ObjectValue") and r10_22.Name == "Owner" and r10_22.Value == r1_22 then
                for r15_22, r16_22 in pairs(r10_22.Parent:GetDescendants()) do
                  if r16_22.Name == "LightHolder" then
                    r3_22 = r16_22
                    break
                  end
                end
              end
            end
            local function r6_22(r0_25, r1_25, r2_25)
              -- line: [0, 0] id: 25
              local r3_25 = r1_25.Position
              local r4_25 = r1_25.Size
              if r3_25 and r4_25 then
                local r5_25 = Vector3.new(r4_25.X + r2_25, r4_25.Y, r4_25.Z + r2_25)
                local r6_25 = r3_25 - r5_25 / 2
                local r7_25 = r3_25 + r5_25 / 2
                local r8_25 = r0_25.X
                if r6_25.X > r8_25 then
                  goto label_36
                else
                  r8_25 = r0_25.X
                  if r8_25 > r7_25.X then
                    goto label_36
                  else
                    r8_25 = r0_25.Z
                    if r6_25.Z <= r8_25 then
                      r8_25 = r0_25.Z <= r7_25.Z
                    else
                      goto label_36	-- block#8 is visited secondly
                    end
                  end
                end
                return r8_25
              end
              return false
            end
            local function r7_22(r0_24, r1_24, r2_24)
              -- line: [0, 0] id: 24
              if r0_24 and r1_24 then
                return r6_22(r0_24.Position, r1_24, r2_24)
              end
              return false
            end
            local function r8_22()
              -- line: [0, 0] id: 23
              local r0_23 = nil	-- notice: implicit variable refs by block#[0]
              r0_22 = r0_23
              r0_23 = r4_22
              if r0_23 then
                r0_23 = pairs
                for r3_23, r4_23 in r0_23(r4_22:GetDescendants()) do
                  if r4_23.Name == "TextLabel" and r4_23.Parent and r4_23.Parent.Name == "Bar" then
                    r0_22 = tonumber(r4_23.Text:gsub(",", ""))
                  end
                end
              end
            end
            local function r9_22()
              -- line: [0, 0] id: 26
              local r0_26 = nil	-- notice: implicit variable refs by block#[0]
              r4_22 = r0_26
              r0_26 = pairs
              for r3_26, r4_26 in r0_26(workspace.Balloons.HiveBalloons:GetDescendants()) do
                if r4_26.Name == "BalloonBody" and r7_22(r4_26, r3_22, r5_22) then
                  r4_22 = r4_26
                  break
                end
              end
            end
            r9_22()
            r8_22()
            local r0_22 = nil	-- notice: implicit variable refs by block#[10, 13, 15, 20, 22]
            if r4_22 then
              if not r7_22(r4_22, r3_22, r5_22) then
                goto label_123
              else
                r8_22()
                if r0_22 == nil then
                  r30_0 = false
                  wait(0.2)
                elseif r34_0 <= r0_22 then
                  while true do
                    wait(0.3)
                    r30_0 = true
                    r8_22()
                    r9_22()
                    if not r4_22 then
                      break
                    end
                    local r10_22 = r7_22(r4_22, r3_22, r5_22)
                    if not r10_22 then
                      break
                    elseif r0_22 == 0 then
                      break
                    elseif r0_22 == nil then
                      break
                    else
                      r10_22 = _G.MyToggle2
                      if not r10_22 then
                        break
                      end
                    end
                  end
                  wait(0.2)
                  r30_0 = false
                  wait(0.2)
                else
                  r30_0 = false
                  wait(0.2)
                end
              end
            else
              ::label_123::
              ::label_123::
              r30_0 = false
              wait(0.2)
            end
          end)
        end
      end)
    end
  end)
  r10_0.MyToggle2:SetValue(false)
  r9_0.Main:AddToggle("MyToggle3", {
    Title = "Auto Dig",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 42
    _G.Mytoggle3 = r10_0.MyToggle3.Value
    if _G.Mytoggle3 then
      while _G.Mytoggle3 do
        local r0_42 = game:GetService("ReplicatedStorage")
        r0_42:WaitForChild("Events"):WaitForChild("ToolCollect"):FireServer()
        wait(0.1)
      end
    end
  end)
  r10_0.MyToggle3:SetValue(false)
  r9_0.Main:AddParagraph({
    Title = "Main | Quest",
    Content = "",
  })
  r9_0.Main:AddButton({
    Title = "Remove Black Bear Quest",
    Description = "this only for who have 2 black bear quests",
    Callback = function()
      -- line: [0, 0] id: 34
      pcall(function()
        -- line: [0, 0] id: 35
        local r0_35 = game:GetService("Players").LocalPlayer
        local r1_35 = r0_35.Character
        local r2_35 = r0_35:FindFirstChild("PlayerGui"):FindFirstChild("ScreenGui")
        local r3_35 = nil	-- notice: implicit variable refs by block#[4, 5]
        if not r2_35 then
          goto label_20
        else
          r3_35 = r2_35:FindFirstChild("Menus")
          if not r3_35 then
            ::label_20::
            ::label_20::
            r3_35 = nil
          end
        end
        local r4_35 = nil	-- notice: implicit variable refs by block#[8, 9]
        if r3_35 then
          r4_35 = r3_35:FindFirstChild("Children")
          if r4_35 then
          end
        else
          r4_35 = nil
        end
        local r5_35 = nil	-- notice: implicit variable refs by block#[11, 12]
        if r4_35 then
          r5_35 = r4_35:FindFirstChild("Quests")
          if not r5_35 then
            ::label_37::
            r5_35 = nil
          end
        else
          goto label_37	-- block#10 is visited secondly
        end
        local r6_35 = nil	-- notice: implicit variable refs by block#[14, 15]
        if r5_35 then
          r6_35 = r5_35:FindFirstChild("Content")
          if not r6_35 then
            ::label_45::
            r6_35 = nil
          end
        else
          goto label_45	-- block#13 is visited secondly
        end
        local r7_35 = nil	-- notice: implicit variable refs by block#[18, 20]
        if r6_35 then
          r7_35 = r6_35:FindFirstChild("Frame")
          if r7_35 then
          end
        else
          r7_35 = nil
        end
        if not r7_35 then
          r5_0:Notify({
            Title = "Open Menu Quest First",
            Content = "",
            Duration = 3,
          })
          task.wait(1)
        else
          for r11_35, r12_35 in pairs(r7_35:GetDescendants()) do
            if r12_35.Name == "TitleBar" and r12_35.Text:match("Black Bear") then
              r12_35.Parent:Destroy()
            end
          end
        end
      end)
    end,
  })
  r9_0.Main:AddToggle("quest9", {
    Title = "Auto Claim Quest",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 102
    _G.quest9 = r10_0.quest9.Value
    if _G.quest9 then
      while _G.quest9 do
        local r0_102 = game:GetService("Players").LocalPlayer
        local r1_102 = r0_102.Character
        if not r1_102 then
          goto label_26
        elseif not r1_102.PrimaryPart then
          ::label_26::
          ::label_26::
          return 
        end
        local r2_102 = r0_102:FindFirstChild("PlayerGui"):FindFirstChild("ScreenGui")
        local r3_102 = nil	-- notice: implicit variable refs by block#[12, 13]
        if not r2_102 then
          goto label_42
        else
          r3_102 = r2_102:FindFirstChild("Menus")
          if not r3_102 then
            ::label_42::
            ::label_42::
            r3_102 = nil
          end
        end
        local r4_102 = nil	-- notice: implicit variable refs by block#[15, 16]
        if r3_102 then
          r4_102 = r3_102:FindFirstChild("Children")
          if not r4_102 then
            ::label_50::
            r4_102 = nil
          end
        else
          goto label_50	-- block#14 is visited secondly
        end
        local r5_102 = nil	-- notice: implicit variable refs by block#[19, 21]
        if r4_102 then
          r5_102 = r4_102:FindFirstChild("Quests")
          if r5_102 then
          end
        else
          r5_102 = nil
        end
        local r6_102 = nil	-- notice: implicit variable refs by block#[23, 25]
        if not r5_102 then
          goto label_68
        else
          r6_102 = r5_102:FindFirstChild("Content")
          if not r6_102 then
            ::label_68::
            ::label_68::
            r6_102 = nil
          end
        end
        local r7_102 = nil	-- notice: implicit variable refs by block#[28, 40]
        if not r6_102 then
          goto label_78
        else
          r7_102 = r6_102:FindFirstChild("Frame")
          if not r7_102 then
            ::label_78::
            ::label_78::
            r7_102 = nil
          end
        end
        local r8_102 = 2.5
        local function r9_102(r0_104, r1_104, r2_104)
          -- line: [0, 0] id: 104
          local r3_104 = r1_104.Position
          local r4_104 = r1_104.Size
          if r3_104 and r4_104 then
            local r5_104 = Vector3.new(r4_104.X + r2_104, r4_104.Y, r4_104.Z + r2_104)
            local r6_104 = r3_104 - r5_104 / 2
            local r7_104 = r3_104 + r5_104 / 2
            local r8_104 = r0_104.X
            if r6_104.X <= r8_104 then
              r8_104 = r0_104.X
              if r8_104 > r7_104.X then
                goto label_38
              else
                r8_104 = r0_104.Z
                if r6_104.Z > r8_104 then
                  goto label_38
                else
                  r8_104 = r0_104.Z
                  if r8_104 <= r7_104.Z then
                    r8_104 = true
                  end
                end
              end
            else
              ::label_38::
              ::label_38::
              r8_104 = false
            end
            return r8_104
          end
          return false
        end
        local r10_102 = nil
        function containsTitleBarWithText()
          -- line: [0, 0] id: 103
          for r3_103, r4_103 in pairs(r7_102:GetDescendants()) do
            if r32_0 == "Black Bear" then
              if r4_103.Name == "TitleBar" then
                if not r4_103.Text:match("Sunflower Start") and not r4_103.Text:match("Dandelion Deed") and not r4_103.Text:match("Pollen Fetcher") and not r4_103.Text:match("Red Request") and not r4_103.Text:match("Into The Blue") and not r4_103.Text:match("Variety Fetcher") and not r4_103.Text:match("Bamboo Boogie") and not r4_103.Text:match("Red Request 2") and not r4_103.Text:match("Cobweb Sweeper") and not r4_103.Text:match("Leisure Loot") and not r4_103.Text:match("White Pollen Wrangler") and not r4_103.Text:match("Pineapple Picking") and not r4_103.Text:match("Pollen Fetcher 2") and not r4_103.Text:match("Weed Wacker") and not r4_103.Text:match("Gold") and not r4_103.Text:match("Colorless Collection") and not r4_103.Text:match("Spirit of Springtime") and not r4_103.Text:match("Weed Wacker 2") and not r4_103.Text:match("Pollen Fetcher 3") and not r4_103.Text:match("Lucky Landscaping") and not r4_103.Text:match("Azure Adventure") and not r4_103.Text:match("Pink Pineapples") and not r4_103.Text:match("Blue Mushrooms") and not r4_103.Text:match("Cobweb Sweeper 2") and not r4_103.Text:match("Rojo") and not r4_103.Text:match("Pumpkin Plower") and not r4_103.Text:match("Pollen Fetcher 4") and not r4_103.Text:match("Bouncing Around Biomes") and not r4_103.Text:match("Blue Pineapples") and not r4_103.Text:match("Rose Request") and not r4_103.Text:match("Search For The White Clover") and not r4_103.Text:match("Stomping Grounds") and not r4_103.Text:match("Collecting Cliffside") and not r4_103.Text:match("Mountain Meandering") and not r4_103.Text:match("Quest Of Legends") and not r4_103.Text:match("High Altitude") and not r4_103.Text:match("Blissfully Blue") and not r4_103.Text:match("Rouge Round-up") and not r4_103.Text:match("White As Snow") and not r4_103.Text:match("Solo On The Stump") and not r4_103.Text:match("Colorful Craving") and not r4_103.Text:match("Pumpkins, Please!") and not r4_103.Text:match("Smorgasbord") and not r4_103.Text:match("Pollen Fetcher 5") and not r4_103.Text:match("White Clover Redux") and not r4_103.Text:match("Strawberry Field Forever") and not r4_103.Text:match("Tasting The Sky") and not r4_103.Text:match("Whispy and Crispy") and not r4_103.Text:match("Walk Through The Woods") and not r4_103.Text:match("Red") and not r4_103.Text:match("One Stop On The Tip Top") and not r4_103.Text:match("Blue Mushrooms 2") and not r4_103.Text:match("Pretty Pumpkins") and not r4_103.Text:match("Black Bear, Why?") and not r4_103.Text:match("Bee A Star") and not r4_103.Text:match("Bamboo Boogie 2: Bamboo Boogaloo") and not r4_103.Text:match("Rocky Red Mountain") and not r4_103.Text:match("Can\'t Without Ants") and not r4_103.Text:match("The 15 Bee Zone") and not r4_103.Text:match("Bubble Trouble") and not r4_103.Text:match("Sweet And Sour") and not r4_103.Text:match("Rare Red Clover") and not r4_103.Text:match("Low Tier Treck") and not r4_103.Text:match("Okey") and not r4_103.Text:match("Pollen Fetcher 6") and not r4_103.Text:match("Capsaicin Collector") and not r4_103.Text:match("Mountain Mix") and not r4_103.Text:match("You Blue It") and not r4_103.Text:match("Variety Fetcher 2") and not r4_103.Text:match("Getting Stumped") and not r4_103.Text:match("Weed Wacker 3") and not r4_103.Text:match("All") and not r4_103.Text:match("Red Delicacy") and not r4_103.Text:match("Boss Battles") and not r4_103.Text:match("Myth In The Making") then
                end
                r10_102 = r4_103.Parent
                return true
                if r32_0 == "Spirit Bear" and r4_103.Name == "TitleBar" then
                  if not r4_103.Text:match("Spirit\'s Starter") then
                    if r4_103.Text:match("The First Offering") then
                      goto label_708
                    elseif not r4_103.Text:match("Rules") then
                      if r4_103.Text:match("QR Quest") then
                        goto label_708
                      elseif r4_103.Text:match("Pleasant Pastimes") then
                        goto label_708
                      elseif not r4_103.Text:match("Nature\'s Lessons") then
                        if r4_103.Text:match("The Gifts Of Life") then
                          goto label_708
                        elseif r4_103.Text:match("Questions") then
                          goto label_708
                        elseif r4_103.Text:match("Forcefully Friendly") then
                          goto label_708
                        elseif r4_103.Text:match("Sway Away") then
                          goto label_708
                        elseif r4_103.Text:match("Memories of Memories") then
                          goto label_708
                        elseif r4_103.Text:match("Beans Becoming") then
                          goto label_708
                        elseif r4_103.Text:match("Do") then
                          goto label_708
                        elseif r4_103.Text:match("Wind") then
                          goto label_708
                        elseif r4_103.Text:match("Beauty Duty") then
                          goto label_708
                        elseif r4_103.Text:match("Witness Grandeur") then
                          goto label_708
                        elseif not r4_103.Text:match("Beeternity") and not r4_103.Text:match("A Breath Of Blue") and not r4_103.Text:match("Glory Of Goo") and not r4_103.Text:match("Tickle The Wind") then
                          if r4_103.Text:match("Rhubarb That Could Have Been") then
                            goto label_708
                          elseif r4_103.Text:match("Dreams Of Being A Bee") then
                            goto label_708
                          elseif r4_103.Text:match("The Sky Over The Stump") then
                            goto label_708
                          elseif r4_103.Text:match("Space Oblivion") then
                            goto label_708
                          elseif r4_103.Text:match("Pollenpalooza") then
                            goto label_708
                          elseif r4_103.Text:match("Dancing With Stick Bug") then
                            goto label_708
                          elseif r4_103.Text:match("Bear Without Despair") then
                            goto label_708
                          elseif r4_103.Text:match("Spirit Spree") then
                            goto label_708
                          elseif not r4_103.Text:match("Echoing Call") and not r4_103.Text:match("Spring Out Of The Mountain") then
                          end
                        end
                      end
                    end
                  else
                    ::label_708::
                    ::label_708::
                    r10_102 = r4_103.Parent
                    return true
                  end
                end
                if r32_0 == "Onett" then
                  if r4_103.Text:match("Star Journey") then
                    r10_102 = r4_103.Parent
                    return true
                    if r4_103.Name == "TitleBar" and r4_103.Text:match(r32_0) then
                      r10_102 = r4_103.Parent
                      return true
                    end
                  end
                else
                  goto label_725	-- block#171 is visited secondly
                end
              end
            else
              goto label_498	-- block#111 is visited secondly
            end
          end
          return false
        end
        local function r11_102()
          -- line: [0, 0] id: 105
          for r3_105, r4_105 in pairs(r10_102:GetDescendants()) do
            if r4_105.Name == "TaskBar" then
              local r5_105 = false
              local r6_105 = nil
              for r10_105, r11_105 in pairs(r4_105:GetDescendants()) do
                if r11_105.Name == "BarColorChange" then
                  r5_105 = true
                end
                if r11_105.Name == "Description" then
                  r6_105 = r11_105.Text
                end
              end
              if not r5_105 and r6_105 then
                return true
              end
            end
          end
          return false
        end
        if r22_0 then
          if r32_0 == "Brown Bear" then
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UpdatePlayerNPCState"):FireServer(unpack({
              [1] = "Brown Bear",
              [2] = 2,
              [3] = "Finish",
            }))
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CompleteQuestFromPool"):FireServer(unpack({
              [1] = "Brown Bear 2",
            }))
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UpdatePlayerNPCState"):FireServer(unpack({
              [1] = "Brown Bear",
              [2] = 2,
              [3] = "Start",
            }))
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GiveQuestFromPool"):FireServer(unpack({
              [1] = "Brown Bear 2",
            }))
          elseif r32_0 ~= "Black Bear - Repeatable" then
            if r32_0 ~= "Bucko Bee" and r32_0 ~= "Riley Bee" and r32_0 ~= "Polar Bear" then
              if not r7_102 then
                r5_0:Notify({
                  Title = "Open Menu Quest First",
                  Content = "",
                  Duration = 3,
                })
                task.wait(1)
              else
                if containsTitleBarWithText() and r11_102() then
                  r23_0 = true
                end
                r23_0 = false
                for r15_102, r16_102 in pairs(workspace.NPCs[r32_0]:GetDescendants()) do
                  if r16_102.Name == "Circle" then
                    r9_102(r1_102.PrimaryPart.Position, r16_102, r8_102)
                    if not r9_102(r1_102.PrimaryPart.Position, r16_102, r8_102) then
                      local r17_102 = r1_102:FindFirstChildOfClass("Humanoid")
                      if r17_102 then
                        repeat
                          wait(0.1)
                          if r29_0 == "Walk" then
                            r17_102:MoveTo(r16_102.Position)
                            local r18_102 = r1_102:FindFirstChildOfClass("Humanoid")
                            local r19_102 = r1_102:FindFirstChild("HumanoidRootPart")
                            if r18_102 and r19_102 and workspace:FindPartOnRay(Ray.new(r19_102.Position, r19_102.CFrame.LookVector * r24_0), r1_102) and r18_102:GetState() ~= Enum.HumanoidStateType.Jumping then
                              r18_102:ChangeState(Enum.HumanoidStateType.Jumping)
                            end
                          else
                            local r18_102 = game:GetService("TweenService")
                            local r19_102 = r18_102:Create(r1_102.HumanoidRootPart, TweenInfo.new(((r16_102.Position - r1_102.HumanoidRootPart.Position)).magnitude / r31_0, Enum.EasingStyle.Linear), {
                              CFrame = r16_102.CFrame,
                            })
                            local r20_102 = Instance.new("BodyVelocity", r1_102.HumanoidRootPart)
                            local r21_102 = Vector3.new(0, 0, 0)
                            r20_102.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                            r20_102.velocity = r21_102
                            r20_102.Name = "Main"
                            r19_102:Play()
                            r19_102.Completed:Wait()
                            r20_102:Destroy()
                          end
                          r9_102(r1_102.PrimaryPart.Position, r16_102, r8_102)
                          local r18_102 = r9_102(r1_102.PrimaryPart.Position, r16_102, r8_102)
                          if r18_102 then
                            break
                          end
                          r18_102 = containsTitleBarWithText()
                          if r18_102 then
                            r18_102 = r11_102()
                            if r18_102 then
                              break
                            end
                          end
                          r18_102 = _G.quest9
                          if not r18_102 then
                            break
                          end
                          r18_102 = r22_0
                        until not r18_102
                        while true do
                          wait(0.2)
                          game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                          game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
                          wait(0.2)
                          local r18_102 = game.Players.LocalPlayer.PlayerGui.ScreenGui.NPC.CommandTag
                          getgenv().Pos = {
                            X = r18_102.AbsolutePosition.X,
                            Y = r18_102.AbsolutePosition.Y,
                          }
                          local r19_102 = game:GetService("VirtualInputManager")
                          for r23_102 = 1, 10, 1 do
                            r19_102:SendMouseButtonEvent(Pos.X, Pos.Y, 0, true, game, 1)
                            wait(0.1)
                            r19_102:SendMouseButtonEvent(Pos.X, Pos.Y, 0, false, game, 1)
                          end
                          local r20_102 = containsTitleBarWithText()
                          if not r20_102 then
                            goto label_598
                          else
                            r20_102 = r11_102()
                            if r20_102 then
                              break
                            else
                              ::label_598::
                              ::label_598::
                              r20_102 = _G.quest9
                              if not r20_102 then
                                break
                              else
                                r20_102 = r22_0
                                if not r20_102 then
                                  break
                                end
                              end
                            end
                          end
                        end
                        r23_0 = true
                      end
                    end
                  end
                end
              end
            end
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UpdatePlayerNPCState"):FireServer(unpack({
              [1] = r32_0,
              [2] = 2,
              [3] = "Finish",
            }))
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CompleteQuestFromPool"):FireServer(unpack({
              [1] = r32_0,
            }))
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UpdatePlayerNPCState"):FireServer(unpack({
              [1] = r32_0,
              [2] = 2,
              [3] = "Start",
            }))
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GiveQuestFromPool"):FireServer(unpack({
              [1] = r32_0,
            }))
          else
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UpdatePlayerNPCState"):FireServer(unpack({
              [1] = "Black Bear",
              [2] = 76,
              [3] = "Start",
            }))
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GiveQuestFromPool"):FireServer(unpack({
              [1] = "Black Bear 2",
            }))
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UpdatePlayerNPCState"):FireServer(unpack({
              [1] = "Black Bear",
              [2] = 76,
              [3] = "Finish",
            }))
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CompleteQuestFromPool"):FireServer(unpack({
              [1] = "Black Bear 2",
            }))
          end
        end
        wait(0.2)
        -- close: r0_102
      end
    end
  end)
  r10_0.quest9:SetValue(false)
  r9_0.Main:AddToggle("quest1", {
    Title = "Auto Quest | Farm",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 4
    _G.quest1 = r10_0.quest1.Value
    if _G.quest1 then
      while true do
        if _G.quest1 then
          pcall(function()
            -- line: [0, 0] id: 5
            getgenv().char = game.Players.LocalPlayer.Character
            getgenv().humanoid = char.Humanoid
            getgenv().maxDistance = 100
            local r1_5 = game:GetService("Players").LocalPlayer.Character
            if not r1_5 then
              goto label_28
            elseif not r1_5.PrimaryPart then
              ::label_28::
              ::label_28::
              return 
            end
            local r2_5 = r1_5.PrimaryPart.Position
            local r4_5 = game.Players.LocalPlayer.Character or r3_5.CharacterAdded:Wait()
            local r5_5 = r4_5:WaitForChild("HumanoidRootPart")
            local r6_5 = r4_5:WaitForChild("Humanoid")
            local r7_5 = workspace.FlowerZones:FindFirstChild(r26_0)
            local r8_5 = r7_5.Size
            local r9_5 = r7_5.Position
            function getHumanoidAndRootPart()
              -- line: [0, 0] id: 9
              local r0_9 = game.Players.LocalPlayer.Character
              if r0_9 then
                return r0_9:FindFirstChild("HumanoidRootPart"), r0_9:FindFirstChild("Humanoid")
              end
              return nil, nil
            end
            function moveAndPlaceSprinkler(r0_8)
              -- line: [0, 0] id: 8
              local r1_8, r2_8 = getHumanoidAndRootPart()
              if not r1_8 then
                goto label_8
              elseif not r2_8 then
                ::label_8::
                ::label_8::
                return 
              end
              for r6_8, r7_8 in pairs(r0_8) do
                r2_8:MoveTo(r7_8)
                r2_8.MoveToFinished:Wait()
                r2_8.Jump = true
                wait(0.2)
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerActivesCommand"):FireServer(unpack({
                  [1] = {
                    Name = "Sprinkler Builder",
                  },
                }))
                wait(2)
              end
            end
            function data()
              -- line: [0, 0] id: 10
              return game.ReplicatedStorage.Events.RetrievePlayerStats:InvokeServer()
            end
            local function r10_5(r0_16, r1_16)
              -- line: [0, 0] id: 16
              if type(r0_16) ~= "string" then
                return nil
              end
              for r5_16, r6_16 in pairs(r1_16) do
                if string.find(r0_16, r6_16) then
                  return r6_16
                end
              end
              return nil
            end
            function IsToken(r0_14)
              -- line: [0, 0] id: 14
              if not r0_14 then
                return false
              end
              if not r0_14.Parent then
                return false
              end
              if r0_14.Orientation.Z ~= 0 then
                return false
              end
              if not r0_14:FindFirstChild("FrontDecal") then
                return false
              end
              if not r0_14:FindFirstChild("Sparkles") then
                return false
              end
              if r0_14.Name ~= "C" then
                return false
              end
              if not r0_14:IsA("Part") then
                return false
              end
              return true
            end
            function farm(r0_13)
              -- line: [0, 0] id: 13
              r6_5:MoveTo(r0_13.Position)
              while true do
                task.wait()
                if not IsToken(r0_13) then
                  break
                end
                local r1_13 = (r0_13.Position - char.HumanoidRootPart.Position).magnitude
                if r1_13 > 4 then
                  r1_13 = isCharacterAlive()
                  if not r1_13 then
                    break
                  end
                else
                  break
                end
              end
            end
            function collectHoney()
              -- line: [0, 0] id: 11
              for r3_11, r4_11 in pairs(workspace.Collectibles:GetChildren()) do
                if r15_0 and r4_11:FindFirstChild("BackDecal") and r4_11.BackDecal.Texture == "rbxassetid://1472135114" and (r4_11.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and isCharacterAlive() then
                  farm(r4_11)
                end
              end
            end
            function collectFruit()
              -- line: [0, 0] id: 15
              for r3_15, r4_15 in pairs(workspace.Collectibles:GetChildren()) do
                if r13_0 and r4_15:FindFirstChild("BackDecal") then
                  if r4_15.BackDecal.Texture ~= "rbxassetid://2028453802" and r4_15.BackDecal.Texture ~= "rbxassetid://1952740625" then
                    if r4_15.BackDecal.Texture == "rbxassetid://1952682401" then
                      goto label_34
                    elseif r4_15.BackDecal.Texture == "rbxassetid://1952796032" then
                      ::label_34::
                      ::label_34::
                      if (r4_15.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and isCharacterAlive() then
                        farm(r4_15)
                      end
                    end
                  else
                    goto label_34	-- block#10 is visited secondly
                  end
                end
              end
            end
            function collectToken()
              -- line: [0, 0] id: 17
              local r0_17 = next
              local r1_17, r2_17 = game:GetService("Workspace").Collectibles:GetChildren()
              for r3_17, r4_17 in r0_17, r1_17, r2_17 do
                if r12_0 and IsToken(r4_17) and (r4_17.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and isCharacterAlive() then
                  farm(r4_17)
                end
              end
            end
            function collectBubble()
              -- line: [0, 0] id: 12
              local r0_12 = next
              local r1_12, r2_12 = game:GetService("Workspace").Particles:GetChildren()
              for r3_12, r4_12 in r0_12, r1_12, r2_12 do
                if game:GetService("Workspace").Particles:FindFirstChild("Bubble") then
                  if r14_0 and string.find(r4_12.Name, "Bubble") and (r4_12.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and isCharacterAlive() then
                    farm(r4_12)
                  end
                else
                  break
                end
              end
            end
            local function r11_5(r0_7, r1_7)
              -- line: [0, 0] id: 7
              local r2_7 = r0_7.X - r1_7.X / 2
              local r4_7 = r0_7.Z - r1_7.Z / 2
              return Vector3.new(math.random() * (r0_7.X + r1_7.X / 2 - r2_7) + r2_7, r0_7.Y, math.random() * (r0_7.Z + r1_7.Z / 2 - r4_7) + r4_7)
            end
            local function r12_5()
              -- line: [0, 0] id: 6
              local r0_6 = r11_5(r9_5, r8_5)
              if r11_0 then
                r6_5:MoveTo(r0_6)
              end
            end
            local r13_5 = r3_5:FindFirstChild("PlayerGui"):FindFirstChild("ScreenGui")
            local r14_5 = nil	-- notice: implicit variable refs by block#[11, 12]
            if not r13_5 then
              goto label_98
            else
              r14_5 = r13_5:FindFirstChild("Menus")
              if not r14_5 then
                ::label_98::
                ::label_98::
                r14_5 = nil
              end
            end
            local r15_5 = nil	-- notice: implicit variable refs by block#[15, 16]
            if r14_5 then
              r15_5 = r14_5:FindFirstChild("Children")
              if r15_5 then
              end
            else
              r15_5 = nil
            end
            local r16_5 = nil	-- notice: implicit variable refs by block#[18, 19]
            if r15_5 then
              r16_5 = r15_5:FindFirstChild("Quests")
              if not r16_5 then
                ::label_115::
                r16_5 = nil
              end
            else
              goto label_115	-- block#17 is visited secondly
            end
            local r17_5 = nil	-- notice: implicit variable refs by block#[22, 23]
            if r16_5 then
              r17_5 = r16_5:FindFirstChild("Content")
              if r17_5 then
              end
            else
              r17_5 = nil
            end
            local r18_5 = nil	-- notice: implicit variable refs by block#[25, 27]
            if r17_5 then
              r18_5 = r17_5:FindFirstChild("Frame")
              if not r18_5 then
                ::label_132::
                r18_5 = nil
              end
            else
              goto label_132	-- block#24 is visited secondly
            end
            local r19_5 = nil
            if not r18_5 then
              r5_0:Notify({
                Title = "Open Menu Quest First",
                Content = "",
                Duration = 3,
              })
              task.wait(1)
            else
              for r23_5, r24_5 in pairs(r18_5:GetDescendants()) do
                if r32_0 == "Black Bear" and r24_5.Name == "TitleBar" then
                  if not r24_5.Text:match("Sunflower Start") and not r24_5.Text:match("Dandelion Deed") and not r24_5.Text:match("Pollen Fetcher") and not r24_5.Text:match("Red Request") and not r24_5.Text:match("Into The Blue") and not r24_5.Text:match("Variety Fetcher") and not r24_5.Text:match("Bamboo Boogie") and not r24_5.Text:match("Red Request 2") and not r24_5.Text:match("Cobweb Sweeper") and not r24_5.Text:match("Leisure Loot") and not r24_5.Text:match("White Pollen Wrangler") and not r24_5.Text:match("Pineapple Picking") and not r24_5.Text:match("Pollen Fetcher 2") and not r24_5.Text:match("Weed Wacker") and not r24_5.Text:match("Gold") and not r24_5.Text:match("Colorless Collection") and not r24_5.Text:match("Spirit of Springtime") and not r24_5.Text:match("Weed Wacker 2") and not r24_5.Text:match("Pollen Fetcher 3") and not r24_5.Text:match("Lucky Landscaping") and not r24_5.Text:match("Azure Adventure") and not r24_5.Text:match("Pink Pineapples") and not r24_5.Text:match("Blue Mushrooms") and not r24_5.Text:match("Cobweb Sweeper 2") and not r24_5.Text:match("Rojo") and not r24_5.Text:match("Pumpkin Plower") and not r24_5.Text:match("Pollen Fetcher 4") and not r24_5.Text:match("Bouncing Around Biomes") and not r24_5.Text:match("Blue Pineapples") and not r24_5.Text:match("Rose Request") and not r24_5.Text:match("Search For The White Clover") and not r24_5.Text:match("Stomping Grounds") and not r24_5.Text:match("Collecting Cliffside") and not r24_5.Text:match("Mountain Meandering") and not r24_5.Text:match("Quest Of Legends") and not r24_5.Text:match("High Altitude") and not r24_5.Text:match("Blissfully Blue") and not r24_5.Text:match("Rouge Round-up") and not r24_5.Text:match("White As Snow") and not r24_5.Text:match("Solo On The Stump") and not r24_5.Text:match("Colorful Craving") and not r24_5.Text:match("Pumpkins, Please!") and not r24_5.Text:match("Smorgasbord") and not r24_5.Text:match("Pollen Fetcher 5") and not r24_5.Text:match("White Clover Redux") and not r24_5.Text:match("Strawberry Field Forever") and not r24_5.Text:match("Tasting The Sky") and not r24_5.Text:match("Whispy and Crispy") and not r24_5.Text:match("Walk Through The Woods") and not r24_5.Text:match("Red") and not r24_5.Text:match("One Stop On The Tip Top") and not r24_5.Text:match("Blue Mushrooms 2") and not r24_5.Text:match("Pretty Pumpkins") and not r24_5.Text:match("Black Bear, Why?") and not r24_5.Text:match("Bee A Star") and not r24_5.Text:match("Bamboo Boogie 2: Bamboo Boogaloo") and not r24_5.Text:match("Rocky Red Mountain") and not r24_5.Text:match("Can\'t Without Ants") and not r24_5.Text:match("The 15 Bee Zone") and not r24_5.Text:match("Bubble Trouble") and not r24_5.Text:match("Sweet And Sour") and not r24_5.Text:match("Rare Red Clover") and not r24_5.Text:match("Low Tier Treck") and not r24_5.Text:match("Okey") and not r24_5.Text:match("Pollen Fetcher 6") and not r24_5.Text:match("Capsaicin Collector") and not r24_5.Text:match("Mountain Mix") and not r24_5.Text:match("You Blue It") and not r24_5.Text:match("Variety Fetcher 2") and not r24_5.Text:match("Getting Stumped") and not r24_5.Text:match("Weed Wacker 3") and not r24_5.Text:match("All") and not r24_5.Text:match("Red Delicacy") and not r24_5.Text:match("Boss Battles") and not r24_5.Text:match("Myth In The Making") then
                  end
                  r19_5 = r24_5.Parent
                elseif r32_0 ~= "Spirit Bear" then
                  if r32_0 ~= "Onett" and r24_5.Name == "TitleBar" and r24_5.Text:match(r32_0) then
                    r19_5 = r24_5.Parent
                  elseif r24_5.Text:match("Star Journey") then
                    r19_5 = r24_5.Parent
                  end
                elseif r24_5.Name == "TitleBar" then
                  if not r24_5.Text:match("Spirit\'s Starter") and not r24_5.Text:match("The First Offering") then
                    if r24_5.Text:match("Rules") then
                      goto label_847
                    elseif r24_5.Text:match("QR Quest") then
                      goto label_847
                    elseif not r24_5.Text:match("Pleasant Pastimes") then
                      if r24_5.Text:match("Nature\'s Lessons") then
                        goto label_847
                      elseif r24_5.Text:match("The Gifts Of Life") then
                        goto label_847
                      elseif not r24_5.Text:match("Questions") and not r24_5.Text:match("Forcefully Friendly") then
                        if r24_5.Text:match("Sway Away") then
                          goto label_847
                        elseif r24_5.Text:match("Memories of Memories") then
                          goto label_847
                        elseif not r24_5.Text:match("Beans Becoming") then
                          if r24_5.Text:match("Do") then
                            goto label_847
                          elseif r24_5.Text:match("Wind") then
                            goto label_847
                          elseif r24_5.Text:match("Beauty Duty") then
                            goto label_847
                          elseif r24_5.Text:match("Witness Grandeur") then
                            goto label_847
                          elseif r24_5.Text:match("Beeternity") then
                            goto label_847
                          elseif not r24_5.Text:match("A Breath Of Blue") and not r24_5.Text:match("Glory Of Goo") then
                            if r24_5.Text:match("Tickle The Wind") then
                              goto label_847
                            elseif r24_5.Text:match("Rhubarb That Could Have Been") then
                              goto label_847
                            elseif not r24_5.Text:match("Dreams Of Being A Bee") then
                              if r24_5.Text:match("The Sky Over The Stump") then
                                goto label_847
                              elseif not r24_5.Text:match("Space Oblivion") then
                                if r24_5.Text:match("Pollenpalooza") then
                                  goto label_847
                                elseif not r24_5.Text:match("Dancing With Stick Bug") then
                                  if r24_5.Text:match("Bear Without Despair") then
                                    goto label_847
                                  elseif not r24_5.Text:match("Spirit Spree") then
                                    if r24_5.Text:match("Echoing Call") then
                                      goto label_847
                                    elseif r24_5.Text:match("Spring Out Of The Mountain") then
                                      ::label_847::
                                      ::label_847::
                                      r19_5 = r24_5.Parent
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  else
                    goto label_847	-- block#199 is visited secondly
                  end
                end
              end
            end
            local r20_5 = nil
            if r19_5 then
              for r24_5, r25_5 in pairs(r19_5:GetDescendants()) do
                if r25_5.Name == "TaskBar" then
                  local r26_5 = false
                  local r27_5 = nil
                  for r31_5, r32_5 in pairs(r25_5:GetDescendants()) do
                    if r32_5.Name == "BarColorChange" then
                      r26_5 = true
                    end
                    if r32_5.Name == "Description" then
                      r27_5 = r32_5.Text
                    end
                  end
                  if not r26_5 and r27_5 then
                    r20_5 = r27_5
                    break
                  end
                end
              end
            end
            local r21_5 = {}
            for r25_5, r26_5 in pairs(workspace.FlowerZones:GetDescendants()) do
              if r26_5:IsA("Part") then
                table.insert(r21_5, r26_5.Name)
              end
            end
            if not isCharacterAlive() then
              wait(0.2)
              return 
            end
            local r22_5 = false
            local r23_5 = r10_5(r20_5, r21_5)
            local r24_5 = nil
            if r19_0 and r21_0 and not r16_0 and isCharacterAlive() then
              if r23_5 then
                r24_5 = r23_5
              else
                if (r23_5 or r20_5:match("Blue Flowers")) and r20_5:match("Goo") then
                  r22_5 = true
                  if r23_5 ~= nil then
                    r24_5 = r23_5
                  elseif r33_0 == "under 5" then
                    r24_5 = "Blue Flower Field"
                  elseif r33_0 ~= "under 15" then
                    if r33_0 ~= "under 35" and r33_0 ~= "over 35" then
                    end
                    r24_5 = "Pine Tree Forest"
                  else
                    r24_5 = "Bamboo Field"
                  end
                end
                if r20_5 then
                  if not r20_5:match("Blue Ability Tokens") and not r20_5:match("Bomb Tokens") and not r20_5:match("Blue Boost Tokens") and not r20_5:match("Blueberry Tokens") and not r20_5:match("Blue Pollen") then
                    if not r20_5:match("Red Ability Tokens") and not r20_5:match("Rage Tokens") and not r20_5:match("Red Boost Tokens") and not r20_5:match("Strawberry Tokens") and not r20_5:match("Red Pollen") then
                      if r20_5:match("White Pollen") then
                        if r33_0 ~= "under 5" then
                          if r33_0 == "under 15" then
                            r24_5 = "Spider Field"
                          elseif r33_0 == "under 35" then
                            r24_5 = "Pumpkin Patch"
                          elseif r33_0 == "over 35" then
                            r24_5 = "Coconut Field"
                          end
                        else
                          r24_5 = "Dandelion Field"
                        end
                      end
                    elseif r33_0 == "under 5" then
                      r24_5 = "Mushroom Field"
                    elseif r33_0 ~= "under 15" then
                      if r33_0 == "under 35" then
                        r24_5 = "Rose Field"
                      elseif r33_0 == "over 35" then
                        r24_5 = "Pepper Patch"
                      end
                    else
                      r24_5 = "Strawberry Field"
                    end
                  end
                  if r33_0 ~= "under 5" then
                    if r33_0 == "under 15" then
                      r24_5 = "Bamboo Field"
                    elseif r33_0 == "under 35" or r33_0 == "over 35" then
                      r24_5 = "Pine Tree Forest"
                    end
                  else
                    r24_5 = "Blue Flower Field"
                  end
                end
              end
              local r25_5 = r24_5 == nil
            end
            local r25_5 = workspace.FlowerZones:FindFirstChild(r24_5)
            local r26_5 = 0
            local function r27_5(r0_18, r1_18, r2_18)
              -- line: [0, 0] id: 18
              local r3_18 = r1_18.Position
              local r4_18 = r1_18.Size
              if r3_18 and r4_18 then
                local r5_18 = Vector3.new(r4_18.X + r2_18, r4_18.Y, r4_18.Z + r2_18)
                local r6_18 = r3_18 - r5_18 / 2
                local r7_18 = r3_18 + r5_18 / 2
                local r8_18 = r0_18.X
                if r6_18.X <= r8_18 then
                  r8_18 = r0_18.X
                  if r8_18 > r7_18.X then
                    goto label_38
                  else
                    r8_18 = r0_18.Z
                    if r6_18.Z > r8_18 then
                      goto label_38
                    else
                      r8_18 = r0_18.Z <= r7_18.Z
                    end
                  end
                else
                  goto label_38	-- block#10 is visited secondly
                end
                return r8_18
              end
              return false
            end
            if r27_5(r2_5, r25_5, r26_5) then
              collectFruit()
              collectBubble()
              collectToken()
              collectHoney()
              r12_5()
              if r22_5 then
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerActivesCommand"):FireServer(unpack({
                  [1] = {
                    Name = "Gumdrops",
                  },
                }))
              end
            elseif r29_0 == "Walk" or r29_0 == "Tween - Risk" then
              local r29_5 = workspace.FlowerZones:FindFirstChild(r24_5)
              if r29_5 then
                while true do
                  task.wait(0.2)
                  if not r27_5(r4_5.PrimaryPart.Position, r29_5, r26_5) then
                    local r30_5 = r4_5:FindFirstChildOfClass("Humanoid")
                    if r30_5 then
                      if r29_0 == "Walk" then
                        r30_5:MoveTo(r29_5.Position)
                      else
                        local r32_5 = game:GetService("TweenService"):Create(r4_5.HumanoidRootPart, TweenInfo.new(((r29_5.Position - r4_5.HumanoidRootPart.Position)).magnitude / r31_0, Enum.EasingStyle.Linear), {
                          CFrame = r29_5.CFrame,
                        })
                        local r33_5 = Instance.new("BodyVelocity", r4_5.HumanoidRootPart)
                        local r34_5 = Vector3.new(0, 0, 0)
                        r33_5.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                        r33_5.velocity = r34_5
                        r33_5.Name = "Main"
                        r32_5:Play()
                        r32_5.Completed:Wait()
                        r33_5:Destroy()
                      end
                      if workspace:FindPartOnRay(Ray.new(r4_5.HumanoidRootPart.Position, r4_5.HumanoidRootPart.CFrame.LookVector * r24_0), r4_5) and r30_5:GetState() ~= Enum.HumanoidStateType.Jumping then
                        r30_5:ChangeState(Enum.HumanoidStateType.Jumping)
                      end
                    end
                  end
                  local r30_5 = _G.quest1
                  if r30_5 then
                    r30_5 = r27_5(r4_5.PrimaryPart.Position, r29_5, r26_5)
                    if not r30_5 then
                      r30_5 = r19_0
                      if r30_5 then
                        r30_5 = r21_0
                        if not r30_5 then
                          break
                        else
                          r30_5 = r16_0
                          if not r30_5 then
                            r30_5 = isCharacterAlive()
                            if not r30_5 then
                              break
                            end
                          else
                            break
                          end
                        end
                      else
                        break
                      end
                    else
                      break
                    end
                  else
                    break
                  end
                end
                task.wait(1.5)
                if r19_0 and _G.quest1 then
                  local r30_5, r31_5 = getHumanoidAndRootPart()
                  if r30_5 and r31_5 then
                    local r32_5 = data().EquippedSprinkler
                    if r32_5 ~= "Basic Sprinkler" and r32_5 ~= "The Supreme Saturator" then
                      if r32_5 ~= "Silver Soakers" then
                        if r32_5 ~= "Golden Gushers" then
                          if r32_5 == "Diamond Drenchers" then
                            moveAndPlaceSprinkler({
                              r30_5.Position + r30_5.CFrame.LookVector * 1,
                              r30_5.Position - r30_5.CFrame.LookVector * 20,
                              r30_5.Position - r30_5.CFrame.RightVector * 20,
                              r30_5.Position + r30_5.CFrame.RightVector * 20
                            })
                          end
                        else
                          moveAndPlaceSprinkler({
                            r30_5.Position + r30_5.CFrame.LookVector * 1,
                            r30_5.Position - r30_5.CFrame.LookVector * 20,
                            r30_5.Position - r30_5.CFrame.RightVector * 20
                          })
                        end
                      else
                        moveAndPlaceSprinkler({
                          r30_5.Position + r30_5.CFrame.LookVector * 1,
                          r30_5.Position - r30_5.CFrame.LookVector * 20
                        })
                      end
                    else
                      moveAndPlaceSprinkler({
                        r30_5.Position + r30_5.CFrame.LookVector * 1
                      })
                    end
                  end
                end
              end
            end
          end)
          wait(0.1)
        end
      end
      wait(0.2)
      r20_0 = true
      r18_0 = true
    else
      goto label_37	-- block#3 is visited secondly
    end
  end)
  r10_0.quest1:SetValue(false)
  r9_0.Main:AddToggle("quest2", {
    Title = "Auto Quest | Mob",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 113
    _G.quest2 = r10_0.quest2.Value
    if not _G.quest2 then
      wait(0.2)
      r21_0 = true
      r18_0 = true
    else
      while _G.quest2 do
        pcall(function()
          -- line: [0, 0] id: 114
          local r0_114 = game.Players.LocalPlayer.Character
          if not r0_114 then
            return 
          end
          local r1_114 = r0_114.PrimaryPart.Position
          local r3_114 = game.Players.LocalPlayer.Character or r2_114.CharacterAdded:Wait()
          local function r4_114(r0_124, r1_124)
            -- line: [0, 0] id: 124
            for r5_124, r6_124 in ipairs(r0_124:GetChildren()) do
              if r6_124:IsA("BasePart") then
                r6_124.Anchored = r1_124
              end
            end
          end
          local function r5_114(r0_122)
            -- line: [0, 0] id: 122
            r4_114(r0_122, true)
          end
          local function r6_114(r0_120)
            -- line: [0, 0] id: 120
            r4_114(r0_120, false)
          end
          r2_114.CharacterAdded:Connect(function(r0_115)
            -- line: [0, 0] id: 115
            r0_115:WaitForChild("HumanoidRootPart")
            r5_114(r0_115)
          end)
          function isClosestMonsterNearby()
            -- line: [0, 0] id: 118
            local r0_118 = game.Players.LocalPlayer.Character
            if not r0_118 then
              return false
            end
            local r1_118 = workspace.Monsters:GetDescendants()
            local r2_118 = nil
            local r3_118 = 30
            for r7_118, r8_118 in ipairs(r1_118) do
              if r8_118.Name == "HumanoidRootPart" and r8_118.Parent.Name:match("Ant") then
                local r9_118 = (r8_118.Position - r0_118.HumanoidRootPart.Position).magnitude
                if r9_118 < r3_118 then
                  r2_118 = r8_118
                  r3_118 = r9_118
                end
              end
            end
            if r2_118 then
              return true
            end
            return false
          end
          getgenv().char = game.Players.LocalPlayer.Character
          getgenv().humanoid = char.Humanoid
          getgenv().maxDistance = 100
          function IsToken(r0_117)
            -- line: [0, 0] id: 117
            if not r0_117 then
              return false
            end
            if not r0_117.Parent then
              return false
            end
            if r0_117.Orientation.Z ~= 0 then
              return false
            end
            if not r0_117:FindFirstChild("FrontDecal") then
              return false
            end
            if not r0_117:FindFirstChild("Sparkles") then
              return false
            end
            if r0_117.Name ~= "C" then
              return false
            end
            if not r0_117:IsA("Part") then
              return false
            end
            return true
          end
          function farm(r0_121)
            -- line: [0, 0] id: 121
            humanoid:MoveTo(r0_121.Position)
            while true do
              task.wait()
              if IsToken(r0_121) then
                local r1_121 = (r0_121.Position - char.HumanoidRootPart.Position).magnitude
                if r1_121 <= 4 then
                  break
                end
              else
                break
              end
            end
          end
          function collectToken()
            -- line: [0, 0] id: 119
            local r0_119 = next
            local r1_119, r2_119 = game:GetService("Workspace").Collectibles:GetChildren()
            for r3_119, r4_119 in r0_119, r1_119, r2_119 do
              if autoCollectToken and IsToken(r4_119) and (r4_119.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                farm(r4_119)
              end
            end
          end
          local r7_114 = 0
          local function r8_114(r0_123, r1_123, r2_123)
            -- line: [0, 0] id: 123
            local r3_123 = r1_123.Position
            local r4_123 = r1_123.Size
            if r3_123 and r4_123 then
              local r5_123 = Vector3.new(r4_123.X + r2_123, r4_123.Y, r4_123.Z + r2_123)
              local r6_123 = r3_123 - r5_123 / 2
              local r7_123 = r3_123 + r5_123 / 2
              local r8_123 = r0_123.X
              if r6_123.X > r8_123 then
                goto label_38
              else
                r8_123 = r0_123.X
                if r8_123 > r7_123.X then
                  goto label_38
                else
                  r8_123 = r0_123.Z
                  if r6_123.Z > r8_123 then
                    goto label_38
                  else
                    r8_123 = r0_123.Z <= r7_123.Z
                  end
                end
              end
              return r8_123
            end
            return false
          end
          local r10_114 = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ScreenGui")
          local r11_114 = r10_114 and r10_114:FindFirstChild("Menus")
          local r12_114 = r11_114 and r11_114:FindFirstChild("Children")
          local r13_114 = r12_114 and r12_114:FindFirstChild("Quests")
          local r14_114 = r13_114 and r13_114:FindFirstChild("Content")
          local r15_114 = r14_114 and r14_114:FindFirstChild("Frame")
          local r16_114 = nil
          if r15_114 then
            for r20_114, r21_114 in pairs(r15_114:GetDescendants()) do
              if r21_114.Name == "TitleBar" and r21_114.Text:match(r32_0) then
                r16_114 = r21_114.Parent
              end
            end
          else
            r5_0:Notify({
              Title = "Open Menu Quest First",
              Content = "",
              Duration = 3,
            })
            task.wait(1)
          end
          local r17_114 = {}
          if r16_114 then
            for r21_114, r22_114 in pairs(r16_114:GetDescendants()) do
              if r22_114.Name == "TaskBar" then
                local r23_114 = false
                local r24_114 = nil
                for r28_114, r29_114 in pairs(r22_114:GetDescendants()) do
                  if r29_114.Name == "BarColorChange" then
                    r23_114 = true
                  end
                  if r29_114.Name == "Description" then
                    r24_114 = r29_114.Text
                  end
                end
                if not r23_114 and r24_114 then
                  table.insert(r17_114, r24_114)
                end
              end
            end
          end
          local function r18_114(r0_116)
            -- line: [0, 0] id: 116
            while true do
              wait(0.2)
              if not r8_114(r3_114.PrimaryPart.Position, r0_116, r7_114) then
                local r1_116 = r3_114:FindFirstChildOfClass("Humanoid")
                if r1_116 then
                  if r29_0 == "Walk" then
                    r1_116:MoveTo(r0_116.Position)
                  else
                    local r3_116 = game:GetService("TweenService"):Create(r3_114.HumanoidRootPart, TweenInfo.new(((r0_116.Position - r3_114.HumanoidRootPart.Position)).magnitude / r31_0, Enum.EasingStyle.Linear), {
                      CFrame = r0_116.CFrame,
                    })
                    local r4_116 = Instance.new("BodyVelocity", r3_114.HumanoidRootPart)
                    local r5_116 = Vector3.new(0, 0, 0)
                    r4_116.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                    r4_116.velocity = r5_116
                    r4_116.Name = "Main"
                    r3_116:Play()
                    r3_116.Completed:Wait()
                    r4_116:Destroy()
                  end
                  local r2_116 = r3_114:FindFirstChildOfClass("Humanoid")
                  local r3_116 = r3_114:FindFirstChild("HumanoidRootPart")
                  if r2_116 and r3_116 and workspace:FindPartOnRay(Ray.new(r3_116.Position, r3_116.CFrame.LookVector * r24_0), r3_114) and r2_116:GetState() ~= Enum.HumanoidStateType.Jumping then
                    r2_116:ChangeState(Enum.HumanoidStateType.Jumping)
                  end
                end
              end
              local r1_116 = r8_114(r3_114.PrimaryPart.Position, r0_116, r7_114)
              if not r1_116 then
                r1_116 = _G.quest2
                if r1_116 then
                  r1_116 = r19_0
                  if not r1_116 then
                    break
                  else
                    r1_116 = r16_0
                    if r1_116 then
                      break
                    else
                      r1_116 = isCharacterAlive()
                      if not r1_116 then
                        break
                      end
                    end
                  end
                else
                  break
                end
              else
                break
              end
            end
            wait(4)
          end
          if not isCharacterAlive() then
            wait(0.2)
            return 
          end
          if r19_0 and not r16_0 and isCharacterAlive() then
            for r22_114, r23_114 in ipairs(r17_114) do
              if not r23_114:match("Mantises") then
                if not r23_114:match("Rhino Beetles") then
                  if r23_114:match("Ladybugs") then
                    for r27_114, r28_114 in pairs(workspace.MonsterSpawners:GetDescendants()) do
                      if r28_114.Name:match("Ladybug") or r28_114.Name:match("MushroomBush") then
                        for r32_114, r33_114 in pairs(r28_114:GetDescendants()) do
                          if r33_114.Name == "TimerLabel" then
                            if r33_114.Text ~= "1:00" and tonumber(r33_114.Text:gsub("%D", "")) >= 20 then
                            end
                            r21_0 = false
                            r18_0 = false
                            r18_114(r28_114)
                            break
                          end
                          r21_0 = true
                          r18_0 = true
                        end
                      end
                    end
                  elseif r23_114:match("Scorpions") then
                    for r27_114, r28_114 in pairs(workspace.MonsterSpawners:GetDescendants()) do
                      if r28_114.Name:match("RoseBush") or r28_114.Name:match("RoseBush2") then
                        for r32_114, r33_114 in pairs(r28_114:GetDescendants()) do
                          if r33_114.Name == "TimerLabel" and (r33_114.Text == "1:00" or tonumber(r33_114.Text:gsub("%D", "")) < 20) then
                            r21_0 = false
                            r18_0 = false
                            r18_114(r28_114)
                            break
                          end
                          r21_0 = true
                          r18_0 = true
                        end
                      end
                    end
                  else
                    if not r23_114:match("Werewolv") and not r23_114:match("Werewolves") then
                      if r23_114:match("Spiders") or r23_114:match("Spider") then
                        for r27_114, r28_114 in pairs(workspace.MonsterSpawners:GetDescendants()) do
                          if r28_114.Name:match("Spider Cave") then
                            for r32_114, r33_114 in pairs(r28_114:GetDescendants()) do
                              if r33_114.Name == "TimerLabel" and (r33_114.Text == "1:00" or tonumber(r33_114.Text:gsub("%D", "")) < 20) then
                                r21_0 = false
                                r18_0 = false
                                r18_114(r28_114)
                                break
                              else
                                r21_0 = true
                                r18_0 = true
                              end
                            end
                          end
                        end
                      elseif r23_114:match("Ants") then
                        local r24_114 = workspace.FlowerZones:FindFirstChild("Ant Field")
                        if not r8_114(r3_114.PrimaryPart.Position, r24_114, r7_114) then
                          game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ToyEvent"):FireServer(unpack({
                            [1] = "Ant Challenge",
                          }))
                          wait(1)
                        else
                          r21_0 = false
                          r18_0 = false
                          game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerActivesCommand"):FireServer(unpack({
                            [1] = {
                              Name = "Sprinkler Builder",
                            },
                          }))
                          isClosestMonsterNearby()
                          if not isClosestMonsterNearby() then
                            r6_114(r3_114)
                            collectToken()
                          else
                            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 80
                            game.Players.LocalPlayer.Character.Humanoid.Jump = true
                            wait(0.5)
                            r5_114(r3_114)
                            while true do
                              wait(0.2)
                              isClosestMonsterNearby()
                              if isClosestMonsterNearby() then
                                local r26_114 = _G.quest2
                                if r26_114 then
                                  r26_114 = r8_114(r3_114.PrimaryPart.Position, r24_114, r7_114)
                                  if not r26_114 then
                                    break
                                  end
                                else
                                  break
                                end
                              else
                                break
                              end
                            end
                            r6_114(r3_114)
                            collectToken()
                          end
                          wait(0.1)
                        end
                      else
                        r21_0 = true
                        r18_0 = true
                        wait(0.1)
                      end
                    end
                    for r27_114, r28_114 in pairs(workspace.MonsterSpawners:GetDescendants()) do
                      if r28_114.Name:match("WerewolfCave") then
                        for r32_114, r33_114 in pairs(r28_114:GetDescendants()) do
                          if r33_114.Name == "TimerLabel" then
                            if r33_114.Text ~= "1:00" and tonumber(r33_114.Text:gsub("%D", "")) >= 20 then
                              goto label_510
                            end
                            r21_0 = false
                            r18_0 = false
                            r18_114(r28_114)
                            break
                          else
                            ::label_510::
                            ::label_510::
                            r21_0 = true
                            r18_0 = true
                          end
                        end
                      end
                    end
                  end
                else
                  for r27_114, r28_114 in pairs(workspace.MonsterSpawners:GetDescendants()) do
                    if not r28_114.Name:match("Rhino") and not r28_114.Name:match("PineappleBeetle") then
                    end
                    for r32_114, r33_114 in pairs(r28_114:GetDescendants()) do
                      if r33_114.Name == "TimerLabel" and (r33_114.Text == "1:00" or tonumber(r33_114.Text:gsub("%D", "")) < 20) then
                        r21_0 = false
                        r18_0 = false
                        r18_114(r28_114)
                        break
                      else
                        r21_0 = true
                        r18_0 = true
                      end
                    end
                  end
                end
              else
                for r27_114, r28_114 in pairs(workspace.MonsterSpawners:GetDescendants()) do
                  if not r28_114.Name:match("ForestMantis") and not r28_114.Name:match("PineappleMantis1") then
                  end
                  for r32_114, r33_114 in pairs(r28_114:GetDescendants()) do
                    if r33_114.Name == "TimerLabel" then
                      if r33_114.Text ~= "1:00" and tonumber(r33_114.Text:gsub("%D", "")) >= 20 then
                        goto label_253
                      else
                        r21_0 = false
                        r18_0 = false
                        r18_114(r28_114)
                        break
                      end
                    else
                      ::label_253::
                      ::label_253::
                      r21_0 = true
                      r18_0 = true
                    end
                  end
                end
              end
            end
          end
        end)
        wait(0.2)
      end
    end
  end)
  r10_0.quest2:SetValue(false)
  r9_0.Main:AddToggle("quest3", {
    Title = "Auto Quest | Others",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 1
    _G.quest3 = r10_0.quest3.Value
    if _G.quest3 then
      while _G.quest3 do
        pcall(function()
          -- line: [0, 0] id: 2
          local r1_2 = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ScreenGui")
          local r2_2 = r1_2 and r1_2:FindFirstChild("Menus")
          local r3_2 = r2_2 and r2_2:FindFirstChild("Children")
          local r4_2 = r3_2 and r3_2:FindFirstChild("Quests")
          local r5_2 = r4_2 and r4_2:FindFirstChild("Content")
          local r6_2 = r5_2 and r5_2:FindFirstChild("Frame")
          local r7_2 = nil
          if not r6_2 then
            r5_0:Notify({
              Title = "Open Menu Quest First",
              Content = "",
              Duration = 3,
            })
            task.wait(1)
          else
            for r11_2, r12_2 in pairs(r6_2:GetDescendants()) do
              if r12_2.Name == "TitleBar" and r12_2.Text:match(r32_0) then
                r7_2 = r12_2.Parent
              end
            end
          end
          local r8_2 = {}
          if r7_2 then
            for r12_2, r13_2 in pairs(r7_2:GetDescendants()) do
              if r13_2.Name == "TaskBar" then
                local r14_2 = false
                local r15_2 = nil
                for r19_2, r20_2 in pairs(r13_2:GetDescendants()) do
                  if r20_2.Name == "BarColorChange" then
                    r14_2 = true
                  end
                  if r20_2.Name == "Description" then
                    r15_2 = r20_2.Text
                  end
                end
                if not r14_2 and r15_2 then
                  table.insert(r8_2, r15_2)
                end
              end
            end
          end
          for r12_2, r13_2 in pairs(r8_2) do
            if not r13_2:match("Red Field Booster") then
              if r13_2:match("Blue Field Booster") then
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ToyEvent"):FireServer(unpack({
                  [1] = "Blue Field Booster",
                }))
              end
            else
              game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ToyEvent"):FireServer(unpack({
                [1] = "Red Field Booster",
              }))
            end
          end
        end)
        wait(0.5)
      end
    end
  end)
  r10_0.quest3:SetValue(false)
  r9_0.Combat:AddToggle("ANT", {
    Title = "Auto Ant Battle",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 82
    _G.ANT = r10_0.ANT.Value
    if _G.ANT then
      while _G.ANT do
        pcall(function()
          -- line: [0, 0] id: 83
          local r0_83 = game.Players.LocalPlayer.Character
          if not r0_83 then
            return 
          end
          local r1_83 = r0_83.PrimaryPart.Position
          local r3_83 = game.Players.LocalPlayer.Character or r2_83.CharacterAdded:Wait()
          getgenv().char = game.Players.LocalPlayer.Character
          getgenv().humanoid = char.Humanoid
          getgenv().maxDistance = 50
          function IsToken(r0_91)
            -- line: [0, 0] id: 91
            if not r0_91 then
              return false
            end
            if not r0_91.Parent then
              return false
            end
            if r0_91.Orientation.Z ~= 0 then
              return false
            end
            if not r0_91:FindFirstChild("FrontDecal") then
              return false
            end
            if not r0_91:FindFirstChild("Sparkles") then
              return false
            end
            if r0_91.Name ~= "C" then
              return false
            end
            if not r0_91:IsA("Part") then
              return false
            end
            return true
          end
          function farm(r0_84)
            -- line: [0, 0] id: 84
            humanoid:MoveTo(r0_84.Position)
            while true do
              task.wait()
              if IsToken(r0_84) then
                local r1_84 = (r0_84.Position - char.HumanoidRootPart.Position).magnitude
                if r1_84 <= 4 then
                  break
                else
                  r1_84 = isCharacterAlive()
                  if not r1_84 then
                    break
                  end
                end
              else
                break
              end
            end
          end
          function collectToken()
            -- line: [0, 0] id: 85
            local r0_85 = next
            local r1_85, r2_85 = game:GetService("Workspace").Collectibles:GetChildren()
            for r3_85, r4_85 in r0_85, r1_85, r2_85 do
              if IsToken(r4_85) and (r4_85.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and isCharacterAlive() then
                farm(r4_85)
              end
            end
          end
          local function r4_83(r0_87, r1_87)
            -- line: [0, 0] id: 87
            for r5_87, r6_87 in ipairs(r0_87:GetChildren()) do
              if r6_87:IsA("BasePart") then
                r6_87.Anchored = r1_87
              end
            end
          end
          local function r5_83(r0_92)
            -- line: [0, 0] id: 92
            r4_83(r0_92, true)
          end
          local function r6_83(r0_90)
            -- line: [0, 0] id: 90
            r4_83(r0_90, false)
          end
          r2_83.CharacterAdded:Connect(function(r0_89)
            -- line: [0, 0] id: 89
            r0_89:WaitForChild("HumanoidRootPart")
            r5_83(r0_89)
          end)
          function isClosestMonsterNearby()
            -- line: [0, 0] id: 88
            local r0_88 = game.Players.LocalPlayer.Character
            if not r0_88 then
              return false
            end
            local r1_88 = workspace.Monsters:GetDescendants()
            local r2_88 = nil
            local r3_88 = 30
            for r7_88, r8_88 in ipairs(r1_88) do
              if r8_88.Name == "HumanoidRootPart" and r8_88.Parent.Name:match("Ant") then
                local r9_88 = (r8_88.Position - r0_88.HumanoidRootPart.Position).magnitude
                if r9_88 < r3_88 then
                  r2_88 = r8_88
                  r3_88 = r9_88
                end
              end
            end
            return r2_88 ~= nil
          end
          local r7_83 = 0
          local function r8_83(r0_86, r1_86, r2_86)
            -- line: [0, 0] id: 86
            local r3_86 = r1_86.Position
            local r4_86 = r1_86.Size
            if r3_86 and r4_86 then
              local r5_86 = Vector3.new(r4_86.X + r2_86, r4_86.Y, r4_86.Z + r2_86)
              local r6_86 = r3_86 - r5_86 / 2
              local r7_86 = r3_86 + r5_86 / 2
              local r8_86 = r0_86.X
              if r6_86.X <= r8_86 then
                r8_86 = r0_86.X
                if r8_86 > r7_86.X then
                  goto label_37
                else
                  r8_86 = r0_86.Z
                  if r6_86.Z <= r8_86 then
                    r8_86 = r0_86.Z <= r7_86.Z
                  end
                end
              else
                goto label_37	-- block#9 is visited secondly
              end
              return r8_86
            end
            return false
          end
          if not isCharacterAlive() then
            wait(0.2)
            return 
          end
          local r9_83 = workspace.FlowerZones:FindFirstChild("Ant Field")
          if not r8_83(r3_83.PrimaryPart.Position, r9_83, r7_83) then
            goto label_160
          elseif isCharacterAlive() then
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerActivesCommand"):FireServer(unpack({
              [1] = {
                Name = "Sprinkler Builder",
              },
            }))
            if not isClosestMonsterNearby() then
              r6_83(r3_83)
              collectToken()
            else
              game.Players.LocalPlayer.Character.Humanoid.JumpPower = 80
              game.Players.LocalPlayer.Character.Humanoid.Jump = true
              wait(0.5)
              r5_83(r3_83)
              while true do
                wait(0.2)
                if isClosestMonsterNearby() then
                  local r11_83 = _G.ANT
                  if not r11_83 then
                    break
                  else
                    r11_83 = r8_83(r3_83.PrimaryPart.Position, r9_83, r7_83)
                    if not r11_83 then
                      break
                    else
                      r11_83 = isCharacterAlive()
                      if not r11_83 then
                        break
                      end
                    end
                  end
                else
                  break
                end
              end
              r6_83(r3_83)
              collectToken()
            end
          else
            ::label_160::
            ::label_160::
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ToyEvent"):FireServer(unpack({
              [1] = "Ant Challenge",
            }))
            wait(1)
          end
        end)
        wait(0.2)
      end
    end
  end)
  r10_0.ANT:SetValue(false)
  r9_0.Combat:AddToggle("VIC", {
    Title = "Auto Vicious Bee",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 36
    _G.VIC = r10_0.VIC.Value
    if _G.VIC then
      while true do
        if _G.VIC then
          pcall(function()
            -- line: [0, 0] id: 37
            local function r0_37()
              -- line: [0, 0] id: 38
              for r4_38, r5_38 in pairs(workspace.Particles:GetDescendants()) do
                if r5_38.Name == "Vicious" then
                  return true
                end
              end
              return false
            end
            local function r1_37()
              -- line: [0, 0] id: 39
              if workspace.Particles:FindFirstChild("WTs") then
                for r3_39, r4_39 in pairs(workspace.Particles.WTs:GetDescendants()) do
                  if r4_39:IsA("MeshPart") then
                    return true
                  end
                end
              end
              return false
            end
            if not isCharacterAlive() then
              wait(0.2)
              return 
            end
            if r1_37() then
              goto label_20
            elseif r0_37() and r17_0 then
              if not isCharacterAlive() then
                goto label_132
              else
                r16_0 = true
                local r2_37 = game.Players.LocalPlayer.Character
                if not r2_37 then
                  return 
                end
                local r3_37 = r2_37:FindFirstChildOfClass("Humanoid")
                local r4_37 = r2_37:FindFirstChild("HumanoidRootPart")
                if r3_37 and r4_37 then
                  repeat
                    wait(0.2)
                    if r1_37() then
                      local r5_37 = isCharacterAlive()
                      if not r5_37 then
                        goto label_69
                      else
                        r3_37:MoveTo(workspace.Particles.WTs.WaitingThorn.Position)
                      end
                    else
                      ::label_69::
                      ::label_69::
                      local r5_37 = r0_37()
                      if r5_37 then
                        r5_37 = isCharacterAlive()
                        if r5_37 then
                          r3_37:MoveTo(workspace.Particles.Vicious.Position)
                        end
                      end
                    end
                    local r5_37 = r4_37.Position
                    if workspace:FindPartOnRay(Ray.new(r5_37, r4_37.CFrame.LookVector * 88), r2_37) and r3_37:GetState() ~= Enum.HumanoidStateType.Jumping then
                      r3_37:ChangeState(Enum.HumanoidStateType.Jumping)
                    end
                  until not _G.VIC or not r0_37() or not r17_0 or not isCharacterAlive()
                  r16_0 = false
                end
              end
            else
              ::label_132::
              ::label_132::
              r16_0 = false
            end
          end)
          wait(0.2)
        end
      end
      r16_0 = false
    else
      goto label_22	-- block#3 is visited secondly
    end
  end)
  r10_0.VIC:SetValue(false)
  r9_0.Combat:AddToggle("CRAB", {
    Title = "Auto Coconut Crab",
    Default = false,
  }):OnChanged(function()
    -- line: [0, 0] id: 49
    _G.CRAB = r10_0.CRAB.Value
    if _G.CRAB then
      while _G.CRAB do
        local r0_49 = game:GetService("Players")
        local r1_49 = game:GetService("TweenService")
        local r2_49 = r0_49.LocalPlayer
        local r3_49 = 1
        function partExists()
          -- line: [0, 0] id: 50
          for r3_50, r4_50 in ipairs(workspace:GetChildren()) do
            if r4_50:IsA("Part") and r4_50.Name == "Beecon Hub On Top" then
              return true
            end
          end
          return false
        end
        local function r4_49(r0_52, r1_52, r2_52)
          -- line: [0, 0] id: 52
          local r3_52 = r1_52.Position
          local r4_52 = r1_52.Size
          if r3_52 and r4_52 then
            local r5_52 = Vector3.new(r4_52.X + r2_52, r4_52.Y, r4_52.Z + r2_52)
            local r6_52 = r3_52 - r5_52 / 2
            local r7_52 = r3_52 + r5_52 / 2
            local r8_52 = r0_52.X
            if r6_52.X <= r8_52 then
              r8_52 = r0_52.X
              if r8_52 <= r7_52.X then
                r8_52 = r0_52.Z
                if r6_52.Z <= r8_52 then
                  r8_52 = r0_52.Z <= r7_52.Z
                end
              end
            else
              goto label_34	-- block#6 is visited secondly
            end
            return r8_52
          end
          return false
        end
        local function r5_49(r0_51, r1_51)
          -- line: [0, 0] id: 51
          local r2_51 = r2_49.Character
          if not r2_51 or not r2_51:FindFirstChild("HumanoidRootPart") then
            return 
          end
          local r3_51 = r2_51:WaitForChild("HumanoidRootPart")
          local r4_51 = r0_51.Position + Vector3.new(0, 3, 0)
          local r5_51 = (r4_51 - r3_51.Position).unit
          local r6_51 = CFrame.new(r4_51)
          local r9_51 = r1_49:Create(r3_51, TweenInfo.new(((r6_51.p - r3_51.CFrame.p)).Magnitude / r31_0, Enum.EasingStyle.Linear), {
            CFrame = r6_51,
          })
          r9_51:Play()
          r9_51.Completed:Wait()
          return r9_51
        end
        local r6_49 = r2_49.Character
        if partExists() then
          if not r4_49(r6_49.PrimaryPart.Position, workspace["Beecon Hub On Top"], r3_49) then
            local r7_49 = Instance.new("BodyVelocity", game.Workspace)
            r7_49.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
            r7_49.velocity = Vector3.new(0, 0, 0)
            r7_49.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
            r7_49.Name = "Main"
            r5_49(workspace["Beecon Hub On Top"].CFrame, r31_0)
            wait(0)
            r6_49.HumanoidRootPart.Main:Destroy()
          else
            for r10_49, r11_49 in pairs(workspace.Collectibles:GetChildren()) do
              if r11_49:FindFirstChild("BackDecal") and r11_49.BackDecal.Texture == "rbxassetid://2319083910" then
                local r12_49 = Instance.new("BodyVelocity", r6_49.HumanoidRootPart)
                r12_49.velocity = Vector3.new(0, 0, 0)
                r12_49.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                r12_49.Name = "Main"
                r5_49(r11_49.CFrame)
                wait(0)
                r6_49.HumanoidRootPart.Main:Destroy()
              end
            end
          end
        else
          local r7_49 = Instance.new("Part")
          r7_49.Name = "Beecon Hub On Top"
          r7_49.Parent = workspace
          r7_49.CFrame = CFrame.new(-307.52117919922, 105.91863250732, 467.86791992188)
          r7_49.Size = Vector3.new(10, 1, 10)
          r7_49.Transparency = 0.4
          r7_49.Anchored = true
        end
        wait(0.2)
        -- close: r0_49
      end
    end
  end)
  r10_0.CRAB:SetValue(false)
  -- close: r11_0
  r13_0 = r5_0
  r6_0:SetLibrary(r13_0)
  r13_0 = r5_0
  r7_0:SetLibrary(r13_0)
  r6_0:IgnoreThemeSettings()
  r13_0 = {}
  r6_0:SetIgnoreIndexes(r13_0)
  r13_0 = "FluentScriptHub"
  r7_0:SetFolder(r13_0)
  r13_0 = "FluentScriptHub/specific-game"
  r6_0:SetFolder(r13_0)
  r13_0 = r9_0.Settings
  r7_0:BuildInterfaceSection(r13_0)
  r13_0 = r9_0.Settings
  r6_0:BuildConfigSection(r13_0)
  r13_0 = 1
  r8_0:SelectTab(r13_0)
  r13_0 = {}
  r14_0 = "Beecon Hub"
  r13_0.Title = r14_0
  r14_0 = "The script has been loaded."
  r13_0.Content = r14_0
  r14_0 = 3
  r13_0.Duration = r14_0
  r5_0:Notify(r13_0)
  r13_0 = "LoadAutoloadConfig"
  r6_0:[r13_0]()
  -- close: r5_0
end
