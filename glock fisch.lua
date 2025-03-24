-- Glock.lol Fisch Script for Roblox Fisch Game
-- This script automates fishing and provides an advanced GUI

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

-- GUI Setup
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "GlockFischGui"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.fromRGB(50, 50, 50)
frame.BackgroundTransparency = 0.3

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0.15, 0)
title.BackgroundTransparency = 1
title.Text = "Glock.lol Fisch"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 22
title.TextAlign = Enum.TextAlign.Center

-- Auto-Fish Button
local autoFishButton = Instance.new("TextButton", frame)
autoFishButton.Size = UDim2.new(0.8, 0, 0.2, 0)
autoFishButton.Position = UDim2.new(0.5, -150, 0.3, 0)
autoFishButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
autoFishButton.Text = "Start Auto-Fish"
autoFishButton.TextColor3 = Color3.fromRGB(255, 255, 255)
autoFishButton.TextSize = 20

-- Auto-Reel Button
local autoReelButton = Instance.new("TextButton", frame)
autoReelButton.Size = UDim2.new(0.8, 0, 0.2, 0)
autoReelButton.Position = UDim2.new(0.5, -150, 0.6, 0)
autoReelButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
autoReelButton.Text = "Start Auto-Reel"
autoReelButton.TextColor3 = Color3.fromRGB(255, 255, 255)
autoReelButton.TextSize = 20

-- Function to start auto-fishing
local function startAutoFish()
    -- Assuming fishing mechanics are triggered by clicking at a specific spot
    while true do
        -- If fishing rod is in hand, click on the fishing spot automatically
        if player.Character and player.Character:FindFirstChild("FishingRod") then
            -- Click the fishing spot
            local fishingSpot = workspace:FindFirstChild("FishingSpot")
            if fishingSpot then
                mouse.Hit = fishingSpot.CFrame
                mouse.Button1Down:Fire()
                wait(1)  -- Wait for the fishing action to process
            end
        end
        wait(2)  -- Wait before reattempting
    end
end

-- Function to start auto-reeling
local function startAutoReel()
    -- Check for reel action
    while true do
        -- If the reel button is available, simulate clicking it
        local reelButton = player.PlayerGui:FindFirstChild("ReelButton")
        if reelButton then
            reelButton.MouseButton1Click:Fire()
        end
        wait(2)  -- Adjust the time to make it seem like a natural reel
    end
end

-- Button functionality
autoFishButton.MouseButton1Click:Connect(function()
    autoFishButton.Text = "Auto-Fish Active"
    autoFishButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
    startAutoFish()
end)

autoReelButton.MouseButton1Click:Connect(function()
    autoReelButton.Text = "Auto-Reel Active"
    autoReelButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    startAutoReel()
end)
