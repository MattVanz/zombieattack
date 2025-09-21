-- Code by HikmatXD
-- Fuck you recode

local function addEnemyESP(Zombie)
    local BillboardGui = Instance.new("BillboardGui")
    BillboardGui.Name = "EnemyESP"
    BillboardGui.Size = UDim2.new(0, 100, 0, 40)
    BillboardGui.Adornee = Zombie
    BillboardGui.AlwaysOnTop = true
    BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
    BillboardGui.Parent = Zombie
    
    local TextLabel = Instance.new("TextLabel")
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.TextColor3 = Color3.new(1, 0, 0)
    TextLabel.TextStrokeTransparency = 0.5
    TextLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    TextLabel.TextScaled = true
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = "Zombie"
    TextLabel.Parent = BillboardGui
    
    local Highlight = Instance.new("ImageLabel")
    Highlight.Name = "Highlight"
    Highlight.BackgroundTransparency = 1
    Highlight.Size = UDim2.new(1, 6, 1, 6)
    Highlight.Position = UDim2.new(-0.5, -3, -0.5, -3)
    Highlight.Image = "rbxassetid://4748513315"
    Highlight.ImageColor3 = Color3.new(1, 1, 1)
    Highlight.Parent = BillboardGui
end

local function addAllEnemyESP()
    local enemies = workspace.enemies:GetChildren()
    for _, Zombie in ipairs(enemies) do
        addEnemyESP(Zombie)
    end
end

addAllEnemyESP()

workspace.enemies.ChildAdded:Connect(function(Zombie)
    addEnemyESP(Zombie)
end)

local function addBossESP(boss)
    local BillboardGui = Instance.new("BillboardGui")
    BillboardGui.Name = "BossESP"
    BillboardGui.Size = UDim2.new(0, 100, 0, 40)
    BillboardGui.Adornee = boss
    BillboardGui.AlwaysOnTop = true
    BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
    BillboardGui.Parent = boss
    
    local TextLabel = Instance.new("TextLabel")
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.TextColor3 = Color3.new(0, 1, 0)
    TextLabel.TextStrokeTransparency = 0.5
    TextLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    TextLabel.TextScaled = true
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = "Boss"
    TextLabel.Parent = BillboardGui
    
    local Highlight = Instance.new("ImageLabel")
    Highlight.Name = "Highlight"
    Highlight.BackgroundTransparency = 1
    Highlight.Size = UDim2.new(1, 6, 1, 6)
    Highlight.Position = UDim2.new(-0.5, -3, -0.5, -3)
    Highlight.Image = "rbxassetid://4748513315"
    Highlight.ImageColor3 = Color3.new(1, 1, 1)
    Highlight.Parent = BillboardGui
end

local function addAllBossESP()
    local bosses = game.Workspace.BossFolder:GetChildren()
    for _, boss in ipairs(bosses) do
        addBossESP(boss)
    end
end

addAllBossESP()

game.Workspace.BossFolder.ChildAdded:Connect(function(boss)
    addBossESP(boss)
end)