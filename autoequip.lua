-- Code by HikmatXD. 
-- Fuck you recode.

while true do -- Loop
 local player = game.Players.LocalPlayer
    local backpack = player.Backpack

    for _,item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") then -- Tool
            item.Parent = player.Character
      end
   end
wait(1) end -- countdown :D LOL
-- end loop