-- Code by HikmatXD.
-- Fuck you recode.

_G.PantsDestroy = true
_G.ShirtDestroy = true
_G.RainbowTRPANCY = 0.25
_G.ColorChangeTM = 0.5

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local Shirt = ShirtDestroy
local Pants = PantsDestroy
local TransparencyRainbow = _G.RainbowTRPANCY
local TimeChanceColor = _G.ColorChangeTM

local function randomColor()
    return Color3.new(math.random(0, 255)/255, math.random(0, 255)/255, math.random(0, 255)/255)
end

local function lerpColor(startColor, endColor, alpha)
    return startColor:Lerp(endColor, alpha)
end

local transitionTime = TimeChanceColor

if Shirt and Pants == true then
character.Shirt:Destroy()
character.Pants:Destroy()
elseif Shirt == true then
character.Shirt:Destroy()
elseif Pants == true then
character.Pants:Destroy()
else
warn("not")
end
  


while true do
    local startTime = tick()
    local endTime = startTime + transitionTime
    
    local startColor = randomColor()
    local endColor = randomColor()
    
    while tick() < endTime do
        local elapsedTime = tick() - startTime
        local alpha = elapsedTime / transitionTime
        
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Color = lerpColor(startColor, endColor, alpha)
                part.Transparency = TransparencyRainbow
                part.Material = Enum.Material.ForceField
            end
        end
        wait()
    end
end

-- or --

--[[ 

  local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function randomColor()
    return Color3.new(math.random(0, 255)/255, math.random(0, 255)/255, math.random(0, 255)/255)
end

local function lerpColor(startColor, endColor, alpha)
    return startColor:Lerp(endColor, alpha)
end

local transitionTime = 0.5

character.Shirt:Destroy()
character.Pants:Destroy()

while true do
    local startTime = tick()
    local endTime = startTime + transitionTime
    
    local startColor = randomColor()
    local endColor = randomColor()
    
    while tick() < endTime do
        local elapsedTime = tick() - startTime
        local alpha = elapsedTime / transitionTime
        
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Color = lerpColor(startColor, endColor, alpha)
                part.Transparency = 0.25
                part.Material = Enum.Material.ForceField
            end
        end
        
        wait()
    end
end

]]