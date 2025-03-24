-- Create the GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Glock.Lol Fisch"
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Parent = ScreenGui

local Label = Instance.new("TextLabel")
Label.Size = UDim2.new(1, 0, 0.3, 0)
Label.Text = "Glock.Lol Fisch - Auto Reels & Auto Shakes"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1
Label.Parent = Frame

local AutoReelButton = Instance.new("TextButton")
AutoReelButton.Size = UDim2.new(1, 0, 0.3, 0)
AutoReelButton.Position = UDim2.new(0, 0, 0.3, 0)
AutoReelButton.Text = "Toggle Auto Reel"
AutoReelButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
AutoReelButton.Parent = Frame

local AutoShakeButton = Instance.new("TextButton")
AutoShakeButton.Size = UDim2.new(1, 0, 0.3, 0)
AutoShakeButton.Position = UDim2.new(0, 0, 0.6, 0)
AutoShakeButton.Text = "Toggle Auto Shake"
AutoShakeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
AutoShakeButton.Parent = Frame

-- Variables for auto reel and auto shake
local autoReelEnabled = false
local autoShakeEnabled = false

-- Function to handle auto reel
local function toggleAutoReel()
    autoReelEnabled = not autoReelEnabled
    if autoReelEnabled then
        AutoReelButton.Text = "Auto Reel: ON"
    else
        AutoReelButton.Text = "Auto Reel: OFF"
    end
end

-- Function to handle auto shake
local function toggleAutoShake()
    autoShakeEnabled = not autoShakeEnabled
    if autoShakeEnabled then
        AutoShakeButton.Text = "Auto Shake: ON"
    else
        AutoShakeButton.Text = "Auto Shake: OFF"
    end
end

-- Connect buttons to functions
AutoReelButton.MouseButton1Click:Connect(toggleAutoReel)
AutoShakeButton.MouseButton1Click:Connect(toggleAutoShake)

-- Main loop for auto reel and auto shake
local function mainLoop()
    while true do
        wait(0.1) -- Wait a small amount of time between checks
        if autoReelEnabled then
            -- Add code for automatic reeling action here
            print("Auto Reeling...")
        end

        if autoShakeEnabled then
            -- Add code for automatic shaking action here
            print("Auto Shaking...")
        end
    end
end

-- Start the main loop
spawn(mainLoop)
