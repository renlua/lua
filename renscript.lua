------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
notify = function(...)
    local GUI = game:GetService("CoreGui"):FindFirstChild("STX_Nofitication")
    if not GUI then
        local STX_Nofitication = Instance.new("ScreenGui")
        local STX_NofiticationUIListLayout = Instance.new("UIListLayout")
        STX_Nofitication.Name = "STX_Nofitication"
        STX_Nofitication.Parent = game.CoreGui
        STX_Nofitication.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        STX_Nofitication.ResetOnSpawn = false

        STX_NofiticationUIListLayout.Name = "STX_NofiticationUIListLayout"
        STX_NofiticationUIListLayout.Parent = STX_Nofitication
        STX_NofiticationUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
        STX_NofiticationUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        STX_NofiticationUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    end
    local Args = {...}
    local Nofitication = {}
    local GUI = game:GetService("CoreGui"):FindFirstChild("STX_Nofitication")
    function Nofitication:Notify(nofdebug, middledebug, all)
        local SelectedType = string.lower(tostring(middledebug.Type))
        local ambientShadow = Instance.new("ImageLabel")
        local Window = Instance.new("Frame")
        local Outline_A = Instance.new("Frame")
        local WindowTitle = Instance.new("TextLabel")
        local WindowDescription = Instance.new("TextLabel")

        ambientShadow.Name = "ambientShadow"
        ambientShadow.Parent = GUI
        ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        ambientShadow.BackgroundTransparency = 1.000
        ambientShadow.BorderSizePixel = 0
        ambientShadow.Position = UDim2.new(0.91525954, 0, 0.936809778, 0)
        ambientShadow.Size = UDim2.new(0, 0, 0, 0)
        ambientShadow.Image = "rbxassetid://1316045217"
        ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        ambientShadow.ImageTransparency = 0.400
        ambientShadow.ScaleType = Enum.ScaleType.Slice
        ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

        Window.Name = "Window"
        Window.Parent = ambientShadow
        Window.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        Window.BorderSizePixel = 0
        Window.Position = UDim2.new(0, 5, 0, 5)
        Window.Size = UDim2.new(0, 230, 0, 80)
        Window.ZIndex = 2

        Outline_A.Name = "Outline_A"
        Outline_A.Parent = Window
        Outline_A.BackgroundColor3 = middledebug.OutlineColor
        Outline_A.BorderSizePixel = 0
        Outline_A.Position = UDim2.new(0, 0, 0, 25)
        Outline_A.Size = UDim2.new(0, 230, 0, 2)
        Outline_A.ZIndex = 5

        WindowTitle.Name = "WindowTitle"
        WindowTitle.Parent = Window
        WindowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        WindowTitle.BackgroundTransparency = 1.000
        WindowTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
        WindowTitle.BorderSizePixel = 0
        WindowTitle.Position = UDim2.new(0, 8, 0, 2)
        WindowTitle.Size = UDim2.new(0, 222, 0, 22)
        WindowTitle.ZIndex = 4
        WindowTitle.Font = Enum.Font.GothamSemibold
        WindowTitle.Text = nofdebug.Title
        WindowTitle.TextColor3 = Color3.fromRGB(220, 220, 220)
        WindowTitle.TextSize = 12.000
        WindowTitle.TextXAlignment = Enum.TextXAlignment.Left

        WindowDescription.Name = "WindowDescription"
        WindowDescription.Parent = Window
        WindowDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        WindowDescription.BackgroundTransparency = 1.000
        WindowDescription.BorderColor3 = Color3.fromRGB(27, 42, 53)
        WindowDescription.BorderSizePixel = 0
        WindowDescription.Position = UDim2.new(0, 8, 0, 34)
        WindowDescription.Size = UDim2.new(0, 216, 0, 40)
        WindowDescription.ZIndex = 4
        WindowDescription.Font = Enum.Font.GothamSemibold
        WindowDescription.Text = nofdebug.Description
        WindowDescription.TextColor3 = Color3.fromRGB(180, 180, 180)
        WindowDescription.TextSize = 12.000
        WindowDescription.TextWrapped = true
        WindowDescription.TextXAlignment = Enum.TextXAlignment.Left
        WindowDescription.TextYAlignment = Enum.TextYAlignment.Top

        if SelectedType == "default" then
            local function ORBHB_fake_script()
                local script = Instance.new("LocalScript", ambientShadow)

                ambientShadow:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
                Window.Size = UDim2.new(0, 230, 0, 80)
                Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)

                wait(middledebug.Time)

                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)

                wait(0.2)
                ambientShadow:Destroy()
            end
            coroutine.wrap(ORBHB_fake_script)()
        elseif SelectedType == "image" then
            ambientShadow:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
            Window.Size = UDim2.new(0, 230, 0, 80)
            WindowTitle.Position = UDim2.new(0, 24, 0, 2)
            local ImageButton = Instance.new("ImageButton")
            ImageButton.Parent = Window
            ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageButton.BackgroundTransparency = 1.000
            ImageButton.BorderSizePixel = 0
            ImageButton.Position = UDim2.new(0, 4, 0, 4)
            ImageButton.Size = UDim2.new(0, 18, 0, 18)
            ImageButton.ZIndex = 5
            ImageButton.AutoButtonColor = false
            ImageButton.Image = all.Image
            ImageButton.ImageColor3 = all.ImageColor

            local function ORBHB_fake_script()
                local script = Instance.new("LocalScript", ambientShadow)

                Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)

                wait(middledebug.Time)

                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)

                wait(0.2)
                ambientShadow:Destroy()
            end
            coroutine.wrap(ORBHB_fake_script)()
        elseif SelectedType == "option" then
            ambientShadow:TweenSize(UDim2.new(0, 240, 0, 110), "Out", "Linear", 0.2)
            Window.Size = UDim2.new(0, 230, 0, 100)
            local Uncheck = Instance.new("ImageButton")
            local Check = Instance.new("ImageButton")

            Uncheck.Name = "Uncheck"
            Uncheck.Parent = Window
            Uncheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Uncheck.BackgroundTransparency = 1.000
            Uncheck.BorderSizePixel = 0
            Uncheck.Position = UDim2.new(0, 7, 0, 76)
            Uncheck.Size = UDim2.new(0, 18, 0, 18)
            Uncheck.ZIndex = 5
            Uncheck.AutoButtonColor = false
            Uncheck.Image = "http://www.roblox.com/asset/?id=6031094678"
            Uncheck.ImageColor3 = Color3.fromRGB(255, 84, 84)

            Check.Name = "Check"
            Check.Parent = Window
            Check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Check.BackgroundTransparency = 1.000
            Check.BorderSizePixel = 0
            Check.Position = UDim2.new(0, 28, 0, 76)
            Check.Size = UDim2.new(0, 18, 0, 18)
            Check.ZIndex = 5
            Check.AutoButtonColor = false
            Check.Image = "http://www.roblox.com/asset/?id=6031094667"
            Check.ImageColor3 = Color3.fromRGB(83, 230, 50)

            local function ORBHB_fake_script()
                local script = Instance.new("LocalScript", ambientShadow)

                local Stilthere = true
                local function Unchecked()
                    pcall(function()
                        all.Callback(false)
                    end)
                    ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)

                    wait(0.2)
                    ambientShadow:Destroy()
                    Stilthere = false
                end
                local function Checked()
                    pcall(function()
                        all.Callback(true)
                    end)
                    ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)

                    wait(0.2)
                    ambientShadow:Destroy()
                    Stilthere = false
                end
                Uncheck.MouseButton1Click:Connect(Unchecked)
                Check.MouseButton1Click:Connect(Checked)

                Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)

                wait(middledebug.Time)

                if Stilthere == true then
                    ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)

                    wait(0.2)
                    ambientShadow:Destroy()
                end
            end
            coroutine.wrap(ORBHB_fake_script)()
        end
    end
    Nofitication:Notify({
        Title = Args[1],
        Description = Args[2]
    }, {
        OutlineColor = Color3.fromRGB(80, 80, 80),
        Time = Args[3],
        Type = "image"
    }, {
        Image = "http://www.roblox.com/asset/?id=6023426923",
        ImageColor = Color3.fromRGB(255, 84, 84)
    })
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--           notify指的意思是提示，使用方法↓↓↓
--           notify("标题","内容",时间)
--           fang指的意思是防封
--           
--
--
--  
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function key()
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
				local vu = game:GetService("VirtualUser")

		game:GetService("Players").LocalPlayer.Idled:connect(function()

		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		   wait(1)

		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
loadstring(game:HttpGet("https://pastebin.com/raw/6xQ5gtbj"))();
local ui = loadstring(game:HttpGet"https://pastebin.com/raw/cApeA3dS")()
local win = ui:new("忍脚本")
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local UITab1 = win:Tab("公告&关于",'6035145364')
--
local Player1 = win:Tab("基础功能",'6035145364')
--
local rgb1 = win:Tab("光影",'6035145364')
--
local ehe1 = win:Tab("俄亥俄州",'6035145364')
--
local jy1 = win:Tab("监狱人生",'6035145364')
--
local DoorsTab1 = win:Tab("Doors",'6035145364')
--
local JS1 = win:Tab("极速传奇",'6035145364')
--
local RZCQ1 = win:Tab("忍者传奇",'6035145364')
--
local li1 = win:Tab("力量传奇",'6035145364')
--
local FM1 = win:Tab("伐木大亨2",'6035145364')
--
local RC1 = win:Tab("rc",'6035145364')
--
local CJ1 = win:Tab("超级大力士模拟器",'6035145364')
--
local Tab1 = win:Tab("脚本中心",'6035145364')
--
local music1 = win:Tab("音乐",'6035145364')
--
local CS1 = win:Tab("测试功能",'6035145364')
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local gy = UITab1:section("信息",true)
local UITab = UITab1:section("公告",true)
local UITab2 = UITab1:section("关于",false)
--
local Player = Player1:section("基础功能",true)
--
local rgb = rgb1:section("光影",true)
--
local ehe = ehe1:section("俄亥俄州",true)
--
local jy = jy1:section("监狱人生",true)
--
local DoorsTab = DoorsTab1:section("中文脚本",false)
local DoorsZHTab = DoorsTab1:section("招换物品",false)
local DoorsYWTab = DoorsTab1:section("英文脚本",false)
--
local JS = JS1:section("极速传奇",true)
--
local RZCQ = RZCQ1:section("忍者传奇",false)
local RZCQCS = RZCQ1:section("传送",false)
--
local li666 = li1:section("力量传奇",true)
local li = li1:section("传送",true)
--
local FM = FM1:section("伐木大亨2",true)
local FMCS = FM1:section("传送",false)
--
local RC = RC1:section("rc",false)
--
local CJ = CJ1:section("超级大力士模拟器",false)
--
local Tab = Tab1:section("脚本中心",false)
--
local music = music1:section("音乐",false)
--
local CS = CS1:section("测试",false)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

gy:Label("您的注入器:"..identifyexecutor(), function()
end)

gy:Label("您当前服务器的ID:"..game.GameId, function()
end)

UITab:Button("官方交流群：139341298(点击后自动复制)", function()
setclipboard("139341298")
end)

UITab:Label("忍脚本与清风脚本和并", function()
end)


UITab2:Button("作者QQ：2207654215", function()
setclipboard("2207654215")
end)

UITab2:Button("作者QQ：397510573", function()
setclipboard("397510573")
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Player:Button("飞行", function()
  loadstring(game:HttpGet('https://pastebin.com/raw/28CWNSrK'))();
end)

Player:Button("阿尔宙斯飞行", function()
  loadstring(game:HttpGet('https://pastebin.com/raw/jQTcRnqz'))();
end)

Player:Button("点击传送工具", function()
    mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "点击传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
end)

Player:Slider('设置速度', 'Sliderflag', 16, 16, 900,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

Player:Slider('设置血量', 'Sliderflag', 100, 1, 100,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.Health = Value
end)

Player:Slider('设置重力', 'Sliderflag', 198, 198, 1000,false, function(Value)
    game.Workspace.Gravity = Value
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
rgb:Button("光影v4(曝光警告)", function()
print("button pressed")
      loadstring(game:HttpGet('https://pastebin.com/raw/gUceVJig'))()
end)

rgb:Button("RTX高仿", function()
print("button pressed")
      loadstring(game:HttpGet('https://pastebin.com/raw/Bkf0BJb3'))()
end)

rgb:Button("国外高质量光影菜单", function()
print("button pressed")
      loadstring(game:HttpGet(('https://pastefy.ga/xXkUxA0P/raw'),true))()
end)

rgb:Button("光影", function()
print("button pressed")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ehe:Button("俄亥俄州", function()
loadstring(game:HttpGet("https://pastebin.com/raw/hkvHeHed",true))()
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
jy:Button("循环杀戮", function()
loadstring(game:HttpGet("https://pastebin.com/raw/ngdnaZbf"))()
end)

jy:Button("警卫室", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
end)

jy:Button("监狱室内", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
end)

jy:Button("罪犯复活点", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     
      DoorsTab:Button("微山DOORS(2.3.2)", function()
      loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
end)
      
      DoorsTab:Button("忍脚本 -- Doors", function()
      loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,52,117,109,83,68,85,57,87})end)())))();
end)
      
DoorsTab:Button("↓招换物品↓", function()
 end)
 

DoorsZHTab:Button("可以清除东西的枪", function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
end)                  
DoorsZHTab:Button("十字架", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/FCSyG6Th"))();
end)
      
DoorsZHTab:Button("夜视仪", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/4Vsv1Xwn"))()
end)


DoorsZHTab:Button("神圣炸弹", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/u5B1UjGv"))()
end)
      
DoorsZHTab:Button("吸铁石", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/xHxGDp51"))()
end)
      
DoorsZHTab:Button("剪刀", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/v2yEJYmu"))()
end)
      
DoorsYWTab:Button("↓英文脚本↓", function()
end)

DoorsYWTab:Button("BlackKingq", function()
      loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
end)
      
DoorsYWTab:Button("MS DOORS", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/mstudio45/MSDOORS/7bd97c2d956a775d683c2d7973d79715b30998ea/MSDOORS/Moonsec.lua'))()
end)
      
      DoorsYWTab:Button("KINGHUB", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/x0EyeM6X"))();
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
JS:Button("极速传奇", function()
      loadstring(game:HttpGet('https://pastebin.com/raw/rqnKXF4h'))();
end)

JS:Button("返回出生岛", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828125, 58.87917709350586, 3099.033935546875)      
end)

JS:Button("白雪城", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.138671875, 58.87917709350586, 3782.69384765625)   
end)

JS:Button("熔岩城", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.96875, 216.83917236328125, 4898.62841796875)       
end)

JS:Button("传奇公路", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.87109375, 216.83917236328125, 5907.6279296875)    
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RZCQ:Button("忍者传奇", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/bGSJHMg5'))();
end)

RZCQ:Button("忍者传奇(英文)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)

RZCQ:Button("自动摆动", function()
     while wait(.0001)do
if
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")then
game.Players.LocalPlayer.ninjaEvent:FireServer("swingKatana")else
for bcc,ccc in
pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
if
ccc.ClassName=="Tool"and ccc:FindFirstChild("attackShurikenScript")then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(ccc)wait(.0001)if ccc.ClassName=="Tool"and
ccc:FindFirstChild("attackKatanaScript")then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(ccc)
end 
end 
end 
end 
end
end)

RZCQ:Button("自动出售", function()
     while wait(0.01)do
game.workspace.sellAreaCircles.sellAreaCircle.circleInner.CFrame=game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame;wait(.05)
game.workspace.sellAreaCircles.sellAreaCircle.circleInner.CFrame=game.Workspace.Part.CFrame
end
end)

RZCQCS:Button("传送到出生点", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)
end)
 
RZCQCS:Button("传送到附魔岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)
end)
 
RZCQCS:Button("传送到星界岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207.2932891845703, 2013.88037109375, 237.36672973632812)
end)
 
RZCQCS:Button("传送到神秘岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)
end)
 
RZCQCS:Button("传送到太空岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)
end)
 
RZCQCS:Button("传送到冻土岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)
end)
 
RZCQCS:Button("传送到永恒岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882812, 13680.037109375, 73.3861312866211)
end)
 
RZCQCS:Button("传送到沙暴岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)
end)
 
RZCQCS:Button("传送到雷暴岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)
end)
 
RZCQCS:Button("传送到远古炼狱岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289062, 28256.294921875, 69.3790283203125)
end)
 
RZCQCS:Button("传送到午夜暗影岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)
end)
 
RZCQCS:Button("传送到神秘灵魂岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)
end)
 
RZCQCS:Button("传送到冬季奇迹岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)
end)
     
RZCQCS:Button("传送到黄金大师岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539062, 52607.765625, 56.69411849975586)
end)
 
RZCQCS:Button("传送到龙传奇岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)
end)

RZCQCS:Button("传送到赛博传奇岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)
end)
 
RZCQCS:Button("传送到天岚超能岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)
end)
 
RZCQCS:Button("传送到混沌传奇岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
end)
 
RZCQCS:Button("传送到灵魂融合岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)
end)
 
RZCQCS:Button("传送到黑暗元素岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)
end)
 
RZCQCS:Button("传送到内心和平岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)
end)
 
RZCQCS:Button("传送到炽烈漩涡岛", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882812)
end)
 
RZCQCS:Button("传送到35倍金币区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2938232421875, 91245.765625, 120.54232788085938)
end)
 
RZCQCS:Button("传送到死亡宠物", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4593.21337890625, 130.87181091308594, 1430.2239990234375)
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------    
li666:Button("白--力量传奇", function()
loadstring(game:HttpGet("https://pastebin.com/raw/7VSAMwHn"))();
end)
li:Button("传送到出生点", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
end)

li:Button("传送到冰霜健身房", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
end)
 
li:Button("传送到神话健身房", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
end)
 
li:Button("传送到永恒健身房", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
end)
 
li:Button("传送到传说健身房", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
end)
 
li:Button("传送到肌肉之王健身房", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
end)
 
li:Button("传送到安全岛", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
end)
 
li:Button("传送到幸运抽奖区域", function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------    
FM:Button("bark2.0", function()
       loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,110,111,111,98,54,49,54,49,54,49,47,82,79,66,76,79,88,47,109,97,105,110,47,98,97,114,107,50,46,48,46,108,117,97})end)())))();     
end)    
                      
    
 FM:Button("忍脚本 -- 伐木大亨2(盗版浮光掠影)", function()
      loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,98,51,115,84,68,86,112,116})end)())))();
 end)
      
FM:Button("白脚本伐木大亨2[免费](已修复)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/noob616161/KphoooOooooOoOo-wprfbdksorbfKvsdcIUH-194jddJ-___-_-lIlIIIllIIIlllIIIIlIlIIlIllIIIllllllIllllllIIIl/main/bai/%E4%BC%90%E6%9C%A8"))();
end)
    
FM:Button("伐木大亨2多功能", function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/butter-hub/main/Butterhub.txt'))()
end)
      
FMCS:Button("火木", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1615.8934326171875, 622.9998779296875, 1086.1234130859375)
end)
      
FMCS:Button("画室", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5241.55810546875, -166.00003051757812, 709.5656127929688)
end)      
      
FMCS:Button("幻影木", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.28166198730469, -213.13137817382812, -1357.8018798828125)
 end)

FMCS:Button("木材反斗城", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252.31906127929688, 2.9999992847442627, 56.9854850769043)
end)
       
FMCS:Button("冰木", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1522.8817138671875, 412.3657531738281, 3277.71826171875)                                                                      
end)
      
FMCS:Button("椰子木", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2615.709228515625, -5.899986743927002, -21.30138397216797)                                                                      
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  
RC:Button("白脚本rc[免费](已修复)", function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/noob616161/KphoooOooooOoOo-wprfbdksorbfKvsdcIUH-194jddJ-___-_-lIlIIIllIIIlllIIIIlIlIIlIllIIIllllllIllllllIIIl/main/bai/rc"))();
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------      
CJ:Button("传送到开始区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.86943817138672, 11.751949310302734, -198.07127380371094)
end)

CJ:Button("传送到健身区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.60747528076172, 11.751947402954102, -10.266206741333008)
end)

CJ:Button("传送到食物区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.86384582519531, 11.751947402954102, 228.9690399169922)
end)

CJ:Button("传送到街机区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.99887084960938, 11.751949310302734, 502.90997314453125)
end)

CJ:Button("传送到农场区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.6707763671875, 11.751947402954102, 788.5997314453125)
end)

CJ:Button("传送到城堡区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.87281036376953, 11.84177017211914, 1139.7509765625)
end)

CJ:Button("传送到蒸汽朋克区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.63227081298828, 11.841767311096191, 1692.7890625)
end)

CJ:Button("传送到迪斯科区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.69613647460938, 16.015085220336914, 2505.213134765625)
end)

CJ:Button("传送到太空区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.42948150634766, 11.841769218444824, 3425.941650390625)
end)

CJ:Button("传送到糖果区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.55805969238281, 11.841663360595703, 4340.69921875)
end)

CJ:Button("送到实验室区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.00920867919922, 11.841663360595703, 5226.60205078125)
end)

CJ:Button("传送到热带区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80.26090240478516, 12.0902681350708, 6016.16552734375)
end)

CJ:Button("传送到恐龙区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.4753303527832, 25.801530838012695, 6937.779296875)
end)

CJ:Button("传送到复古区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.81867218017578, 12.89099407196045, 7901.74755859375)
end)

CJ:Button("传送到冬季区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.47243881225586, 11.841662406921387, 8983.810546875)
end)

CJ:Button("传送到深海区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.36250305175781, 26.44820213317871, 9970.0849609375)
end)

CJ:Button("传送到狂野西部区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.69414520263672, 15.108586311340332, 10938.654296875)
end)

CJ:Button("传送到豪华公寓区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.75145721435547, 11.313281059265137, 12130.349609375)
end)

CJ:Button("传送到宝剑战斗区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.25597381591797, 11.408829689025879, 12945.57421875)
end)

CJ:Button("传送到童话区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121.14932250976562, 11.313281059265137, 14034.50390625)
end)

CJ:Button("传送到桃花区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.2142333984375, 11.813281059265137, 15131.861328125)
end)

CJ:Button("传送到厨房区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.78338623046875, 21.76291847229004, 16204.9755859375)
end)

CJ:Button("传送到下水道区域", function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.36086654663086, 12.25178050994873, 17656.04296875)
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                                                                                                                                                                                                                                                                                            
Tab:Button("剑客 V 3", function()
      jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
end)
      
Tab:Button("☁云脚本☁", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/LOL/main/%E4%BA%91%E8%84%9A%E6%9C%ACCloud%20script.lua", true))() 
end)

Tab:Button("鲨脚本", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sharksharksharkshark/shark-shark-shark-shark-shark/main/shark-scriptlollol.txt",true))() 
end)
      
  
Tab:Button("USA脚本", function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
end)
      
Tab:Button("龙脚本", function()
        getgenv().long = "龙脚本，加载时间长请耐心"loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\108\121\121\97\105\110\105\47\108\111\110\47\109\97\105\110\47\108\105\115\119\109\34\41\41\40\41")() 
end)
 
Tab:Button("青脚本", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/kkaaccnnbb/money/main/fix'))()
end)
 
Tab:Button("秋脚本", function()
local SCC_CharPool={
[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,83,56,53,55,57,54,48,47,45,47,109,97,105,110,47,37,69,55,37,65,55,37,56,66,37,67,50,37,66,55,37,69,56,37,56,55,37,65,65,37,69,53,37,56,56,37,66,54,37,69,56,37,56,52,37,57,65,37,69,54,37,57,67,37,65,67,37,69,54,37,57,54,37,66,48,37,69,54,37,66,65,37,57,48,37,69,55,37,65,48,37,56,49,46,116,120,116})end)()))}
loadstring(game:HttpGet(SCC_CharPool[1]))() 
end)
 
Tab:Button("冰脚本", function()
loadstring(game:HttpGet("https://pastebin.com/raw/GR4ChWKv"))() 
end)
  
Tab:Button("河流脚本", function()
      loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\77\50\57\77\117\81\115\80"))()
end)
      
Tab:Button("BS脚本", function()
      loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,71,57,103,117,122,88,100,75})end)())))()--BS
end)
     
      
      
Tab:Button("地岩脚本", function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
end)

Tab:Button("波奇塔脚本", function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,113,109,55,76,121,119,82,117})end)())))()
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
music:Button("防空警报", function()
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://792323017"
sound.Parent = game.Workspace
sound:Play()
end)

music:Button("义勇军进行曲", function()
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://1845918434"
sound.Parent = game.Workspace
sound:Play()
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CS:Button("原子弹", function()
loadstring(game:HttpGet("https://pastebin.com/raw/FqWgJJEp"))();
end)

CS:Button("圣光", function()
    game.Lighting.Ambient = Color3.new(9999, 9999, 9999)
end)

CS:Button("超广角", function()
Workspace.CurrentCamera.FieldOfView = 9999999
end)































































------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
end
------------------------------------------------------------------------------------------------------------------------*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function script()
local UserInputService = game:GetService("UserInputService")

local function CreateGUI(title)
    local gui = Instance.new("ScreenGui")
    gui.Name = "MyGUI"
    gui.ResetOnSpawn = false
    gui.DisplayOrder = 10
    gui.Parent = game.Players.LocalPlayer.PlayerGui
    local frame = Instance.new("Frame")
    frame.Name = "MainFrame"
    frame.BackgroundTransparency = 0
    frame.BackgroundColor3 = Color3.fromRGB(240, 248, 255)
    frame.BorderSizePixel = 0
    frame.Position = UDim2.new(0, 110, 0, 30) 
    frame.Size = UDim2.new(0, 500, 0, 280)
    frame.Parent = gui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = frame

    local dragging = false
    local startPos, startOffset

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            startPos = input.Position
                    startOffset = frame.Position
            gui.Active = true 
        end
    end)

    frame.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
            startPos = nil
            startOffset = nil
            gui.Active = false
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - startPos
            frame.Position = UDim2.new(startOffset.X.Scale, startOffset.X.Offset + delta.X, startOffset.Y.Scale,  
                startOffset.Y.Offset + delta.Y)
        end
    end)
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "TitleLabel"
    titleLabel.Size = UDim2.new(1, 0, 0.05, 0.15 * frame.Size.Y.Offset)
    titleLabel.Position = UDim2.new(0, 0, 0.01, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.new(0, 0, 0)
    titleLabel.TextSize = math.floor(frame.Size.Y.Offset * 0.1)
    titleLabel.Parent = frame
    local disagreeButton = Instance.new("TextButton")
    disagreeButton.Name = "DisagreeButton"
    disagreeButton.Size = UDim2.new(0, 0.4 * frame.Size.X.Offset, 0, 0.15 * frame.Size.Y.Offset)
    disagreeButton.Position = UDim2.new(0, 0.1 * frame.Size.X.Offset, 0,
        frame.Size.Y.Offset - 0.25 * frame.Size.Y.Offset)
    disagreeButton.BackgroundTransparency = 0
    disagreeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    disagreeButton.Text = "不同意"
    disagreeButton.TextColor3 = Color3.new(255, 0, 0)
    disagreeButton.TextSize = math.floor(frame.Size.Y.Offset * 0.08)
    disagreeButton.Font = Enum.Font.SourceSans
    disagreeButton.Parent = frame
    local disagreeCorner = Instance.new("UICorner")
    disagreeCorner.CornerRadius = UDim.new(0, 10)
    disagreeCorner.Parent = disagreeButton

    local agreeButton = Instance.new("TextButton")
    agreeButton.Name = "AgreeButton"
    agreeButton.Size = UDim2.new(0, 0.4 * frame.Size.X.Offset, 0, 0.15 * frame.Size.Y.Offset)
    agreeButton.Position = UDim2.new(0, frame.Size.X.Offset - 0.5 * frame.Size.X.Offset, 0,
        frame.Size.Y.Offset - 0.25 * frame.Size.Y.Offset)
    agreeButton.BackgroundTransparency = 0
    agreeButton.BackgroundColor3 = Color3.fromRGB(106, 159, 255)
    agreeButton.Text = "同意"
    agreeButton.TextColor3 = Color3.new(255, 255, 255)
    agreeButton.TextSize = math.floor(frame.Size.Y.Offset * 0.08)
    agreeButton.Font = Enum.Font.SourceSans 
    agreeButton.Parent = frame

    
    local agreeFrame = Instance.new("TextLabel")
    agreeFrame.Size = UDim2.new(0.8, 0, 0.5, 0)
    agreeFrame.Position = UDim2.new(0.1, 0, 0.22, 0)
    agreeFrame.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
    agreeFrame.Text = "1.脚本有时候免费\n2.脚本现在收费二元\n3.使用此脚本封号了不负责"
    agreeFrame.TextWrapped = true

    
    agreeFrame.TextSize = 16  


    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = agreeFrame

    agreeFrame.Parent = frame

    local agreeCorner = Instance.new("UICorner")
    agreeCorner.CornerRadius = UDim.new(0, 10)
    agreeCorner.Parent = agreeButton
    local minimizeButton = Instance.new("TextButton")
    minimizeButton.Name = "MinimizeButton"
    minimizeButton.Size = UDim2.new(0, 40, 0, 40)
    minimizeButton.Position = UDim2.new(1, -65, 0, 10)
    minimizeButton.BackgroundTransparency = 0
    minimizeButton.BackgroundColor3 = Color3.fromRGB(199, 199, 199)
    minimizeButton.Text = "▼"
    minimizeButton.TextSize = 28  
    minimizeButton.TextColor3 = Color3.new(0, 0, 0)
    minimizeButton.Font = Enum.Font.SourceSans
    minimizeButton.Parent = frame

    local isMinimized = false

    local minimizeCorner = Instance.new("UICorner")
    minimizeCorner.CornerRadius = UDim.new(0, 5)
    minimizeCorner.Parent = minimizeButton

    minimizeButton.MouseButton1Click:Connect(function()
        if isMinimized then
            frame.Size = UDim2.new(0, 500, 0, 280)
            titleLabel.Position = UDim2.new(0, 0, 0.01, 0)
            minimizeButton.Text = "▼"
            minimizeButton.TextSize = 28
            isMinimized = false
            disagreeButton.Visible = true
            agreeButton.Visible = true
            agreeFrame.Visible = true
        else
            frame.Size = UDim2.new(0, 500, 0, 60)
            titleLabel.Position = UDim2.new(0, 0, 0, 0)
            minimizeButton.Text = "▲"
            minimizeButton.TextSize = 28 
            isMinimized = true
            disagreeButton.Visible = false
            agreeButton.Visible = false
            agreeFrame.Visible = false
        end
    end)

    local function AnimateExit()
        local duration = 1
        local startTime = tick()
        local initialSize = frame.Size
        while (tick() - startTime) < duration do
            local elapsedTime = tick() - startTime
            local scale = 1 - elapsedTime / duration
            frame.Size = UDim2.new(initialSize.X.Scale * scale, initialSize.X.Offset * scale,
                initialSize.Y.Scale * scale, initialSize.Y.Offset * scale)
            frame.Position = frame.Position + UDim2.new((1 - scale) / 2, 0, (1 - scale) / 2, 0)
            wait()
        end
        gui:Destroy()
    end
    disagreeButton.MouseButton1Click:Connect(function()
        AnimateExit()
    end)
    agreeButton.MouseButton1Click:Connect(function()
        AnimateExit()
		
function qd()  
local ScreenGui = Instance.new("ScreenGui")
local UI = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Key = Instance.new("TextBox")
local Start = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local ScreenGui1 = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner1 = Instance.new("UICorner")
local TextLabel1 = Instance.new("TextLabel")
local UICorner2 = Instance.new("UICorner")
local TextLabel2 = Instance.new("TextLabel")
local UICorner3 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local ScreenGui2 = Instance.new("ScreenGui")
local TextLabel3 = Instance.new("TextLabel")
local ScreenGui2 = Instance.new("ScreenGui")
local TextLabel3 = Instance.new("TextLabel")
local ScreenGui3 = Instance.new("ScreenGui")
local TextLabel4 = Instance.new("TextLabel")
local notification = Instance.new("ScreenGui")
local Popup = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local notification2 = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
---------------------------------------
ScreenGui1.Parent = game.CoreGui
ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui1
Frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
Frame.Position = UDim2.new(-1.448, 0,0.065, 0)
Frame.Size = UDim2.new(0.275353014, 0, 0.820448875, 0)

UICorner1.CornerRadius = UDim.new(0, 30)
UICorner1.Parent = Frame

UICorner3.CornerRadius = UDim.new(0, 30)
UICorner3.Parent = TextLabel2

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0842586756, 0, 0.408814579, 0)
ImageLabel.Size = UDim2.new(0.703620017, 0, 0.227963522, 0)
ImageLabel.Image = "rbxassetid://14904708387"

ScreenGui2.Name = "ScreenGui2"
ScreenGui2.Parent = game.CoreGui
ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel3.Name = "TextLabel3"
TextLabel3.Parent = ScreenGui2
TextLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.BackgroundTransparency = 1.000
TextLabel3.Position = UDim2.new(-1.448, 0,0.255, 0)
TextLabel3.Size = UDim2.new(0.51219511, 0, 0.28553617, 0)
TextLabel3.Font = Enum.Font.SourceSans
TextLabel3.Text = "您的注入器是: "..identifyexecutor()
TextLabel3.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel3.TextScaled = true
TextLabel3.TextSize = 14.000
TextLabel3.TextWrapped = true

ScreenGui3.Name = "ScreenGui3"
ScreenGui3.Parent = game.CoreGui
ScreenGui3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel4.Name = "TextLabel3"
TextLabel4.Parent = ScreenGui2
TextLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel4.BackgroundTransparency = 1.000
TextLabel4.Position = UDim2.new(-1.448, 0,0.255, 0)
TextLabel4.Size = UDim2.new(0.51219511, 0, 0.28553617, 0)
TextLabel4.Font = Enum.Font.SourceSans
TextLabel4.Text = "正在加载（时间较长）..."
TextLabel4.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel4.TextScaled = true
TextLabel4.TextSize = 14.000
TextLabel4.TextWrapped = true
---------------------------------------

wait(1)
TextLabel3:TweenPosition(UDim2.new(0.231, 0,0.255, 0), "InOut", "Quad", 1, true)
wait(2)
TextLabel3:TweenPosition(UDim2.new(1.526, 0,0.255, 0), "InOut", "Quad", 2, true)
wait(1)
TextLabel4:TweenPosition(UDim2.new(0.231, 0,0.255, 0), "InOut", "Quad", 1, true)
wait(2)
TextLabel4:TweenPosition(UDim2.new(1.526, 0,0.255, 0), "InOut", "Quad", 1, true)
wait(2)
Frame:Destroy()
TextLabel3:Destroy()
TextLabel4:Destroy()
key()
end

  		local NotificationBindable = Instance.new("BindableFunction")
		game.StarterGui:SetCore("SendNotification", {
			Title = "忍脚本",
			Text = "是否加载脚本启动动画",
			Icon = nil,
			Duration = 10,
			Button1 = "确定",
			Button2 = "取消",
			Callback = NotificationBindable
		})
		NotificationBindable.OnInvoke = function(text)
		if text == "确定" then
		qd()
		else
		  key()
		end
		end	

  end)
end
local myTitle = "忍脚本协议条款" 
CreateGUI(myTitle)
end

if R0==[[ ________________    ]] and R1==[[/    ↓保护涵数↓       \   ]] and R2==[[|    脚本名:忍脚本        |   ]] and R3==[[|   群号:139341298     |   ]] and R4==[[| 使用脚本封号不负责 |   ]] and R5==[[|        请勿抄袭            |   ]] and R6==[[| ________________ |   ]]then
		local NotificationBindable = Instance.new("BindableFunction")
		NotificationBindable.OnInvoke = function(text)
		if text == "确定" then
		script()
		else
		  notify("忍脚本","已退出",5)
		end
		end
		game.StarterGui:SetCore("SendNotification", {
			Title = "忍脚本",
			Text = "是否启动脚本",
			Icon = nil,
			Duration = 10,
			Button1 = "确定",
			Button2 = "取消",
			Callback = NotificationBindable
		})
	else
notify("忍脚本","请勿删除保护涵数",5)
end
