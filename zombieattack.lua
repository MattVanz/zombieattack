--Create By HikmattXD. 
--Fuck you recode.
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "Zombie Attack V.2 • HikmatXD.",
    LoadingTitle = "Zombie Attack MattTzy.",
    LoadingSubtitle = "by HikmatXD.",
    Theme = "Default",
    ToggleUIKeybind = "K",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "ZombieAttackScript"
    },
    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = true
    },
    KeySystem = false
})

local Tab = Window:CreateTab(" main ", 4483362458)
local PlayEd = Window:CreateTab(" all esp/edit player ", 4483362458)
--local SpecTab = Window:CreateTab(" special menu ", 4483362458)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local runningConnection
local Toggle
 
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
 
for _,v in pairs(getgc(true)) do
   if type(v) == "table" and rawget(v,"Mode") then
       if v.Name == "Big Cannon" then
               v.FireRate = 9e9
               v.Mode = 2
               v.Range = 9e9
               v.Damage = 9e9
               v.ReloadTime = 0
               v.MagSize = 9e9
               v.Recoil = Vector3.new(0,0,0)
           else
               v.FireRate = 9e9
               v.Damage = 9e9
               v.Range = 9e9
               v.ReloadTime = 0
               v.MagSize = 9e9
               v.Recoil = Vector3.new(0,0,0)
       end
   end
end
 
local Slider = Tab:CreateSlider({
   Name = "walkspeed player",
   Range = {16, 500},
   Increment = 1,
   Suffix = "speed",
   CurrentValue = 16,
   Flag = "Slider1",
   Callback = function(Value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end, 
})

Toggle = Tab:CreateToggle({
    Name = "auto farm",
    CurrentValue = false,
    Flag = "AutoFarm",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MattVanz/zombieattack/refs/heads/main/autofarm.lua"))()
     end
})

Tab:CreateToggle({
    Name = "auto equip",
    CurrentValue = false,
    Flag = "AutoEquip",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MattVanz/zombieattack/refs/heads/main/autoequip.lua"))()
     end
})

PlayEd:CreateToggle({
    Name = "power up",
    CurrentValue = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MattVanz/zombieattack/refs/heads/main/powerup.lua"))()
     end
})

PlayEd:CreateToggle({
    Name = "esp zombie",
    CurrentValue = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MattVanz/zombieattack/refs/heads/main/espzombie.lua"))()
     end
})

PlayEd:CreateToggle({
    Name = "rainbow player",
    CurrentValue = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MattVanz/zombieattack/refs/heads/main/rainbowplayer.lua"))()
     end
})
