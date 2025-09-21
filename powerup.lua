-- Code by HikmatXD.
-- Fuck you recode.
powerups = game.workspace.Powerups
print(powerups)
for i,v in pairs(powerups:GetChildren()) do 
print(v.Part.TouchInterest)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Part,0)
end

-- best version --
--[[

while true do
powerups = game.workspace.Powerups
print(powerups)
for i,v in pairs(powerups:GetChildren()) do 
print(v.Part.TouchInterest)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Part,0)
end
task.wait()
end

]]