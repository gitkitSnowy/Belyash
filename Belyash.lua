-- ЭКРАН ЗАГРУЗКИ
local loadingScreen = Instance.new("ScreenGui")
local loadingFrame = Instance.new("Frame")
local loadingText = Instance.new("TextLabel")
local loadingBarBack = Instance.new("Frame")
local loadingBar = Instance.new("Frame")

loadingScreen.Name = "LoadingScreen"
loadingScreen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
loadingScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Фон
loadingFrame.Parent = loadingScreen
loadingFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
loadingFrame.BackgroundTransparency = 0.2
loadingFrame.Size = UDim2.new(1, 0, 1, 0)

-- Текст
loadingText.Parent = loadingFrame
loadingText.BackgroundTransparency = 1
loadingText.Position = UDim2.new(0.5, 0, 0.4, 0)
loadingText.Size = UDim2.new(0, 300, 0, 60)
loadingText.AnchorPoint = Vector2.new(0.5, 0.5)
loadingText.Font = Enum.Font.GothamBold
loadingText.Text = "CHEAT MENU\nBY BELYASH"
loadingText.TextColor3 = Color3.fromRGB(0, 200, 255)
loadingText.TextSize = 32
loadingText.RichText = true

-- Полоса загрузки фон
loadingBarBack.Parent = loadingFrame
loadingBarBack.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
loadingBarBack.BorderSizePixel = 0
loadingBarBack.Position = UDim2.new(0.3, 0, 0.5, 0)
loadingBarBack.Size = UDim2.new(0.4, 0, 0, 20)

-- Полоса загрузки
loadingBar.Parent = loadingBarBack
loadingBar.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
loadingBar.BorderSizePixel = 0
loadingBar.Size = UDim2.new(0, 0, 1, 0)

-- Анимация загрузки
for i = 1, 100 do
    loadingBar.Size = UDim2.new(i/100, 0, 1, 0)
    wait(0.02)
end

wait(0.3)
loadingScreen:Destroy()

-- ОСНОВНОЙ GUI
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local titleLabel = Instance.new("TextLabel")
local flyButton = Instance.new("TextButton")
local noclipButton = Instance.new("TextButton")
local speedButton = Instance.new("TextButton")
local jumpButton = Instance.new("TextButton")
local fakeLagButton = Instance.new("TextButton")
local closeButton = Instance.new("TextButton")

main.Name = "CheatMenu"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

-- Основной фрейм
Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
Frame.BorderColor3 = Color3.fromRGB(0, 150, 255)
Frame.Position = UDim2.new(0.7, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 200, 0, 300)
Frame.Active = true
Frame.Draggable = true

-- Закругленные углы
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = Frame

-- Обводка
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 150, 255)
stroke.Thickness = 2
stroke.Parent = Frame

-- Заголовок
titleLabel.Parent = Frame
titleLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Text = "CHEAT MENU\nby Belyash"
titleLabel.TextColor3 = Color3.fromRGB(0, 200, 255)
titleLabel.TextSize = 18
titleLabel.RichText = true

-- Кнопка Fly
flyButton.Name = "FlyButton"
flyButton.Parent = Frame
flyButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
flyButton.Position = UDim2.new(0.1, 0, 0.15, 0)
flyButton.Size = UDim2.new(0.8, 0, 0, 35)
flyButton.Font = Enum.Font.Gotham
flyButton.Text = "🔄 FLY"
flyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
flyButton.TextSize = 16

-- Кнопка Noclip
noclipButton.Name = "NoclipButton"
noclipButton.Parent = Frame
noclipButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
noclipButton.Position = UDim2.new(0.1, 0, 0.28, 0)
noclipButton.Size = UDim2.new(0.8, 0, 0, 35)
noclipButton.Font = Enum.Font.Gotham
noclipButton.Text = "🚀 NO CLIP"
noclipButton.TextColor3 = Color3.fromRGB(255, 255, 255)
noclipButton.TextSize = 16

-- Кнопка Speed
speedButton.Name = "SpeedButton"
speedButton.Parent = Frame
speedButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
speedButton.Position = UDim2.new(0.1, 0, 0.41, 0)
speedButton.Size = UDim2.new(0.8, 0, 0, 35)
speedButton.Font = Enum.Font.Gotham
speedButton.Text = "⚡ SPEED"
speedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
speedButton.TextSize = 16

-- Кнопка Jump
jumpButton.Name = "JumpButton"
jumpButton.Parent = Frame
jumpButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
jumpButton.Position = UDim2.new(0.1, 0, 0.54, 0)
jumpButton.Size = UDim2.new(0.8, 0, 0, 35)
jumpButton.Font = Enum.Font.Gotham
jumpButton.Text = "🦘 JUMP"
jumpButton.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpButton.TextSize = 16

-- Кнопка Fake Lag
fakeLagButton.Name = "FakeLagButton"
fakeLagButton.Parent = Frame
fakeLagButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
fakeLagButton.Position = UDim2.new(0.1, 0, 0.67, 0)
fakeLagButton.Size = UDim2.new(0.8, 0, 0, 35)
fakeLagButton.Font = Enum.Font.Gotham
fakeLagButton.Text = "🌀 FAKE LAG"
fakeLagButton.TextColor3 = Color3.fromRGB(255, 255, 255)
fakeLagButton.TextSize = 16

-- Кнопка закрытия
closeButton.Name = "CloseButton"
closeButton.Parent = Frame
closeButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
closeButton.Position = UDim2.new(0.1, 0, 0.8, 0)
closeButton.Size = UDim2.new(0.8, 0, 0, 35)
closeButton.Font = Enum.Font.GothamBold
closeButton.Text = "✖ ЗАКРЫТЬ"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 16

-- Скругление всех кнопок
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)

for _, button in pairs(Frame:GetChildren()) do
    if button:IsA("TextButton") then
        buttonCorner:Clone().Parent = button
        
        -- Эффект наведения
        button.MouseEnter:Connect(function()
            button.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
        end)
        
        button.MouseLeave:Connect(function()
            if button ~= closeButton then
                button.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
            end
        end)
    end
end

-- Уведомление
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Cheat Menu Загружен!",
    Text = "by Belyash - Выберите нужный чит",
    Duration = 3
})

-- ПЕРЕМЕННЫЕ ДЛЯ ЧИТОВ
local flyEnabled = false
local noclipEnabled = false
local speedEnabled = false
local jumpEnabled = false
local fakeLagEnabled = false

local speaker = game:GetService("Players").LocalPlayer
local flyBG, flyBV
local originalWalkSpeed = 16
local originalJumpPower = 50

-- ФУНКЦИЯ FLY
local function createFlyGui()
    local flyMain = Instance.new("ScreenGui")
    local flyFrame = Instance.new("Frame")
    local flyUp = Instance.new("TextButton")
    local flyDown = Instance.new("TextButton")
    local flyToggle = Instance.new("TextButton")
    local flyTitle = Instance.new("TextLabel")
    local flyPlus = Instance.new("TextButton")
    local flySpeed = Instance.new("TextLabel")
    local flyMinus = Instance.new("TextButton")
    local flyClose = Instance.new("TextButton")
    
    flyMain.Name = "FlyGUI"
    flyMain.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    flyMain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Сначала загрузка
    local flyLoading = Instance.new("Frame")
    flyLoading.Parent = flyMain
    flyLoading.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
    flyLoading.BackgroundTransparency = 0.2
    flyLoading.Size = UDim2.new(1, 0, 1, 0)
    
    local flyLoadingText = Instance.new("TextLabel")
    flyLoadingText.Parent = flyLoading
    flyLoadingText.BackgroundTransparency = 1
    flyLoadingText.Position = UDim2.new(0.5, 0, 0.4, 0)
    flyLoadingText.Size = UDim2.new(0, 300, 0, 60)
    flyLoadingText.AnchorPoint = Vector2.new(0.5, 0.5)
    flyLoadingText.Font = Enum.Font.GothamBold
    flyLoadingText.Text = "FLY\nBY BELYASH"
    flyLoadingText.TextColor3 = Color3.fromRGB(0, 200, 255)
    flyLoadingText.TextSize = 32
    flyLoadingText.RichText = true
    
    local flyLoadingBarBack = Instance.new("Frame")
    flyLoadingBarBack.Parent = flyLoading
    flyLoadingBarBack.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    flyLoadingBarBack.BorderSizePixel = 0
    flyLoadingBarBack.Position = UDim2.new(0.3, 0, 0.5, 0)
    flyLoadingBarBack.Size = UDim2.new(0.4, 0, 0, 20)
    
    local flyLoadingBar = Instance.new("Frame")
    flyLoadingBar.Parent = flyLoadingBarBack
    flyLoadingBar.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
    flyLoadingBar.BorderSizePixel = 0
    flyLoadingBar.Size = UDim2.new(0, 0, 1, 0)
    
    -- Анимация загрузки
    spawn(function()
        for i = 1, 100 do
            flyLoadingBar.Size = UDim2.new(i/100, 0, 1, 0)
            wait(0.01)
        end
        wait(0.2)
        flyLoading:Destroy()
        
        -- Основной интерфейс флая
        flyFrame.Parent = flyMain
        flyFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
        flyFrame.BorderColor3 = Color3.fromRGB(0, 150, 255)
        flyFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
        flyFrame.Size = UDim2.new(0, 200, 0, 150)
        flyFrame.Active = true
        flyFrame.Draggable = true
        
        flyUp.Parent = flyFrame
        flyUp.BackgroundColor3 = Color3.fromRGB(60, 180, 60)
        flyUp.Position = UDim2.new(0.1, 0, 0.3, 0)
        flyUp.Size = UDim2.new(0.35, 0, 0.2, 0)
        flyUp.Font = Enum.Font.SourceSansBold
        flyUp.Text = "↑ ВВЕРХ"
        flyUp.TextColor3 = Color3.fromRGB(255, 255, 255)
        flyUp.TextSize = 14
        
        flyDown.Parent = flyFrame
        flyDown.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
        flyDown.Position = UDim2.new(0.55, 0, 0.3, 0)
        flyDown.Size = UDim2.new(0.35, 0, 0.2, 0)
        flyDown.Font = Enum.Font.SourceSansBold
        flyDown.Text = "↓ ВНИЗ"
        flyDown.TextColor3 = Color3.fromRGB(255, 255, 255)
        flyDown.TextSize = 14
        
        flyToggle.Parent = flyFrame
        flyToggle.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
        flyToggle.Position = UDim2.new(0.1, 0, 0.55, 0)
        flyToggle.Size = UDim2.new(0.8, 0, 0.3, 0)
        flyToggle.Font = Enum.Font.SourceSansBold
        flyToggle.Text = "🔄 ВКЛЮЧИТЬ ПОЛЕТ"
        flyToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
        flyToggle.TextSize = 16
        
        flyTitle.Parent = flyFrame
        flyTitle.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
        flyTitle.Position = UDim2.new(0, 0, 0, 0)
        flyTitle.Size = UDim2.new(1, 0, 0.2, 0)
        flyTitle.Font = Enum.Font.SourceSansBold
        flyTitle.Text = "FLY v3"
        flyTitle.TextColor3 = Color3.fromRGB(0, 200, 255)
        flyTitle.TextSize = 18
        
        flyPlus.Parent = flyFrame
        flyPlus.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
        flyPlus.Position = UDim2.new(0.7, 0, 0.85, 0)
        flyPlus.Size = UDim2.new(0.2, 0, 0.1, 0)
        flyPlus.Font = Enum.Font.SourceSansBold
        flyPlus.Text = "+"
        flyPlus.TextColor3 = Color3.fromRGB(100, 255, 100)
        flyPlus.TextSize = 20
        
        flySpeed.Parent = flyFrame
        flySpeed.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
        flySpeed.Position = UDim2.new(0.4, 0, 0.85, 0)
        flySpeed.Size = UDim2.new(0.2, 0, 0.1, 0)
        flySpeed.Font = Enum.Font.SourceSansBold
        flySpeed.Text = "1"
        flySpeed.TextColor3 = Color3.fromRGB(255, 255, 255)
        flySpeed.TextSize = 16
        
        flyMinus.Parent = flyFrame
        flyMinus.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
        flyMinus.Position = UDim2.new(0.1, 0, 0.85, 0)
        flyMinus.Size = UDim2.new(0.2, 0, 0.1, 0)
        flyMinus.Font = Enum.Font.SourceSansBold
        flyMinus.Text = "-"
        flyMinus.TextColor3 = Color3.fromRGB(255, 100, 100)
        flyMinus.TextSize = 20
        
        flyClose.Parent = flyFrame
        flyClose.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
        flyClose.Position = UDim2.new(0.7, 0, 0, 0)
        flyClose.Size = UDim2.new(0.3, 0, 0.2, 0)
        flyClose.Font = Enum.Font.SourceSansBold
        flyClose.Text = "✖"
        flyClose.TextColor3 = Color3.fromRGB(255, 255, 255)
        flyClose.TextSize = 16
        
        -- ЛОГИКА FLY
        local flySpeeds = 1
        local isFlying = false
        
        local function toggleFlying()
            if isFlying then
                isFlying = false
                flyToggle.Text = "🔄 ВКЛЮЧИТЬ ПОЛЕТ"
                flyToggle.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
                
                if flyBG then flyBG:Destroy() end
                if flyBV then flyBV:Destroy() end
                
                if speaker.Character then
                    local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        humanoid.PlatformStand = false
                    end
                end
            else
                isFlying = true
                flyToggle.Text = "✈️ ВЫКЛЮЧИТЬ ПОЛЕТ"
                flyToggle.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
                
                if speaker.Character then
                    local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        humanoid.PlatformStand = true
                        
                        local part
                        if humanoid.RigType == Enum.HumanoidRigType.R6 then
                            part = speaker.Character:FindFirstChild("Torso")
                        else
                            part = speaker.Character:FindFirstChild("UpperTorso") or speaker.Character:FindFirstChild("HumanoidRootPart")
                        end
                        
                        if part then
                            flyBG = Instance.new("BodyGyro", part)
                            flyBG.P = 9e4
                            flyBG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                            flyBG.cframe = part.CFrame
                            
                            flyBV = Instance.new("BodyVelocity", part)
                            flyBV.velocity = Vector3.new(0, 0, 0)
                            flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
                            
                            spawn(function()
                                while isFlying and speaker.Character and speaker.Character:FindFirstChildOfClass("Humanoid") do
                                    wait()
                                    
                                    local moveDir = humanoid.MoveDirection
                                    local cam = game.Workspace.CurrentCamera
                                    
                                    if moveDir.Magnitude > 0 then
                                        local forward = cam.CFrame.LookVector
                                        local right = cam.CFrame.RightVector
                                        
                                        local moveX = moveDir:Dot(right)
                                        local moveZ = moveDir:Dot(forward)
                                        
                                        local velocity = (right * moveX + forward * moveZ) * (flySpeeds * 25)
                                        flyBV.velocity = Vector3.new(velocity.X, flyBV.velocity.Y, velocity.Z)
                                    else
                                        flyBV.velocity = Vector3.new(0, flyBV.velocity.Y, 0)
                                    end
                                    
                                    if flyBG then
                                        flyBG.cframe = cam.CoordinateFrame
                                    end
                                end
                            end)
                        end
                    end
                end
            end
        end
        
        flyUp.MouseButton1Down:Connect(function()
            if isFlying and flyBV then
                flyBV.velocity = Vector3.new(flyBV.velocity.X, 30, flyBV.velocity.Z)
            end
        end)
        
        flyUp.MouseButton1Up:Connect(function()
            if isFlying and flyBV then
                flyBV.velocity = Vector3.new(flyBV.velocity.X, 0, flyBV.velocity.Z)
            end
        end)
        
        flyDown.MouseButton1Down:Connect(function()
            if isFlying and flyBV then
                flyBV.velocity = Vector3.new(flyBV.velocity.X, -30, flyBV.velocity.Z)
            end
        end)
        
        flyDown.MouseButton1Up:Connect(function()
            if isFlying and flyBV then
                flyBV.velocity = Vector3.new(flyBV.velocity.X, 0, flyBV.velocity.Z)
            end
        end)
        
        flyToggle.MouseButton1Click:Connect(toggleFlying)
        
        flyPlus.MouseButton1Click:Connect(function()
            flySpeeds = math.min(flySpeeds + 1, 10)
            flySpeed.Text = tostring(flySpeeds)
        end)
        
        flyMinus.MouseButton1Click:Connect(function()
            flySpeeds = math.max(flySpeeds - 1, 1)
            flySpeed.Text = tostring(flySpeeds)
        end)
        
        flyClose.MouseButton1Click:Connect(function()
            if isFlying then
                isFlying = false
                if flyBG then flyBG:Destroy() end
                if flyBV then flyBV:Destroy() end
            end
            flyMain:Destroy()
        end)
        
        speaker.CharacterAdded:Connect(function()
            wait(1)
            if isFlying then
                isFlying = false
                flyToggle.Text = "🔄 ВКЛЮЧИТЬ ПОЛЕТ"
                flyToggle.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
                
                if flyBG then flyBG:Destroy() end
                if flyBV then flyBV:Destroy() end
            end
        end)
    end)
end

-- NO CLIP
local noclipConnection
noclipButton.MouseButton1Click:Connect(function()
    noclipEnabled = not noclipEnabled
    
    if noclipEnabled then
        noclipButton.Text = "🚀 NO CLIP: ON"
        noclipButton.BackgroundColor3 = Color3.fromRGB(60, 180, 60)
        
        noclipConnection = game:GetService("RunService").Stepped:Connect(function()
            if speaker.Character then
                for _, part in pairs(speaker.Character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end)
    else
        noclipButton.Text = "🚀 NO CLIP"
        noclipButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
        
        if noclipConnection then
            noclipConnection:Disconnect()
        end
    end
end)

-- SPEED HACK
speedButton.MouseButton1Click:Connect(function()
    speedEnabled = not speedEnabled
    
    if speedEnabled then
        speedButton.Text = "⚡ SPEED: ON"
        speedButton.BackgroundColor3 = Color3.fromRGB(60, 180, 60)
        
        if speaker.Character then
            local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                originalWalkSpeed = humanoid.WalkSpeed
                humanoid.WalkSpeed = 50
            end
        end
    else
        speedButton.Text = "⚡ SPEED"
        speedButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
        
        if speaker.Character then
            local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = originalWalkSpeed
            end
        end
    end
end)

-- JUMP HACK
jumpButton.MouseButton1Click:Connect(function()
    jumpEnabled = not jumpEnabled
    
    if jumpEnabled then
        jumpButton.Text = "🦘 JUMP: ON"
        jumpButton.BackgroundColor3 = Color3.fromRGB(60, 180, 60)
        
        if speaker.Character then
            local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                originalJumpPower = humanoid.JumpPower
                humanoid.JumpPower = 100
            end
        end
    else
        jumpButton.Text = "🦘 JUMP"
        jumpButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
        
        if speaker.Character then
            local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.JumpPower = originalJumpPower
            end
        end
    end
end)

-- FAKE LAG
local fakeLagGUI
local fakeLagEnabled = false
local fakeLagDelay = 2
local fakeLagConnection

fakeLagButton.MouseButton1Click:Connect(function()
    if not fakeLagGUI then
        -- Создаем GUI для Fake Lag
        fakeLagGUI = Instance.new("ScreenGui")
        local fakeFrame = Instance.new("Frame")
        local fakeTitle = Instance.new("TextLabel")
        local fakeToggle = Instance.new("TextButton")
        local fakeInput = Instance.new("TextBox")
        local fakeClose = Instance.new("TextButton")
        
        fakeLagGUI.Name = "FakeLagGUI"
        fakeLagGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        fakeLagGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        fakeFrame.Parent = fakeLagGUI
        fakeFrame.Size = UDim2.new(0, 220, 0, 140)
        fakeFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
        fakeFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
        fakeFrame.Active = true
        fakeFrame.Draggable = true
        
        local fakeCorner = Instance.new("UICorner")
        fakeCorner.CornerRadius = UDim.new(0, 10)
        fakeCorner.Parent = fakeFrame
        
        local fakeStroke = Instance.new("UIStroke")
        fakeStroke.Color = Color3.fromRGB(0, 150, 255)
        fakeStroke.Thickness = 2
        fakeStroke.Parent = fakeFrame
        
        fakeTitle.Parent = fakeFrame
        fakeTitle.Size = UDim2.new(1, 0, 0, 30)
        fakeTitle.Text = "🌀 FAKE LAG by Belyash"
        fakeTitle.Font = Enum.Font.GothamBold
        fakeTitle.TextSize = 16
        fakeTitle.TextColor3 = Color3.fromRGB(0, 200, 255)
        fakeTitle.BackgroundTransparency = 1
        
        fakeToggle.Parent = fakeFrame
        fakeToggle.Size = UDim2.new(0.9, 0, 0, 30)
        fakeToggle.Position = UDim2.new(0.05, 0, 0.25, 0)
        fakeToggle.Text = "Fake Lag: OFF"
        fakeToggle.Font = Enum.Font.Gotham
        fakeToggle.TextSize = 14
        fakeToggle.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
        fakeToggle.TextColor3 = Color3.new(1, 1, 1)
        
        local toggleCorner = Instance.new("UICorner")
        toggleCorner.CornerRadius = UDim.new(0, 6)
        toggleCorner.Parent = fakeToggle
        
        fakeInput.Parent = fakeFrame
        fakeInput.Size = UDim2.new(0.9, 0, 0, 25)
        fakeInput.Position = UDim2.new(0.05, 0, 0.55, 0)
        fakeInput.PlaceholderText = "Задержка (2 = замедление, 0.3 = ускорение)"
        fakeInput.Text = "2"
        fakeInput.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
        fakeInput.TextColor3 = Color3.new(1, 1, 1)
        fakeInput.Font = Enum.Font.Gotham
        fakeInput.TextSize = 13
        
        local inputCorner = Instance.new("UICorner")
        inputCorner.CornerRadius = UDim.new(0, 6)
        inputCorner.Parent = fakeInput
        
        fakeClose.Parent = fakeFrame
        fakeClose.Size = UDim2.new(0.9, 0, 0, 25)
        fakeClose.Position = UDim2.new(0.05, 0, 0.8, 0)
        fakeClose.Text = "✖ ЗАКРЫТЬ"
        fakeClose.Font = Enum.Font.Gotham
        fakeClose.TextSize = 14
        fakeClose.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
        fakeClose.TextColor3 = Color3.new(1, 1, 1)
        
        local closeCorner = Instance.new("UICorner")
        closeCorner.CornerRadius = UDim.new(0, 6)
        closeCorner.Parent = fakeClose
        
        -- ЛОГИКА FAKE LAG
        fakeToggle.MouseButton1Click:Connect(function()
            fakeLagEnabled = not fakeLagEnabled
            fakeToggle.Text = "Fake Lag: " .. (fakeLagEnabled and "ON" or "OFF")
            
            if fakeLagEnabled then
                fakeLagDelay = tonumber(fakeInput.Text) or 2
                fakeToggle.BackgroundColor3 = Color3.fromRGB(60, 180, 60)
                
                -- УСКОРЕННАЯ АНИМАЦИЯ С ОБЫЧНОЙ СКОРОСТЬЮ
                if speaker.Character then
                    local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        -- Ускоряем анимацию
                        local animate = speaker.Character:FindFirstChild("Animate")
                        if animate then
                            for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
                                if fakeLagDelay < 1 then
                                    track:AdjustSpeed(3) -- Ускоренная анимация
                                else
                                    track:AdjustSpeed(0.5) -- Замедленная анимация
                                end
                            end
                        end
                        
                        -- Создаем эффект лага
                        fakeLagConnection = game:GetService("RunService").Heartbeat:Connect(function()
                            if speaker.Character and speaker.Character:FindFirstChild("HumanoidRootPart") then
                                -- Временное "замораживание" позиции
                                local root = speaker.Character.HumanoidRootPart
                                local originalCFrame = root.CFrame
                                
                                -- Случайные микросдвиги для эффекта лага
                                wait(fakeLagDelay * 0.1)
                                root.CFrame = originalCFrame + Vector3.new(
                                    math.random(-0.1, 0.1),
                                    math.random(-0.05, 0.05),
                                    math.random(-0.1, 0.1)
                                )
                                
                                wait(fakeLagDelay * 0.1)
                                root.CFrame = originalCFrame
                            end
                        end)
                    end
                end
            else
                fakeToggle.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
                
                -- Восстанавливаем анимацию
                if speaker.Character then
                    local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
                            track:AdjustSpeed(1)
                        end
                    end
                end
                
                if fakeLagConnection then
                    fakeLagConnection:Disconnect()
                end
            end
        end)
        
        fakeClose.MouseButton1Click:Connect(function()
            -- Выключаем fake lag перед закрытием
            if fakeLagEnabled then
                fakeLagEnabled = false
                if fakeLagConnection then
                    fakeLagConnection:Disconnect()
                end
                
                -- Восстанавливаем анимацию
                if speaker.Character then
                    local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
                            track:AdjustSpeed(1)
                        end
                    end
                end
            end
            
            fakeLagGUI:Destroy()
            fakeLagGUI = nil
            fakeLagButton.Text = "🌀 FAKE LAG"
            fakeLagButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
        end)
        
        fakeLagButton.Text = "🌀 FAKE LAG: MENU"
        fakeLagButton.BackgroundColor3 = Color3.fromRGB(60, 60, 180)
    else
        fakeLagGUI:Destroy()
        fakeLagGUI = nil
        fakeLagButton.Text = "🌀 FAKE LAG"
        fakeLagButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    end
end)

-- ОБРАБОТЧИКИ КНОПОК
flyButton.MouseButton1Click:Connect(createFlyGui)

closeButton.MouseButton1Click:Connect(function()
    -- Выключаем все читы перед закрытием
    if noclipEnabled and noclipConnection then
        noclipConnection:Disconnect()
    end
    
    if speedEnabled and speaker.Character then
        local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = originalWalkSpeed
        end
    end
    
    if jumpEnabled and speaker.Character then
        local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.JumpPower = originalJumpPower
        end
    end
    
    if fakeLagEnabled and fakeLagConnection then
        fakeLagEnabled = false
        fakeLagConnection:Disconnect()
        
        if speaker.Character then
            local humanoid = speaker.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
                    track:AdjustSpeed(1)
                end
            end
        end
    end
    
    if fakeLagGUI then
        fakeLagGUI:Destroy()
    end
    
    main:Destroy()
end)
