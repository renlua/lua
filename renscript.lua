------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local REN = {}
local REN ={
    ["限免"] = true;
    ["lp"] = game.Players.LocalPlayer;
    ["游戏名"] = tostring(game.Players.LocalPlayer.Character);
    
    
    ["拓展表"] = {
        ["传送到玩家身边"] = {
            playernamedied=nil;
            dropdown={};
        };
    };
    ["白名单"] = {
        ["开发者白名单"] = {
            ["状态"] = false;
            ["用户名"] = {
                "123fa98",
                "cmhehebeb",
                "vhsejan",
            };
        };
        ["普通白名单"] = {
           ["状态"] = false;
           ["用户名"] = {
                "noobyyds7",
                "666l104",
                "fjfjdjdjdj375",
                "CH_xiaochen",
                
                "ni_ma88",
                "yuanjiukangnb",
                "t66zhaoming",
                "gshgdjwhsghsb",
                "jjwb45",
           };
        };
    };
};

table.foreach(REN["白名单"]["开发者白名单"]["用户名"],function(i,name)
    if name == REN["游戏名"] then
        REN["白名单"]["开发者白名单"]["状态"] = true
    end
end)

table.foreach(REN["白名单"]["普通白名单"]["用户名"],function(i,name)
    if name == REN["游戏名"] then
        REN["白名单"]["普通白名单"]["状态"] = true
    end
end)




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

function scripts()							
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S")).."秒"
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
--local ui = loadstring(game:HttpGet"https://pastebin.com/raw/cApeA3dS")()
local ui = loadstring(game:HttpGet"https://pastebin.com/raw/E9PzvbeX")()
local win = ui:new("忍")
--
local UITab1 = win:Tab("公告&关于",'6035145364')
--
local Player1 = win:Tab("基础功能",'6035145364')
--
local rgb1 = win:Tab("光影",'6035145364')
--
local ehe1 = win:Tab("俄亥俄州",'6035145364')
--
local bf1 = win:Tab("Blox fruit",'6035145364')
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
local BZMNQ1 = win:Tab("巴掌模拟器",'6035145364')
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
local UITab2 = UITab1:section("关于",true)
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
local li0 = li1:section("主要功能",false)
local li = li1:section("传送",false)
--
local Section3 = FM1:section("玩家", false)
local Section4 = FM1:section("普通传送", false)
local Sectiontptree = FM1:section("传送到树旁边", false)
local Section6 = FM1:section("汽车传送", false)
local Section = FM1:section("斧头", false)
local Section1 = FM1:section("基地", false)
local Section5 = FM1:section("木头", false)
local Sectionbringtree = FM1:section("带来树", false)
local Sectionjinbi = FM1:section("快速转钱", false)
local Sectionqiche = FM1:section("汽车", false)
local Sectionchuanson = FM1:section("传送物品", false)
local Sectionfengche = FM1:section("刷粉车", false)
local Sectionqita = FM1:section("其他功能", false)
local Sectionshuoh = FM1:section("语言", false)
local Sectionyule = FM1:section("娱乐区域", false)
local Sectionzhenglimt = FM1:section("整理木板", false)
local Sectionzhengli = FM1:section("整理", false)
local Sectiontchon = FM1:section("填充蓝图（用木头）", false)
local Sectionhuanjin = FM1:section("环境", false)
local Sectionmogui = FM1:section("魔鬼功能(慎用)", false)
local Sectionautobuy = FM1:section("自动购买V2(测试)", false)
local Sectionautobuy6 = FM1:section("其他", false)
--
local RC = RC1:section("rc",true)
--
local BZMNQ = BZMNQ1:section("主要",true)
local BZMNQZX = BZMNQ1:section("杂项",true)
local BZMNQFJN = BZMNQ1:section("防技能",true)
--
local CJ = CJ1:section("超级大力士模拟器",true)
--
local Tab = Tab1:section("脚本中心",true)
--
local music = music1:section("音乐",true)
--
local CS = CS1:section("测试",true)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

gy:Label("您的注入器:"..identifyexecutor())

gy:Label("您当前服务器的ID:"..game.GameId)

UITab:Button("官方交流群：719409149(点击后自动复制)", function()
setclipboard("139341298")
end)

UITab:Button("重新启动脚本", function()
scripts()
end)


UITab:Label(" 忍 和清风脚本和静新脚本合并")


UITab2:Button("作者QQ：2207654215", function()
setclipboard("2207654215")
end)

UITab2:Button("作者QQ：397510573", function()
setclipboard("397510573")
end)

UITab2:Button("作者QQ：2909431794", function()
setclipboard("2909431794")
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function tp(p)
   REN.lp.Character:PivotTo(p)
end
function shuaxinlb(zji)
    REN["拓展表"]["传送到玩家身边"].dropdown={}
    if zji==true then
    for p, I in next,game.Players:GetChildren() do
    table.insert(REN["拓展表"]["传送到玩家身边"].dropdown, I.Name)
    end
    else
    for p, I in next, game.Players:GetChildren() do
    if I ~= lp then
    table.insert(REN["拓展表"]["传送到玩家身边"].dropdown, I.Name)
    end
    end
    end
    end
    shuaxinlb(true)

local dropdown = Player:Dropdown("选择玩家名称",'Dropdown',REN["拓展表"]["传送到玩家身边"].dropdown,function(v)
    REN["拓展表"]["传送到玩家身边"].playernamedied = v
end)

Player:Button("刷新列表", function()
	shuaxinlb(true)
	dropdown:SetOptions(REN["拓展表"]["传送到玩家身边"].dropdown)
end)

Player:Button("传送到玩家旁边",function()  
            tp(game:GetService("Players")[REN["拓展表"]["传送到玩家身边"].playernamedied].Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0))
end)

Player:Button("透视",function()  _G.FriendColor = Color3.fromRGB(0, 0, 255)
_G.EnemyColor = Color3.fromRGB(255, 0, 0)
_G.UseTeamColor = true

--------------------------------------------------------------------
local Holder = Instance.new("Folder", game.CoreGui)
Holder.Name = "ESP"

local Box = Instance.new("BoxHandleAdornment")
Box.Name = "nilBox"
Box.Size = Vector3.new(1, 2, 1)
Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Box.Transparency = 0.7
Box.ZIndex = 0
Box.AlwaysOnTop = false
Box.Visible = false

local NameTag = Instance.new("BillboardGui")
NameTag.Name = "nilNameTag"
NameTag.Enabled = false
NameTag.Size = UDim2.new(0, 200, 0, 50)
NameTag.AlwaysOnTop = true
NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
local Tag = Instance.new("TextLabel", NameTag)
Tag.Name = "Tag"
Tag.BackgroundTransparency = 1
Tag.Position = UDim2.new(0, -50, 0, 0)
Tag.Size = UDim2.new(0, 300, 0, 20)
Tag.TextSize = 15
Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
Tag.TextStrokeTransparency = 0.4
Tag.Text = "nil"
Tag.Font = Enum.Font.SourceSansBold
Tag.TextScaled = false

local LoadCharacter = function(v)
	repeat wait() until v.Character ~= nil
	v.Character:WaitForChild("Humanoid")
	local vHolder = Holder:FindFirstChild(v.Name)
	vHolder:ClearAllChildren()
	local b = Box:Clone()
	b.Name = v.Name .. "Box"
	b.Adornee = v.Character
	b.Parent = vHolder
	local t = NameTag:Clone()
	t.Name = v.Name .. "NameTag"
	t.Enabled = true
	t.Parent = vHolder
	t.Adornee = v.Character:WaitForChild("Head", 5)
	if not t.Adornee then
		return UnloadCharacter(v)
	end
	t.Tag.Text = v.Name
	b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
	t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
	local Update
	local UpdateNameTag = function()
		if not pcall(function()
			v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			local maxh = math.floor(v.Character.Humanoid.MaxHealth)
			local h = math.floor(v.Character.Humanoid.Health)
		end) then
			Update:Disconnect()
		end
	end
	UpdateNameTag()
	Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
end

local UnloadCharacter = function(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
		vHolder:ClearAllChildren()
	end
end

local LoadPlayer = function(v)
	local vHolder = Instance.new("Folder", Holder)
	vHolder.Name = v.Name
	v.CharacterAdded:Connect(function()
		pcall(LoadCharacter, v)
	end)
	v.CharacterRemoving:Connect(function()
		pcall(UnloadCharacter, v)
	end)
	v.Changed:Connect(function(prop)
		if prop == "TeamColor" then
			UnloadCharacter(v)
			wait()
			LoadCharacter(v)
		end
	end)
	LoadCharacter(v)
end

local UnloadPlayer = function(v)
	UnloadCharacter(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder then
		vHolder:Destroy()
	end
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	spawn(function() pcall(LoadPlayer, v) end)
end

game:GetService("Players").PlayerAdded:Connect(function(v)
	pcall(LoadPlayer, v)
end)

game:GetService("Players").PlayerRemoving:Connect(function(v)
	pcall(UnloadPlayer, v)
end)

game:GetService("Players").LocalPlayer.NameDisplayDistance = 0

if _G.Reantheajfdfjdgs then
    return
end

_G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"

local players = game:GetService("Players")
local plr = players.LocalPlayer

function esp(target, color)
    if target.Character then
        if not target.Character:FindFirstChild("GetReal") then
            local highlight = Instance.new("Highlight")
            highlight.RobloxLocked = true
            highlight.Name = "GetReal"
            highlight.Adornee = target.Character
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = color
            highlight.Parent = target.Character
        else
            target.Character.GetReal.FillColor = color
        end
    end
end

while task.wait() do
    for i, v in pairs(players:GetPlayers()) do
        if v ~= plr then
            esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
        end
    end
end
end)

Player:Button("飞行", function()
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 255)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "上升"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "下降"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "飞行"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "飞行脚本"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "×"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

Frame.Active = true
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)
end)

Player:Toggle("穿墙","Toggle",false,function(Value)
		if Value then

		    Noclip = true

		    Stepped = game.RunService.Stepped:Connect(function()

			    if Noclip == true then

				    for a, b in pairs(game.Workspace:GetChildren()) do

                        if b.Name == game.Players.LocalPlayer.Name then

                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do

                                if v:IsA("BasePart") then

                                    v.CanCollide = false

                                end

                            end

                        end

                    end

			    else

				    Stepped:Disconnect()

			    end

		    end)

	    else

		    Noclip = false

	    end

end)

Player:Toggle("夜视","Toggle",false,function(Value)
    Light = Value
    game.RunService.Stepped:Connect(function()
        if Light then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end)
end)

Player:Toggle("无限跳","Toggle",false,function(Value)
    Jump = Value
    game.UserInputService.JumpRequest:Connect(function()
        if Jump then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
        end
    end)
end)

Player:Slider('设置速度', 'Sliderflag', 16, 16, 200,false, function(Value)
game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end)
    end)
end)

Player:Slider('设置血量', 'Sliderflag', 100, 1, 100,false, function(Value)
game.Players.LocalPlayer.Character.Humanoid.Health = Value
end)

Player:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
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
      
      DoorsTab:Button(" 忍  -- Doors", function()
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
li0:Toggle("自动举哑铃开关",'Toggleflag',false, function(state)
    if li0.Text=="关"
    then li0.Text="开"
    else li0.Text="关"
    end
    if state then
        local part = Instance.new('Part', workspace)
        part.Size = Vector3.new(500, 20, 530.1)
        part.Position = Vector3.new(0, 100000, 133.15)
        part.CanCollide = true
        part.Anchored = true
        local rs = game:GetService("RunService").RenderStepped
        while wait() do 
        if li0.Text=="关" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Weight" then
        v.Parent = game.Players.LocalPlayer.Character
        end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
        end
        end
        end
end)
li0:Toggle("自动俯卧撑开关",'Toggleflag',false, function(state)
    if li0.Text=="关"
    then li0.Text="开"
    else li0.Text="关"
    end
    if state then
        local part = Instance.new('Part', workspace)
        part.Size = Vector3.new(500, 20, 530.1)
        part.Position = Vector3.new(0, 100000, 133.15)
        part.CanCollide = true
        part.Anchored = true
        local rs = game:GetService("RunService").RenderStepped
        while wait() do 
        if li0.Text=="关" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Pushups" then
                v.Parent = game.Players.LocalPlayer.Character
                end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
        end
        end
        end 
end)
li0:Toggle("自动仰卧起坐开关",'Toggleflag',false, function(state)
    if li0.Text=="关"
    then li0.Text="开"
    else li0.Text="关"
    end
    if state then
        local part = Instance.new('Part', workspace)
        part.Size = Vector3.new(500, 20, 530.1)
        part.Position = Vector3.new(0, 100000, 133.15)
        part.CanCollide = true
        part.Anchored = true
        local rs = game:GetService("RunService").RenderStepped
        while wait() do 
        if li0.Text=="关" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Situps" then
                v.Parent = game.Players.LocalPlayer.Character
                end
                end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
         end
    end
end)
li0:Toggle("自动倒立身体",'Toggleflag',false, function(state)
    if li0.Text=="关"
    then li0.Text="开"
    else li0.Text="关"
    end
    if state then
        local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    local rs = game:GetService("RunService").RenderStepped
    while wait() do 
    if li0.Text=="关" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
    
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Handstands" then
            v.Parent = game.Players.LocalPlayer.Character
            
            end
            end
    end
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
    end
    end
    end)
    li0:Toggle("自动锻炼开关",'Toggleflag',false, function(state)
        if li0.Text=="关"
    then li0.Text="开"
    else li0.Text="关"
    end
        if state then
            local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true

    while wait() do 
    if li0.Text=="关" then

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if
				v.ClassName == "Tool" and v.Name == "Handstands" or v.Name == "Situps" or v.Name == "Pushups" or
					v.Name == "Weight"
			 then
				v:FindFirstChildOfClass("NumberValue").Value = 0
				repeat
					wait()
				until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
				game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")

end
end
end
end
          end
    end)
    li0:Toggle("自动重生开关",'Toggleflag',false, function(state)
        if li0.Text=="关"
then li0.Text="开"
else li0.Text="关"
end
        if state then
            while wait() do 
                if li0.Text=="关" then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                
                end
                end                
        end
    end)
    li0:Button("收集宝石",function()
        jk = {}
for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do
    if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then
        table.insert(jk, v.Name)
    end
end
for i = 1, #jk do
    wait(2)
    game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[i])
end
    end)
    li0:Toggle("自动比赛开关",'Toggleflag',false, function(state)
        if li0.Text=="关"
then li0.Text="开"
else li0.Text="关"
    end
        if state then
            while wait() do 
                if li0.Text=="自动加入战斗（开）" then
            wait(2)
            game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
                end
                end
        end
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
local gs = function(service)
    return game:GetService(service)
end

local lp = gs("Players").LocalPlayer
local pos = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
local Mouse = game:GetService('Players').LocalPlayer:GetMouse()
local CurrentSlot = game.Players.LocalPlayer:WaitForChild("CurrentSaveSlot").Value
local ScriptLoadOrSave = false
local CurrentlySavingOrLoading = game.Players.LocalPlayer:WaitForChild("CurrentlySavingOrLoading")
local mouse = game.Players.LocalPlayer:GetMouse()
local bai = {
    axedupe = false,
    soltnumber = "1",
    waterwalk = false,
    awaysday = false,
    awaysdnight = false,
    nofog = false,
    axeflying = false,
    playernamedied = "",
    tptree = "",
    moneyaoumt = 1,
    moneytoplayername = "",
    donationRecipient = tostring(game.Players.LocalPlayer),
    autodropae = false,
    farAxeEquip = nil,
    cuttreeselect = "Generic",
    autofarm = false,
    PlankToBlueprint = nil,
    plankModel = nil,
    blueprintModel = nil,
    saymege = "",
    autosay = false,
    saymount = 1,
    sayfast = false,
    autofarm1 = false,
    bringamount = 1,
    bringtree = false,
    dxmz = "",
    color = 0,
    0,
    0,
    zlwjia = "",
    mtwjia = nil,
    zix = 1,
    zlz = 3,
    axeFling = nil,
    itemtoopen = "",
    openItem = nil,
    car = nil,
    load = false,
    autobuyamount = 1,
    autopick = false,
    loaddupeaxewaittime = 3.1,
    walkspeed = 16,
    JumpPower = 50,
    pickupaxeamount = 1,
    whthmose = false,
    itemset = nil,
    LoneCaveAxeDetection = nil,
    cuttree = false,
    LoneCaveCharacterAddedDetection = nil,
    LoneCaveDeathDetection = nil,
    lovecavecutcframe = nil,
    lovecavepast = nil,
    zlmt = nil,
    shuzhe = false,
    modwood = false,
    tchonmt = nil,
    cskais = false,
    dledetree = false,
    delereeset = nil,
    treecutset = nil,
    autobuyset = nil,
    wood = 7,
    cswjia = nil,
    boxOpenConnection = nil,
    autobuystop = flase,
    dropdown = {},
    autocsdx = nil,
    kuangxiu = nil,
    xzemuban = false,
    daiwp = false,
    stopcar = false
}



local Player = game.Players.LocalPlayer

local function droptool(Position)
    local aQ = game.Players.LocalPlayer.Character;
    if aQ:FindFirstChildOfClass "Tool" then
        local y = aQ:FindFirstChildOfClass "Tool"
        if y:FindFirstChild("ToolName") then
            game.ReplicatedStorage.Interaction.ClientInteracted:FireServer(b, "Drop tool", Position or
                game.Players.LocalPlayer.Character.Head.CFrame)

        end
    end
    for a, b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if b.Name == "Tool" and b.ClassName == "Tool" then
            game.ReplicatedStorage.Interaction.ClientInteracted:FireServer(b, "Drop tool", Position or
                game.Players.LocalPlayer.Character.Head.CFrame)
        end
    end
end
local function gplr(String)
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(Found, v)
        end
    elseif strl == "others" then
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lp.Name then
                table.insert(Found, v)
            end
        end
    elseif strl == "me" then
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name == lp.Name then
                table.insert(Found, v)
            end
        end
    else
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found, v)
            end
        end
    end
    return Found
end

function tools(plr)
    if plr:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or
        plr.Character:FindFirstChildOfClass('Tool') then
        return true
    end
end
local a = game:GetService("Workspace")
local b = game:GetService("ReplicatedStorage")
local c = game:GetService("Players").LocalPlayer
DragModel = function(...)
    local d = {...}
    pcall(function()
        game:GetService("ReplicatedStorage")
        b.Interaction.ClientIsDragging:FireServer(d[1])
    end)
    d[1]:PivotTo(d[2])
    return d
end
DragModelmain = function(...)
    local d = {...}
    pcall(function()
        b.Interaction.ClientIsDragging:FireServer(d[1])
    end)
    d[1].Main.CFrame = d[2]
    return d
end
DragModel2 = function(...)
    local d = {...}
    pcall(function()
        b.Interaction.ClientIsDragging:FireServer(d[1])
        b.Interaction.ClientIsDragging:FireServer(d[1])
        b.Interaction.ClientIsDragging:FireServer(d[1])
        b.Interaction.ClientIsDragging:FireServer(d[1])

    end)
    d[1]:SetPrimaryPartCFrame(d[2])
    return d
end
DragModel1 = function(...)
    local d = {...}
    pcall(function()
        b.Interaction.ClientIsDragging:FireServer(d[1])
        b.Interaction.ClientIsDragging:FireServer(d[1])
    end)
    d[1]:MoveTo(d[2])
    d[1]:MoveTo(d[2])
    return d
end


repeat wait(.1) until lp.Character
local Character0 = lp.Character
Character0.Archivable = true
local IsInvis = false
local IsRunning = true
local InvisibleCharacter = Character0:Clone()
InvisibleCharacter.Parent = game:GetService'Lighting'
local Void = workspace.FallenPartsDestroyHeight
InvisibleCharacter.Name = ""
local CF

lp.CharacterAdded:Connect(function()
	if lp.Character == InvisibleCharacter then return end
	repeat wait(.1) until lp.Character:FindFirstChildWhichIsA'Humanoid'
	if IsRunning == false then
		IsInvis = false
		IsRunning = true
		Character0 = lp.Character
		Character0.Archivable = true
		InvisibleCharacter = Character0:Clone()
		InvisibleCharacter.Name = ""
		InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			Respawn()
		end)
		for i,v in pairs(InvisibleCharacter:GetDescendants())do
			if v:IsA("BasePart") then
				if v.Name == "HumanoidRootPart" then
					v.Transparency = 1
				else
					v.Transparency = .5
				end
			end
		end
	end
end)

local Fix = game:GetService("RunService").Stepped:Connect(function()
	pcall(function()
		local IsInteger
		if tostring(Void):find'-' then
			IsInteger = true
		else
			IsInteger = false
		end
		local Pos = lp.Character.HumanoidRootPart.Position
		local Pos_String = tostring(Pos)
		local Pos_Seperate = Pos_String:split(', ')
		local X = tonumber(Pos_Seperate[1])
		local Y = tonumber(Pos_Seperate[2])
		local Z = tonumber(Pos_Seperate[3])
		if IsInteger == true then
			if Y <= Void then
				Respawn()
			end
		elseif IsInteger == false then
			if Y >= Void then
				Respawn()
			end
		end
	end)
end)

for i,v in pairs(InvisibleCharacter:GetDescendants())do
	if v:IsA("BasePart") then
		if v.Name == "HumanoidRootPart" then
			v.Transparency = 1
		else
			v.Transparency = .5
		end
	end
end

function Respawn()
	IsRunning = false
	if IsInvis == true then
		pcall(function()
			lp.Character = Character0
			wait()
			Character0.Parent = workspace
			Character0:FindFirstChildWhichIsA'Humanoid':Destroy()
			IsInvis = false
			InvisibleCharacter.Parent = nil
		end)
	elseif IsInvis == false then
		pcall(function()
			lp.Character = Character0
			wait()
			Character0.Parent = workspace
			Character0:FindFirstChildWhichIsA'Humanoid':Destroy()
			IsInvis = false
		end)
	end
end

InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
	Respawn()
end)

function FixCam()
	workspace.CurrentCamera.CameraSubject = lp.Character:FindFirstChildWhichIsA'Humanoid'
	workspace.CurrentCamera.CFrame = CF
end

function freezecam(arg)
	if arg == true then
		workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	else
		workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	end
end

function TurnInvisible()
	if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = lp.Character.HumanoidRootPart.CFrame
	lp.Character.HumanoidRootPart.CFrame=CFrame.new(9e9, 9e9, 9e9)
	freezecam(true)
	wait(.6)
	freezecam(false)
	InvisibleCharacter = InvisibleCharacter
	Character0.Parent = game:GetService'Lighting'
	InvisibleCharacter.Parent = workspace
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	lp.Character = InvisibleCharacter
	FixCam()
	lp.Character.Animate.Disabled = true
	lp.Character.Animate.Disabled = false
end

function TurnVisible()
	if IsInvis == false then return end
	CF = workspace.CurrentCamera.CFrame
	Character0 = Character0
	local CF_1 = lp.Character.HumanoidRootPart.CFrame
	Character0.HumanoidRootPart.CFrame = CF_1
	InvisibleCharacter.Parent = game:GetService'Lighting'
	lp.Character = Character0
	Character0.Parent = workspace
	IsInvis = false
	FixCam()
	lp.Character.Animate.Disabled = true
	lp.Character.Animate.Disabled = false
end
for i, v in next, game:GetService("Players").LocalPlayer.PlayerGui:GetChildren() do
    if v.Name ~= "Chat" and v.Name ~= "TargetGui" then
        for i, v in next, v:GetDescendants() do
            local UC = Instance.new("UICorner", v)
            UC.CornerRadius = UDim.new(0, 5)
            if v.Name == "DropShadow" then
                v:Destroy()
            end
            if v:IsA("TextButton") or v:IsA("Frame") or v:IsA("ScrollingFrame") then
                v.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
            end
            if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
                v.TextColor3 = Color3.fromRGB(225, 225, 225)
                v.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
            end
        end
    end
end
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
function getTieredAxe()
    return {
        ['Beesaxe'] = 13,
        ['AxeAmber'] = 12,
        ['ManyAxe'] = 15,
        ['BasicHatchet'] = 0,
        ['RustyAxe'] = -1,
        ['Axe1'] = 2,
        ['Axe2'] = 3,
        ['AxeAlphaTesters'] = 9,
        ['Rukiryaxe'] = 8,
        ['Axe3'] = 4,
        ['AxeBetaTesters'] = 10,
        ['FireAxe'] = 11,
        ['SilverAxe'] = 5,
        ['EndTimesAxe'] = 16,
        ['AxeChicken'] = 6,
        ['CandyCaneAxe'] = 1,
        ['AxeTwitter'] = 7,
        ['CandyCornAxe'] = 14
    }
end
function getAxeList()
    local aP = {}
    for J, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        table.insert(aP, v)
    end
    local aQ = game.Players.LocalPlayer.Character;
    if aQ:FindFirstChildOfClass "Tool" then
        table.insert(aP, aQ:FindFirstChildOfClass("Tool"))
    end
    return aP
end
function getWorstAxe()
    local aQ = game.Players.LocalPlayer.Character;
    if aQ:FindFirstChildOfClass "Tool" then
        local y = aQ:FindFirstChildOfClass "Tool"
        if y:FindFirstChild("ToolName") then
            return y
        end
    end
    local aR = 9999;
    local aS = nil;
    local aT = getTieredAxe()
    for J, v in pairs(getAxeList()) do
        if v:FindFirstChild("ToolName") then
            if aT[v.ToolName.Value] < aR then
                aS = v;
                aR = aT[v.ToolName.Value]
            end
        end
    end
    return aS
end

local function barkgetBestAxe()
    local aQ = game.Players.LocalPlayer.Character;
    if aQ:FindFirstChildOfClass "Tool" then
        local y = aQ:FindFirstChildOfClass "Tool"
        if y:FindFirstChild("ToolName") then
            return y
        end
    end
    local aU = -1;
    local aV = nil;
    local aT = getTieredAxe()
    for J, v in pairs(getAxeList()) do
        if v:FindFirstChild("ToolName") then
            if aT[v.ToolName.Value] > aU then
                aV = v;
                aU = aT[v.ToolName.Value]
            end
        end
    end
    return aV
end
function getHitPointsTbl()
    return {
        ['Beesaxe'] = 1.4,
        ['AxeAmber'] = 3.39,
        ['ManyAxe'] = 10.2,
        ['BasicHatchet'] = 0.2,
        ['Axe1'] = 0.55,
        ['Axe2'] = 0.93,
        ['AxeAlphaTesters'] = 1.5,
        ['Rukiryaxe'] = 1.68,
        ['Axe3'] = 1.45,
        ['AxeBetaTesters'] = 1.45,
        ['FireAxe'] = 0.6,
        ['SilverAxe'] = 1.6,
        ['EndTimesAxe'] = 1.58,
        ['AxeChicken'] = 0.9,
        ['CandyCaneAxe'] = 0,
        ['AxeTwitter'] = 1.65,
        ['CandyCornAxe'] = 1.75,
        ["CaveAxe"] = 0.4
    }
end
local function getMouseTarget()
    local b2 = game:GetService("UserInputService"):GetMouseLocation()
    return workspace:FindPartOnRayWithIgnoreList(Ray.new(workspace.CurrentCamera.CFrame.p,
        workspace.CurrentCamera:ViewportPointToRay(b2.x, b2.y, 0).Direction * 1000),
        game.Players.LocalPlayer.Character:GetDescendants())
end
local Pos = game:service 'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)

local function table_foreach(table, callback)
    for i = 1, #table do
        callback(i, table[i])
    end
end

local function getCFrame(part)
    local part = part or (lp.Character and lp.Character.HumanoidRootPart)
    if not part then
        return
    end
    return part.CFrame
end

local function tp(pos)
    local pos = pos or lp:GetMouse().Hit + Vector3.new(0, lp.Character.HumanoidRootPart.Size.Y, 0)
    if typeof(pos) == "CFrame" then
        lp.Character:SetPrimaryPartCFrame(pos)
    elseif typeof(pos) == "Vector3" then
        lp.Character:MoveTo(pos)
    end
end

require = getgenv().require -- for pebc and sentinel

function get_axe_damage(tool, tree)
    -- totally not skidded from lumbsmasher
    local axe_class = require(game.ReplicatedStorage.AxeClasses['AxeClass_' .. tool.ToolName.Value])
    local axe_table = axe_class.new()
    if axe_table["SpecialTrees"] then
        if axe_table["SpecialTrees"][tree] then
            return axe_table["SpecialTrees"][tree].Damage
        else
            return axe_table.Damage
        end
    else
        return axe_table.Damage
    end
end
function get_axe_cooldown(tool)
    local success, return_value = pcall(function()
        local axe_class = require(game.ReplicatedStorage.AxeClasses['AxeClass_' .. tool.ToolName.Value])
        local axe_table = axe_class.new()

        return axe_table.SwingCooldown
    end)
    if success then
        return return_value
    else
        warn("ERROR WHILE REQUIRING MODULE: " .. return_value)
        return 1
    end
end
function get_axe_swingdelay(tool)
    local axe_cooldown = get_axe_cooldown(tool)
    local start = tick()
    game.ReplicatedStorage.TestPing:InvokeServer()
    local ping = (tick() - start) / 2
    local swing_delay = 0.65 * axe_cooldown - ping
    return swing_delay
end
local override_sawmill = nil
function getBestSawmill()
    local best = nil
    for i, v in pairs(game.Workspace.PlayerModels:GetChildren()) do
        if v:FindFirstChild("Owner") and v:FindFirstChild("ItemName") and v.Owner.Value == game.Players.LocalPlayer and
            v.ItemName.Value:sub(1, 7) == "Sawmill" then
            if not best then
                best = v
            else
                if #v.ItemName.Value > #best.ItemName.Value then
                    best = v
                elseif tonumber(v.ItemName.Value:sub(8, 8)) > tonumber(best.ItemName.Value:sub(8, 8)) then
                    best = v
                end
            end
        end
    end
    return best
end
function barkgetBestAxe2()
    -- changing it to my own method ~applebee#3071
    local pc = game.Players.LocalPlayer.Character
    local axe_damage
    local best_axe
    for i, v in pairs(getAxeList()) do
        if v.name == "Tool" then
            local damage = get_axe_damage(v, "Generic")
            if best_axe == nil then
                best_axe = v
                axe_damage = damage
            elseif get_axe_damage(best_axe, "Generic") < damage then
                best_axe = v
                axe_damage = damage
            end
        end
    end
    return best_axe
end
local function lumbsmasher_legitpaint(wood_class, blueprint, tpback)

    local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local remote = game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure
    local bp_type = blueprint.ItemName.Value

    local Player = game.Players.LocalPlayer
    local wood
    for i, v in pairs(game:GetService("ReplicatedStorage").ClientItemInfo:GetChildren()) do
        if v.Name == bp_type then
            for i, s in pairs(v:GetChildren()) do
                if s.Name == "WoodCost" then
                    wood = s.Value
                end
            end
        end

    end
    if lp.SuperBlueprint.Value then
        wood = 1
    end
    local required_wood = wood

    -- getting the axe
    local tool = barkgetBestAxe2()
    local sawmill = getBestSawmill()
    if tool == nil then
        notify(" 忍 ", "请你装备斧头", 4)
        return
    end

    if wood_class == "LoneCave" then
        if tool.ToolName.Value ~= "EndTimesAxe" then
            notify(" 忍 ", "请你装备末日斧头", 4)
            return
        end
    end

    local WoodSection
    local Min = 9e99

    for i, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == 'TreeRegion' then
            for j, Tree in pairs(v:GetChildren()) do
                if Tree:FindFirstChild('Leaves') and Tree:FindFirstChild('WoodSection') and
                    Tree:FindFirstChild('TreeClass') then
                    if Tree:FindFirstChild('TreeClass').Value == wood_class then

                        for k, TreeSection in pairs(Tree:GetChildren()) do
                            if TreeSection.Name == 'WoodSection' then
                                local Size = TreeSection.Size.X * TreeSection.Size.Y * TreeSection.Size.Z
                                if (Size > required_wood) and (#TreeSection.ChildIDs:GetChildren() == 0) then
                                    if Min > TreeSection.Size.X then
                                        Min = TreeSection.Size.X
                                        WoodSection = TreeSection
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if not WoodSection then
        notify(" 忍 ", "没有找到树", 4)
        return
    end

    local Chopped = false
    local treecon = game.Workspace.LogModels.ChildAdded:connect(function(add)
        local Owner = add:WaitForChild('Owner')
        if (add.Owner.Value == Player) and (add.TreeClass.Value == wood_class) and add:FindFirstChild("WoodSection") then
            Chopped = add
            treecon:Disconnect()
        end
    end)

    local CutSize = required_wood / (WoodSection.Size.X * WoodSection.Size.X) + 0.01
    local swing_delay = get_axe_swingdelay(tool)
    local function axe(v, id, h)
        local hps = get_axe_damage(tool, Wood)
        local table = {
            ["tool"] = tool,
            ["faceVector"] = Vector3.new(0, 0, -1),
            ["height"] = h,
            ["sectionId"] = id,
            ["hitPoints"] = hps,
            ["cooldown"] = 0.112,
            ["cuttingClass"] = "Axe"
        }
        game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.CutEvent, table)
        task.wait()
    end
    local iterations = 0
    _G.GetTreeNC = game:GetService 'RunService'.Stepped:connect(oldnocliprun)
    while Chopped == false do
        iterations = iterations + 1
        if iterations > 1000 then
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(WoodSection.Parent)
            game.ReplicatedStorage.Interaction.DestroyStructure:FireServer(WoodSection.Parent)
            Chopped = true
        end
        tp(WoodSection.CFrame + Vector3.new(4, 2, 2))
        axe(WoodSection.Parent, WoodSection.ID.Value, WoodSection.Size.Y - CutSize)
    end
    _G.GetTreeNC:Disconnect()
    _G.GetTreeNC = nil
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(7)

    local target_cframe
    if blueprint:FindFirstChild("MainCFrame") then
        target_cframe = blueprint.MainCFrame.Value
    else
        target_cframe = blueprint.PrimaryPart.CFrame
    end

    -- local fill_target_cframe = sawmill.Particles.CFrame + Vector3.new((sawmill.Main.Size.X/2)-2, 0, 0)
    local fill_target_cframe = sawmill.Particles.CFrame + Vector3.new(0, 1, 0)
    -- teleport bp to sawmill --ignore as teleporting to wood directly
    -- game.ReplicatedStorage.PlaceStructure.ClientPlacedBlueprint:FireServer(blueprint.ItemName.Value, fill_target_cframe, game.Players.LocalPlayer, blueprint, true)

    iterations = 0
    local Sawed = false
    sawconn = game.Workspace.PlayerModels.ChildAdded:connect(function(add)
        local Owner = add:WaitForChild('Owner')
        if (add.Owner.Value == Player) and add:FindFirstChild("WoodSection") then
            if not add:FindFirstChild('TreeClass') then
                repeat
                    wait()
                until add:FindFirstChild('TreeClass')
            end
            if add.TreeClass.Value == wood_class then
                Sawed = add
                sawconn:Disconnect()
            end
        end
    end)
    iterations = 0
    while Chopped.Parent ~= nil do
        if Sawed then
            break
        end
        iterations = iterations + 1
        if iterations > 300 then
            notify(" 忍 ", "没有成功处理树", 4)
        end
        tp(CFrame.new(Chopped.WoodSection.Position) + Vector3.new(0, 4, 0))
        -- game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(Chopped.WoodSection)
        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Chopped)
        Chopped.PrimaryPart = Chopped.WoodSection
        Chopped:SetPrimaryPartCFrame(sawmill.Particles.CFrame)
        -- Chopped.WoodSection.CFrame = sawmill.Particles.CFrame
        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Chopped)
        wait(2)
    end
    repeat
        wait()
    until Sawed
    iterations = 0

    local placed = false
    local new_structure_connection
    new_structure_connection = game.Workspace.PlayerModels.ChildAdded:Connect(function(child)
        local owner = child:WaitForChild("Owner")
        if owner.Value == game.Players.LocalPlayer and child:FindFirstChild("Type") and child.Type.Value == "Structure" then
            if not child:FindFirstChild("BuildDependentWood") then
                notify(" 忍 ", "没有成功", 4)
                return
            end
            new_structure_connection:Disconnect()
            local wood_type
            if child:FindFirstChild("BlueprintWoodClass") then
                wood_type = child.BlueprintWoodClass.Value
            end
            remote:FireServer(child.ItemName.Value, target_cframe, game.Players.LocalPlayer, wood_type, child, true, nil)
            placed = true
            -- pcall(rconsoleprint, "Moved and Placed Structure!\n")
        end
    end)
    while Sawed.Parent ~= nil do
        -- pcall(rconsoleprint, "Plank Exists! Filling Blueprint...\n")
        if iterations > 50 then
            -- if blueprint.Parent then
            game.ReplicatedStorage.Interaction.DestroyStructure:FireServer(Sawed)
            game.ReplicatedStorage.Interaction.DestroyStructure:FireServer(blueprint)
            -- pcall(rconsoleprint, "Way too many attempts to teleport blueprint to wood!\n")
            notify(" 忍 ", "尝试太多次蓝图填充木头了", 4)
            -- end
        end
        iterations = iterations + 1
        if Sawed.Parent == nil then
            break
        end
        local connection, blueprint_made
        connection = game.Workspace.PlayerModels.ChildAdded:Connect(function(child)
            if child:WaitForChild("Owner") and child.Owner.Value == game.Players.LocalPlayer and
                child:FindFirstChild("Type") and child.Type.Value == "Blueprint" then
                connection:Disconnect()
                blueprint = child
                blueprint_made = true
            end
        end)
        game.ReplicatedStorage.PlaceStructure.ClientPlacedBlueprint:FireServer(bp_type, Sawed.WoodSection.CFrame,
            game.Players.LocalPlayer, blueprint, blueprint.Parent ~= nil)
        -- pcall(rconsoleprint, "Waiting for BP Move...\n")
        local bp_wait_iter = 0
        repeat
            if bp_wait_iter > 500 then
                notify(" 忍 ", "没有找到蓝图", 4)
                -- game.ReplicatedStorage.Interaction.DestroyStructure:FireServer(blueprint)
                -- game.ReplicatedStorage.PlaceStructure.ClientPlacedBlueprint:FireServer(bp_type, Sawed.WoodSection.CFrame, game.Players.LocalPlayer, nil, false)
                -- bp_wait_iter = 0
            end
            wait()
            bp_wait_iter = bp_wait_iter + 1
        until blueprint_made or placed
        if placed then
            pcall(connection.Disconnect, connection)
        end

    end
    iterations = 0
    -- pcall(rconsoleprint, "Waiting for placement...\n")
    repeat
        wait()
    until placed
    -- pcall(rconsoleprint, "Placed!\n")
    if tpback then
        tp(old)
        notify(" 忍 ", "完成", 4)
    end
end

local function getPosition(part)
    return getCFrame(part).Position
end

local function getTools()
    lp.Character.Humanoid:UnequipTools()
    local tools = {}
    table_foreach(lp.Backpack:GetChildren(), function(_, v)
        if v.Name ~= "BlueprintTool" then
            tools[#tools + 1] = v
        end
    end)
    return tools
end
local function getToolStats(toolName)
    if typeof(toolName) ~= "string" then

        toolName = toolName.ToolName.Value
    end
    return require(gs("ReplicatedStorage").AxeClasses['AxeClass_' .. toolName]).new()
end
local getTool = function()
    return lp.Character:FindFirstChild("Tool") or lp.Backpack:FindFirstChild("Tool")
end
local function getBestAxe(treeClass)
    local tools = getTools()
    if #tools == 0 then
        return notify(" 忍 ", "你需要斧头", 4)
    end
    local toolStats = {}
    local tool
    for _, v in next, tools do
        if treeClass == "LoneCave" and v.ToolName.Value == "EndTimesAxe" then
            tool = v
            break
        end
        local axeStats = getToolStats(v)
        if axeStats.SpecialTrees and axeStats.SpecialTrees[treeClass] then
            for i, v in next, axeStats.SpecialTrees[treeClass] do
                axeStats[i] = v
            end
        end
        table.insert(toolStats, {
            tool = v,
            damage = axeStats.Damage
        })
    end
    if not tool and treeClass == "LoneCave" then
        return notify(" 忍 ", "你需要末日斧头", 4)
    end
    table.sort(toolStats, function(a, b)
        return a.damage > b.damage
    end)
    return true, tool or toolStats[1].tool
end

local function cutPart(event, section, height, tool, treeClass)
    local axeStats = getToolStats(tool)
    if axeStats.SpecialTrees and axeStats.SpecialTrees[treeClass] then
        for i, v in next, axeStats.SpecialTrees[treeClass] do
            axeStats[i] = v
        end
    end
    game:GetService 'ReplicatedStorage'.Interaction.RemoteProxy:FireServer(event, {
        tool = tool,
        faceVector = Vector3.new(-1, 0, 0),
        height = height or 0.3,
        sectionId = section or 1,
        hitPoints = axeStats.Damage,
        cooldown = axeStats.SwingCooldown,
        cuttingClass = "Axe"
    })
end
local treeListener = function(treeClass, callback)
    local childAdded
    childAdded = workspace.LogModels.ChildAdded:Connect(function(child)
        local owner = child:WaitForChild("Owner")
        if owner.Value == lp and child.TreeClass.Value == treeClass then
            childAdded:Disconnect()
            callback(child)
        end
    end)
end

local getBiggestTree = function(treeClass)
    for _, v in next, workspace:children() do
        if tostring(v) == "TreeRegion" then
            for _, g in next, v:children() do
                if g:FindFirstChild("TreeClass") and tostring(g.TreeClass.Value) == treeClass and
                    g:FindFirstChild("Owner") then
                    if g.Owner.Value == nil or tostring(g.Owner.Value) == tostring(game.Players.LocalPlayer) then
                        if #g:children() > 5 and g:FindFirstChild("WoodSection") then
                            for h, j in next, g:children() do
                                if j:FindFirstChild("ID") and j.ID.Value == 1 and j.Size.Y > .5 then
                                    return j;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return false;
end

local function bringTree(treeClass)

    local success, data = getBestAxe(treeClass)

    local axeStats = getToolStats(data)

    local treeCut = false

    treeListener(treeClass, function(tree)
        tree:WaitForChild('Owner', 60)

        tree.PrimaryPart = tree:FindFirstChild("WoodSection")
        treeCut = true

        task.spawn(function()
            for i = 1, 60 do
                game:GetService("ReplicatedStorage")
                b.Interaction.ClientIsDragging:FireServer(tree)
                game["Run Service"].Heartbeat:wait()
            end
        end)
        task.wait(0.1)
        tree.PrimaryPart = tree.WoodSection
        spawn(function()
            for i = 1, 60 do
                tree.PrimaryPart.Velocity = Vector3.new(0, 0, 0)
                tree:PivotTo(bai.treecutset)
                game["Run Service"].Heartbeat:wait()
            end
        end)

        wait(0.5)
        if treeClass == "LoneCave" then
            lp.Character.Head:Destroy()
            lp.CharacterAdded:Wait()
            wait(2)
        end

        tp(bai.treecutset)
    end)

    if treeClass == "LoneCave" then
        local GM = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint
        GM:Clone().Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        GM:Destroy()
    end
    local tree = getBiggestTree(treeClass)
    if not tree then
        return notify(" 忍 ", "没有找到树", 3)
    end

    spawn(function()
        repeat
            tp(tree.CFrame + Vector3.new(3, 3, 0))
            cutPart(tree.Parent.CutEvent, 1, 0.3, data, treeClass)
            game["Run Service"].Heartbeat:wait()
        until treeCut
    end)

end

local function autofarm(treeClass)
    local oldpos = lp.Character.HumanoidRootPart.CFrame
    local success, data = getBestAxe(treeClass)

    local axeStats = getToolStats(data)

    local tree = getBiggestTree(treeClass)

    if not tree then
        return notify(" 忍 ", "没有找到树", 3)
    end

    local treeCut = false

    treeListener(treeClass, function(tree)
        tree.PrimaryPart = tree:FindFirstChild("WoodSection")
        treeCut = true

        for i = 1, 70 do

            game:GetService 'ReplicatedStorage'.Interaction.ClientIsDragging:FireServer(tree.WoodSection)
            tree:MoveTo(oldPosition)
            task.wait()
        end

    end)
    task.wait(0.15)

    task.spawn(function()
        repeat
            tp(tree.trunk.CFrame * CFrame.new(4, 3, 4))
            task.wait()
        until treeCut
    end)

    task.wait()

    repeat
        cutPart(tree.tree.CutEvent, 1, 0.3, data, treeClass)
        task.wait(axeStats.SwingCooldown - 14)
    until treeCut
    if bai.autofarm1 == false then
        notify(" 忍 ", "完成", 3)
    end
    tp(oldPosition)
end

local function lowerBridge(value)

    if value == 'Higher' then
        for _, v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
            v.CFrame = v.CFrame + Vector3.new(0, 26, 0)
        end

    elseif value == 'Lower' then
        for _, v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
            v.CFrame = v.CFrame + Vector3.new(0, -26, 0)
        end
    end
end

local function OpenSelectedItem(item)
    local itemBox = item:FindFirstChild('BoxItemName') or item:FindFirstChild('PurchasedBoxItemName');
    if itemBox and item:FindFirstChild('Type') and item.Type.Value ~= 'Structure' then
        game:GetService('ReplicatedStorage').Interaction.ClientInteracted:FireServer(item, 'Open box');
        notify(' 忍 ', '成功打开', 4)
    end
end

local function donate(plr, amount)
    local spawnf = function(func, ...)
        return coroutine.wrap(func)(...)
    end
    if tostring(plr) == tostring(lp) then
        notify('错误', '请选择玩家', 4);
        return;
    end
    if bai.donationRecipient == nil or not game:GetService('Players'):FindFirstChild(plr) then
        notify('错误', '没有找到玩家', 4);
        return;
    end
    if tonumber(bai.moneyaoumt) >= 60000000 then
        notify('错误', '数字太高', 4);
        return;
    end
    if tonumber(bai.moneyaoumt) <= 0 then
        notify('错误', '数字太高', 4);
        return;
    end
    if lp.CurrentSaveSlot.Value <= 0 then
        notify('错误', '基地没有加载', 4);
        return;
    end
    if not lp:FindFirstChild('CurrentlySavingOrLoading') then
        notify('错误', '正在保存', 4);
        return;
    end
    if tonumber(bai.moneyaoumt) > lp.leaderstats.Money.Value then
        notify('错误', '你没有足够的钱', 4);
        return;
    end

    local scr = getsenv(lp.PlayerGui.DonateGUI.DonateClient)
    local scr2 = getsenv(lp.PlayerGui.NoticeGUI.NoticeClient)
    scr.setPlatformControls = function()
    end
    scr.openWindow();
    game:GetService 'RunService'.Heartbeat:wait();
    local oldAmount = bai.Players:FindFirstChild(plr).leaderstats.Money.Value;
    local success, errormsg = spawnf(function()
        game:GetService 'ReplicatedStorage'.Transactions.ClientToServer.Donate:InvokeServer(game:GetService('Players')
            :FindFirstChild(plr), tonumber(amount), tonumber(lp.CurrentSaveSlot.Value))
    end);
    game:GetService 'RunService'.Heartbeat:wait();
    for i, v in next, getupvalues(scr.sendDonation) do
        if i == 1 then
            debug.setupvalue(scr.sendDonation, i, game.Players:FindFirstChild(plr));
        end
    end
    scr.sendDonation();
    game:GetService 'RunService'.Heartbeat:wait();
    scr2.exitNotice();
    notify(' 忍 ', '正在尝试转钱', 2);
    wait(6)
    if game:GetService('Players'):FindFirstChild(plr).leaderstats.Money.Value ~= oldAmount + amount then
        notify('错误', '错误可能需要冷却', 4);
        scr2.exitNotice();
        return;
    end
    notify(' 忍 ', '转钱' .. tostring(amount) .. ' 给 ' .. tostring(plr), 4);
    scr2.exitNotice();
end
local function OwnerCheck(item)
    if item:FindFirstChild('Owner') then
        return tostring(item.Owner.Value);
    end
end

local function WhitelistCheck(player)
    return game:GetService('ReplicatedStorage').Interaction.ClientIsWhitelisted:InvokeServer(player) == true;
end
local function farAxeEquip()

    local done = false;
    if bai.farAxeEquip == nil then
        notify(' 忍 ', '选择一把斧头', 4);
        bai.farAxeEquip = Mouse.Button1Down:connect(function()
            local target = Mouse.Target;
            if target.Parent:IsA('Model') and target.Parent:FindFirstChild('ToolName') then
                if OwnerCheck(target.Parent) == tostring(lp) or WhitelistCheck(target.Parent.Owner.Value) then
                    game:GetService('ReplicatedStorage').Interaction.ClientInteracted:FireServer(target.Parent,
                        'Pick up tool');
                    done = true;
                end
            end
        end);
        repeat
            wait()
        until done;
        notify(' 忍 ', '已装备', 4);
        if bai.farAxeEquip then
            bai.farAxeEquip:Disconnect();
            bai.farAxeEquip = nil;
        end
    else
        notify('错误', '已经激活', 4);
    end
end
local function applyLight(value)
    if value then
        local light = Instance.new('PointLight', lp.Character.Head)
        light.Name = 'bai'
        light.Range = 150
        light.Brightness = 1.7
    else
        pcall(function()
            lp.Character.Head.bai:remove();
        end);
    end
end

local function carTeleport(cframe)
    if game.Players.LocalPlayer.Character then
        Character = game.Players.LocalPlayer.Character
        if Character.Humanoid.SeatPart ~= nil then
            Car = Character.Humanoid.SeatPart.Parent
            spawn(function()
                for i = 1, 5 do
                    wait()
                    Car:SetPrimaryPartCFrame(cframe *
                                                 CFrame.Angles(math.rad(Character.HumanoidRootPart.Orientation.x),
                            math.rad(Character.HumanoidRootPart.Orientation.y), 0))
                    game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(Car.Main)
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Car.Main)
                end
            end)
        end
    end

end
local function CheckIfSlotAvailable(Slot)
    for a, b in pairs(game.ReplicatedStorage.LoadSaveRequests.GetMetaData:InvokeServer(game.Players.LocalPlayer)) do
        if a == Slot then
            for c, d in pairs(b) do
                if c == "NumSaves" and d ~= 0 then
                    return true
                else
                    return false
                end
            end
        end
    end
end

local function CheckSlotNumber() -- Checks if the slot number is right
    if bai.soltnumber == "1" or bai.soltnumber == "2" or bai.soltnumber == "3" or bai.soltnumber == "4" or
        bai.soltnumber == "5" or bai.soltnumber == "6" then
        local SlotNumber = tonumber(bai.soltnumber)
        return SlotNumber
    else
        return false
    end
end

local function getPlanks()
    local plankList = {};
    for _, plank in next, game:GetService('Workspace').PlayerModels:children() do
        if plank:FindFirstChild('WoodSection') and plank:FindFirstChild('Owner') and plank.Owner.Value ==
            game:GetService('Players').LocalPlayer and not table.find(plankList, plank) then
            table.insert(plankList, plank)
        end
    end
    return plankList;
end

local function sellwood()
    local oldpos = lp.Character.HumanoidRootPart.CFrame
    for i, v in next, game:GetService("Workspace").LogModels:GetChildren() do
        if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
            tp(v.WoodSection.CFrame)
            spawn(function()
                for i2, v2 in next, v:GetChildren() do
                    if v2.Name == "WoodSection" then
                        local FreezeWood = Instance.new("BodyVelocity", v2)
                        FreezeWood.Velocity = Vector3.new(0, 0, 0)
                        FreezeWood.P = 100000
                        spawn(function()

                            for i = 1, 50 do
                                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                                v:PivotTo(CFrame.new(314.54, -0.5, 86.823))
                                v2.CFrame = CFrame.new(314.54, -0.5, 86.823)
                                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                                game:GetService 'RunService'.Heartbeat:wait();
                            end
                        end)
                        task.wait(1)
                    end
                end
            end)
            task.wait(2)
        end
    end
    tp(oldpos)
end

local function PlankToBlueprint()

    local target;
    notify(' 忍 ', '选择一个木头和蓝图', 2);
    bai.PlankToBlueprint = game:GetService('Players').LocalPlayer:GetMouse().Button1Down:Connect(function()
        if game:GetService('Players').LocalPlayer:GetMouse().Target then
            target = game:GetService('Players').LocalPlayer:GetMouse().Target;
        end
        if target.Parent:FindFirstChild('Type') and target.Parent.Type.Value == 'Blueprint' then
            bai.blueprintModel = game:GetService('Players').LocalPlayer:GetMouse().Parent;
            notify(' 忍 ', '蓝图已选择', 2);
        end
        if tostring(target.Parent) == 'Plank' and target.Parent:FindFirstChild('Owner') and
            tostring(target.Parent.Owner.Value) == tostring(lp) then
            bai.plankModel = target.Parent;
            notify(' 忍 ', '木头已选择', 2);
        end
    end);
    repeat
        wait()
    until bai.plankModel and bai.blueprintModel;
    bai.PlankToBlueprint:Disconnect();
    bai.PlankToBlueprint = nil;
    tp(CFrame.new(bai.plankModel:FindFirstChildOfClass 'Part'.CFrame.p + Vector3.new(0, 3, 4)))
    wait(.2)
    for i = 1, 30 do
        pcall(function()
            game:GetService('ReplicatedStorage').Interaction.ClientIsDragging:FireServer(bai.plankModel)
            bai.plankModel.WoodSection.CFrame = CFrame.new(bai.blueprintModel.Main.CFrame.p + Vector3.new(0, 1.5, 0));
            game:GetService 'RunService'.Stepped:wait();
        end);
    end

    notify(' 忍 ', '完成', 2);
    bai.blueprintModel = nil;
    bai.plankModel = nil;
end

local function burnAllShopItems()
    local found = false;
    for _, PressurePlate in pairs(game.Workspace.PlayerModels:children()) do
        if PressurePlate:FindFirstChild 'ItemName' and PressurePlate.ItemName.Value == 'PressurePlate' then
            if PressurePlate.Output.BrickColor ~= BrickColor.new 'Electric blue' then
                repeat
                    wait()
                    lp.Character.HumanoidRootPart.CFrame = CFrame.new(
                        PressurePlate.Plate.CFrame.p + Vector3.new(0, .3, 0));
                until PressurePlate.Output.BrickColor == BrickColor.new 'Electric blue' or not PressurePlate;
                found = true;
            end
        end
    end
    if not found then
        notify(' 忍 ', '没有找到压力板', 4);
        return;
    end
end

function axefily()

    bai.axeFling = mouse.Button1Down:Connect(function()
        local axe = nil
        local axeConnection = workspace.PlayerModels.ChildAdded:connect(function(v)
            v:WaitForChild('Owner', 60)
            if v.Owner.Value == lp then
                print(v)
                axe = v;
                wait(2);
                game.ReplicatedStorage.Interaction.ClientInteracted:FireServer(axe, 'Pick up tool');
            end
        end);

        local oldpos = lp.Character.HumanoidRootPart.CFrame
        droptool(oldpos)

        repeat
            task.wait(0.1)
        until axe ~= nil
        axeConnection:Disconnect();
        axeConnection = nil;
        local fling = Instance.new('BodyPosition', axe.Main);
        fling.MaxForce = Vector3.new(math.huge, math.huge, math.huge);
        fling.P = 650000;
        fling.Position = lp:GetMouse().Hit.p;

        spawn(function()
            while bai.whthmose == true do
                task.wait(0.1)
                fling.Position = lp:GetMouse().Hit.p;
            end
        end)
        local flingPower = 9e9;
        axe.Main.CanCollide = false;
        repeat
            task.wait();
            axe.Main.RotVelocity = Vector3.new(5, 5, 5) * flingPower;
        until (axe.Main.CFrame.p - fling.Position).Magnitude < 1;
        wait(7);
        fling:Destroy();
        axe.Main.CanCollide = true;

    end)
end

local function Press(Button)
    game.ReplicatedStorage.Interaction.RemoteProxy:FireServer(Button)
end
function CanClientLoad()
    if not game:GetService "ReplicatedStorage".LoadSaveRequests.ClientMayLoad:InvokeServer(lp) then
        notify(" 忍 ", "等待加载时间,请耐心的等待", 4)
        repeat
            game:GetService "RunService".Stepped:wait()
        until game:GetService "ReplicatedStorage".LoadSaveRequests.ClientMayLoad:InvokeServer(lp)
    end
    return true
end
function GetLoadedSlot()
    return lp.CurrentSaveSlot.Value
end
function LoadSlot(slot)
    local CheckLoad
    spawn(function()
        CheckLoad = game:GetService('ReplicatedStorage').LoadSaveRequests.ClientMayLoad:InvokeServer(lp)
        if not CheckLoad then
            repeat
                wait()
            until CheckLoad
        end
        game:GetService('ReplicatedStorage').LoadSaveRequests.RequestLoad:InvokeServer(slot, lp)
        return slot
    end)
end

Teleport = function(...)
    local d = {...}
    for e = 1, 3 do
        task.wait()
        c.Character.HumanoidRootPart.CFrame = d[1]
    end
    return d
end

local k = tonumber(1)
local l = {}
GetShopID = {
    ["WoodRus"] = {
        ["Character"] = a.Stores.WoodRUs.Thom,
        ["Name"] = "Thom",
        ["ID"] = tonumber(7)
    },
    ["FurnitureStore"] = {
        ["Character"] = a.Stores.FurnitureStore.Corey,
        ["Name"] = "Corey",
        ["ID"] = tonumber(8)
    },
    ["CarStore"] = {
        ["Character"] = a.Stores.CarStore.Jenny,
        ["Name"] = "Jenny",
        ["ID"] = tonumber(9)
    },
    ["ShackShop"] = {
        ["Character"] = a.Stores.ShackShop.Bob,
        ["Name"] = "Bob",
        ["ID"] = tonumber(10)
    },
    ["FineArt"] = {
        ["Character"] = a.Stores.FineArt.Timothy,
        ["Name"] = "Timothy",
        ["ID"] = tonumber(11)
    },
    ["LogicStore"] = {
        ["Character"] = a.Stores.LogicStore.Lincoln,
        ["Name"] = "Lincoln",
        ["ID"] = tonumber(12)
    }
}
BuyItem = function(m)
    return b.NPCDialog.PlayerChatted:InvokeServer(m, "ConfirmPurchase")
end

function finditem(o)
    for e, h in next, a.Stores:children() do
        if h.Name == "ShopItems" and h:FindFirstChild "Box" then
            for i, j in next, h:children() do

                if j.BoxItemName.Value == o then
                    for i, w in next, h:children() do

                        if w.BoxItemName.Value == "Bed1" or w.BoxItemName.Value == "Seat_Couch" then
                            ID = GetShopID.FurnitureStore
                            Cashier = game.Workspace.Stores.FurnitureStore.Corey.HumanoidRootPart.CFrame
                            Counter = game.Workspace.Stores.FurnitureStore.Counter.CFrame + Vector3.new(0, .4, 0)
                        elseif w.BoxItemName.Value == "Sawmill" or w.BoxItemName.Value == "Sawmill2" then
                            ID = GetShopID.WoodRus
                            Cashier = game.Workspace.Stores.WoodRUs.Thom.HumanoidRootPart.CFrame
                            Counter = game.Workspace.Stores.WoodRUs.Counter.CFrame + Vector3.new(0, .4, 0)
                        elseif w.BoxItemName.Value == "Trailer2" or w.BoxItemName.Value == "UtilityTruck2" then
                            ID = GetShopID.CarStore
                            Cashier = game.Workspace.Stores.CarStore.Jenny.HumanoidRootPart.CFrame
                            Counter = game.Workspace.Stores.CarStore.Counter.CFrame + Vector3.new(0, .4, 0)
                        elseif w.BoxItemName.Value == "CanOfWorms" or w.BoxItemName.Value == "Dynamite" then
                            ID = GetShopID.ShackShop
                            Cashier = game.Workspace.Stores.ShackShop.Bob.HumanoidRootPart.CFrame
                            Counter = game.Workspace.Stores.ShackShop.Counter.CFrame + Vector3.new(0, .4, 0)
                        elseif w.BoxItemName.Value == "Painting1" or w.BoxItemName.Value == "Painting2" then
                            ID = GetShopID.FineArt
                            Cashier = game.Workspace.Stores.FineArt.Timothy.HumanoidRootPart.CFrame
                            Counter = game.Workspace.Stores.FineArt.Counter.CFrame + Vector3.new(0, .4, 0)
                        elseif w.BoxItemName.Value == "GateXOR" or w.BoxItemName.Value == "NeonWireOrange" then
                            ID = GetShopID.LogicStore
                            Cashier = game.Workspace.Stores.LogicStore.Lincoln.HumanoidRootPart.CFrame
                            Counter = game.Workspace.Stores.LogicStore.Counter.CFrame + Vector3.new(0, .4, 0)

                        end
                    end
                    return {j, Cashier, ID, Counter}
                end
            end
        end
    end
end
function autobuyv2(o)

    local item = nil
    local ltem = nil

    item = finditem(o)

    if item == nil then
        notify(" 忍 ", "没有找到商品或者没有刷新，请你等待", 4)
        repeat
            task.wait()
            item = finditem(o)
        until item ~= nil

    end

    ltem = item[1]

    Teleport(ltem.Main.CFrame)
    task.wait()

    game:GetService('RunService').Stepped:wait();
    for e = 1, 15 do
        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(ltem)
        ltem:PivotTo(item[4])
        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(ltem)
        game:GetService('RunService').Stepped:wait();
    end
    Teleport(item[4] + Vector3.new(5, 0, 5))

    repeat

        BuyItem(item[3])
        game:GetService('RunService').Stepped:wait()

    until tostring(ltem.Parent) ~= "ShopItems"

    return o
end

function autobuy(o, r)
    bai.autocsdx = game.Workspace.PlayerModels.ChildAdded:connect(function(v)
        v:WaitForChild('Owner', 60)
        if v.Owner.Value == lp then
            for i = 1, 20 do
                game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                v:PivotTo(bai.autobuyset)
                game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                game:GetService('RunService').Stepped:wait();
            end
        end
    end)
    for e = 1, r do
        if bai.autobuystop == false then
            autobuyv2(o)
            task.wait()
        end
    end
    spawn(function()
        wait(1)
        bai.autocsdx:Disconnect();
        bai.autocsdx = nil;
    end)
    return o, r
end

local cashierIds = {};
spawn(function()
    local connection = game.ReplicatedStorage.NPCDialog.PromptChat.OnClientEvent:connect(function(ba, data)
        if cashierIds[data.Name] == nil then
            cashierIds[data.Name] = data.ID;
        end
    end);
    game.ReplicatedStorage.NPCDialog.SetChattingValue:InvokeServer(1);
    wait(2)
    connection:Disconnect();
    connection = nil;
    game.ReplicatedStorage.NPCDialog.SetChattingValue:InvokeServer(0);
end);

local function getSpecialID(Shop)
    return cashierIds[Shop];
end

function shuaxinlb(zji)
    bai.dropdown = {}
    if zji == true then
        for p, I in next, game.Players:GetChildren() do
            table.insert(bai.dropdown, I.Name)
        end
    else
        for p, I in next, game.Players:GetChildren() do
            if I ~= lp then
                table.insert(bai.dropdown, I.Name)
            end
        end
    end
end
shuaxinlb(true)


Section:Toggle("自动扔斧头", 'Toggleflag', false, function(state)
    bai.autodropae = true
    if state then

        while wait() do

            if bai.autodropae == true then
                local oldpos = lp.Character.HumanoidRootPart.CFrame
                droptool(oldpos)
            end
        end
    else
        bai.autodropae = false
    end
end)
Section:Toggle("自动捡斧头", 'Toggleflag', false, function(state)
    if state then
        bai.autopick = true
        while bai.autopick == true do

            task.wait(0.1)
            for a, b in pairs(workspace.PlayerModels:GetChildren()) do
                if b:FindFirstChild("Owner") and b.Owner.Value == game.Players.LocalPlayer then
                    if b:FindFirstChild("Type") and b.Type.Value == "Tool" then

                        game:GetService('ReplicatedStorage').Interaction.ClientInteracted:FireServer(b, 'Pick up tool')

                    end
                end

            end
        end
    else
        bai.autopick = false
    end
end)

Section:Button("如何食用加载复制斧头", function()
    notlft(" 忍 ",
        "默认死亡时间为3.1秒，如果卡在加载界面就增加时间,如果斧头被保存了就减少时间,加减推荐是在3.1的基础上来,推荐加减时间为0.1秒",
        "好")
end)
Section:Textbox("死亡后多长时间加载", 'TextBoxfalg', "输入数字", function(txt)
    bai.loaddupeaxewaittime = txt
end)
Section:Button("获取当前死亡后加载时间", function()
    bailib:Notification(" 忍 ", " 时间为" .. bai.loaddupeaxewaittime .. "秒", "好")
end)
Section:Button("加载复制斧头", function()
    CanClientLoad()
    wait(1)
    lp.Character.Head:Destroy()
    wait(bai.loaddupeaxewaittime)
    LoadSlot(GetLoadedSlot())
    wait(6)
    lp.Character.HumanoidRootPart.CFrame = oldpos
end)
Section:Button("远程装备斧头", function()
    farAxeEquip()
end)
Section:Toggle("斧头跟随鼠标", 'Toggleflag', false, function(state)
    if state then
        bai.whthmose = true
    else
        bai.whthmose = false
    end
end)
Section:Toggle("斧头炸家", 'Toggleflag', false, function(state)
    if state then
        axefily()
    else
        if bai.axeFling then
            bai.axeFling:Disconnect(0.1);
            bai.axeFling = nil;
        end
    end
end)
Section1:Button("点击土地免费获得", function()
    freeland=nil
    notify(" 忍 ","请你点击一个空的土地",4)
    ClickToSelectClick = Mouse.Button1Up:Connect(function()
    Clicked = Mouse.Target
   
        if  tostring(Clicked.Parent.Name) == "Property" then
            local v =Clicked.Parent
        
            if v:FindFirstChild("Owner") and v.Owner.Value==nil then
                game.ReplicatedStorage.PropertyPurchasing.ClientPurchasedProperty:FireServer(v, v.OriginSquare.OriginCFrame.Value.p + Vector3.new(0, 3, 0))
                wait(0.5)
                freeland=true
                Instance.new('RemoteEvent', game:service 'ReplicatedStorage'.Interaction).Name = "Ban"
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame +Vector3.new(0, 10, 0)
            else
                notify(" 忍 ","这个土地有主人了",4)
       end
    end
    end)
repeat
    task.wait()
until freeland~=nil
    ClickToSelectClick:Disconnect()
    ClickToSelectClick=nil
end)
Section1:Button("免费土地", function()
    for a, b in pairs(workspace.Properties:GetChildren()) do
        if b:FindFirstChild("Owner") and b:FindFirstChild("OriginSquare") and b.Owner.Value == nil then
            game.ReplicatedStorage.PropertyPurchasing.ClientPurchasedProperty:FireServer(b, b.OriginSquare.OriginCFrame
                .Value.p + Vector3.new(0, 3, 0))
            wait(0.5)
            Instance.new('RemoteEvent', game:service 'ReplicatedStorage'.Interaction).Name = "Ban"
            for i, v in pairs(game.Workspace.Properties:GetChildren()) do
                if v.Owner.Value == game.Players.LocalPlayer then
                    game.Players.LocalPlayer.Character.Humanoid.Jump = true
                    wait(0.1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame +
                                                                                     Vector3.new(0, 10, 0)
                    game.Players.LocalPlayer.Character.Humanoid.Jump = true
                    wait(0.1)
                end
            end
        end
    end
end)
Section1:Button("最大土地", function()

    for i, v in pairs(game:GetService("Workspace").Properties:GetChildren()) do
        if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
            base = v
            square = v.OriginSquare
        end
    end
    function makebase(pos)
        local Event = game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty
        Event:FireServer(base, pos)
    end
    spos = square.Position
    makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z))
    makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z))
    makebase(CFrame.new(spos.X, spos.Y, spos.Z + 40))
    makebase(CFrame.new(spos.X, spos.Y, spos.Z - 40))
    makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 40))
    makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 40))
    makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 40))
    makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 40))
    makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z))
    makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z))
    makebase(CFrame.new(spos.X, spos.Y, spos.Z + 80))
    makebase(CFrame.new(spos.X, spos.Y, spos.Z - 80))
    -- Corners--
    makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 80))
    makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 80))
    makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 80))
    makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 80))
    -- Corners--
    makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 80))
    makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 80))
    makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 40))
    makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 40))
    makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 40))
    makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 40))
    makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 80))
    makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 80))

end)
Section1:Textbox("选择存档", 'TextBoxfalg', "输入数字", function(s)
    bai.soltnumber = s
end)
Section1:Button("加载", function()
    ScriptLoadOrSave = true
    local CheckSlot = CheckSlotNumber()
    if CheckSlot ~= false then
        if CheckIfSlotAvailable(CheckSlot) == true then
            local LoadSlot = game.ReplicatedStorage.LoadSaveRequests.RequestLoad:InvokeServer(CheckSlot)
            if LoadSlot == false then
                notify(" 忍 ", "有冷却现在不能加载!", 1)
            end
            if LoadSlot == true then
                notify(" 忍 ", "已加载!", 2)
                CurrentSlot = CheckSlot
            end
        else
            notify(" 忍 ", "貌似不工作了", 2)
        end
    else
        notify(" 忍 ", "请你填数字☹️", 2)
    end
    ScriptLoadOrSave = false
end)
Section1:Button("一键复制", function()
    
DupeSlot=tonumber(bai.soltnumber)
    local ItemAdded, ItemAdded = game:GetService("Workspace").PlayerModels.ChildAdded:Connect(function(v)
        if v:WaitForChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
            game:GetService('RunService').Stepped:wait();
            game:Shutdown()
        end
    end)

    game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(DupeSlot, game.Players.LocalPlayer)
end)
Section5:Button("传送木头", function()
    OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for i, v in next, game:GetService("Workspace").LogModels:GetChildren() do
        if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
            if not v.PrimaryPart then
                v.PrimaryPart = v:FindFirstChild("WoodSection")
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                v:FindFirstChild("WoodSection").CFrame.p)
            spawn(function()
                for i = 1, 50 do
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                    task.wait()
                end
            end)
            for i = 1, 50 do
                task.wait()
                v:PivotTo(OldPos)
            end
            task.wait()
        end
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos

end)
Section5:Button("传送木板", function()
    local logFolder = getPlanks();
    local oldPos = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame;
    for _, log in next, logFolder do
        if log:FindFirstChild('WoodSection') then

            spawn(function()
                for i = 1, 20 do

                    game:GetService('ReplicatedStorage').Interaction.ClientIsDragging:FireServer(log);
                    task.wait();
                end
            end)
            wait(0.18)
            if not log.PrimaryPart then
                log.PrimaryPart = log.WoodSection;
            end
            log:SetPrimaryPartCFrame(oldPos);
        end
    end
end)
Section5:Button("卖木板", function()
    for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
        if Plank.Name == "Plank" and Plank:findFirstChild("Owner") then
            if Plank.Owner.Value == game.Players.LocalPlayer then
                for i, v in pairs(Plank:GetChildren()) do
                    if v.Name == "WoodSection" then
                        spawn(function()
                            for i = 1, 100 do
                                wait()
                                v.CFrame = CFrame.new(Vector3.new(315, -0.296, 85.791)) *
                                               CFrame.Angles(math.rad(90), 0, 0)
                            end
                        end)
                    end
                end
                spawn(function()
                    for i = 1, 100 do
                        wait()
                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Plank)
                    end
                end)
            end
        end
    end
end)
Section5:Toggle("自动卖木板", 'Toggleflag', false, function(state)
    if Section5.Text == "关1" then
        Section5.Text = "开1"
    else
        Section5.Text = "关1"
    end

    if state then
        while wait() do

            if Section5.Text == "关1" then
                for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
                    if Plank.Name == "Plank" and Plank:findFirstChild("Owner") then
                        if Plank.Owner.Value == game.Players.LocalPlayer then
                            for i, v in pairs(Plank:GetChildren()) do
                                if v.Name == "WoodSection" then
                                    spawn(function()
                                        for i = 1, 10 do
                                            wait()
                                            v.CFrame = CFrame.new(Vector3.new(315, -0.296, 85.791)) *
                                                           CFrame.Angles(math.rad(90), 0, 0)
                                        end
                                    end)
                                end
                            end
                            spawn(function()
                                for i = 1, 20 do
                                    wait()
                                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Plank)
                                end
                            end)
                        end

                    end
                end
            end
        end
    end
end)
Section5:Button("卖木头", function()
    sellwood()
end)
Section5:Toggle("自动卖木头", 'Toggleflag', false, function(state)
    if Section5.Text == "关" then
        Section5.Text = "开"
    else
        Section5.Text = "关"
    end

    local oldpos = lp.Character.HumanoidRootPart.CFrame
    while wait() do
        if state then
            if Section5.Text == "关" then
                sellwood()
            end
        end
    end
end)
Section5:Toggle("拖拽器", 'Toggleflag', false, function(state)
    if state then
        workspace.ChildAdded:connect(function(Dragger)
            if tostring(Dragger) == 'Dragger' then
                local BodyGyro = Dragger:WaitForChild 'BodyGyro';
                local BodyPosition = Dragger:WaitForChild 'BodyPosition';
                repeat
                    game:GetService 'RunService'.Stepped:wait()
                until workspace:FindFirstChild 'Dragger';

                BodyPosition.P = 120000;
                BodyPosition.D = 1000;
                BodyPosition.maxForce = Vector3.new(1, 1, 1) * 1000000;
                BodyGyro.maxTorque = Vector3.new(1, 1, 1) * 200;
                BodyGyro.P = 1200;
                BodyGyro.D = 140;

            end
        end)
    else

        workspace.ChildAdded:connect(function(Dragger)
            if tostring(Dragger) == 'Dragger' then
                local BodyGyro = Dragger:WaitForChild 'BodyGyro';
                local BodyPosition = Dragger:WaitForChild 'BodyPosition';
                repeat
                    game:GetService 'RunService'.Stepped:wait()
                until workspace:FindFirstChild 'Dragger';

                BodyPosition.P = 10000;
                BodyPosition.D = 800;
                BodyPosition.maxForce = Vector3.new(17000, 17000, 17000);
                BodyGyro.maxTorque = Vector3.new(200, 200, 200);
                BodyGyro.P = 1200;
                BodyGyro.D = 140;
            end
        end)

    end
end)
Section5:Button("处理树--半自动(旧)", function()
    wait(0.5)
    local oldPosition = getPosition()
    local oldpos = lp.Character.HumanoidRootPart.CFrame
    local wood
    local sell = CFrame.new(314.943634, -6, 82.8602905, -0.999041438, -0.00970918871, 0.0426843949, -0.00323261251,
        0.988793433, 0.149255186, -0.0436551981, 0.148974136, -0.987876952)

    notify("半自动加工", "请点击一颗树", 4)

    local ModTree = Mouse.Button1Up:Connect(function()
        local obj = Mouse.Target.Parent
        if not obj:FindFirstChild "RootCut" and obj.Parent.Name == "TreeRegion" then
            return notify("错误!", "这棵树还没有砍!", 3)
        end
        if obj:FindFirstChild "Owner" and obj.Owner.Value == lp and obj:FindFirstChild "WoodSection" then
            wood = obj
            notify("半自动加工", "已选择树!", 3)
        end

    end)
    repeat
        task.wait(.01)
    until wood ~= nil
    ModTree:Disconnect()
    ModTree = nil

    tp(wood.WoodSection.CFrame)
    spawn(function()
        for i = 1, 20 do

            wood:PivotTo(sell)
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(wood)
            game:GetService('RunService').Stepped:wait();

        end
    end)
    task.wait(0.1)
    tp(wood.WoodSection.CFrame)
    task.wait(1.2)

    for i = 1, 20 do
        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(wood)
        wood:MoveTo(oldPosition)
        game:GetService('RunService').Stepped:wait();

    end
    tp(oldpos)
end)
Section5:Button("处理树半自动--(新)", function()
    local oldpos = lp.Character.HumanoidRootPart.CFrame
    bai.modwood = true

    for _, Log in pairs(workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
            if Log.Owner.Value == game.Players.LocalPlayer then
                for i, v in pairs(Log:GetChildren()) do
                    if v.Name == "WoodSection" then
                        if bai.modwood == true then
                            tp(v.CFrame)
                        end
                        wait(0.2)

                        spawn(function()
                            for i = 1, 20 do
                                if bai.modwood == true then
                                    task.wait()
                                    v.CFrame = CFrame.new(330.98587, -0.574430406, 79.0872726, -6, 0.000781620154,
                                        -0.0201439466, 0.000569172669, 0.99994421, 0.0105500417, 0.0201510694,
                                        0.0105364323, -0.999741435)
                                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log)
                                end
                            end

                            wait(1)

                            for i = 1, 10 do
                                task.wait()
                                v.CFrame = oldpos
                                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log)
                            end
                            bai.modwood = false
                        end)

                    end
                end

            end
        end
    end
    tp(oldpos)
end)
Sectionbringtree:Dropdown("选择树", 'Dropdown',
    {"普通树", '幻影木', "沼泽黄金", "樱花", "蓝木", "冰木", "火山木", "橡木", "巧克力木",
     "白桦木", "黄金木", "雪地松", "僵尸木", "大巧克力树", "椰子树", '南瓜木', '幽灵木'},
    function(b)
        if b == '普通树' then
            bai.cuttreeselect = "Generic"
        elseif b == '沼泽黄金' then
            bai.cuttreeselect = "GoldSwampy"
        elseif b == '樱花' then
            bai.cuttreeselect = "Cherry"
        elseif b == '蓝木' then
            bai.cuttreeselect = "CaveCrawler"
        elseif b == '冰木' then
            bai.cuttreeselect = "Frost"
        elseif b == '火山木' then
            bai.cuttreeselect = "Volcano"
        elseif b == '橡木' then
            bai.cuttreeselect = "Oak"
        elseif b == '巧克力木' then
            bai.cuttreeselect = "Walnut"
        elseif b == '白桦木' then
            bai.cuttreeselect = "Birch"
        elseif b == '黄金木' then
            bai.cuttreeselect = "SnowGlow"
        elseif b == '雪地松' then
            bai.cuttreeselect = "Pine"
        elseif b == '僵尸木' then
            bai.cuttreeselect = "GreenSwampy"
        elseif b == '大巧克力树' then
            bai.cuttreeselect = "Koa"
        elseif b == '椰子树' then
            bai.cuttreeselect = "Palm"
        elseif b == '幽灵木' then
            bai.cuttreeselect = "Spooky"
        elseif b == '南瓜木' then
            bai.cuttreeselect = "SpookyNeon"
        elseif b == '幻影木' then
            bai.cuttreeselect = "LoneCave"
        end
    end)

Sectionbringtree:Textbox("带来树的数量", 'TextBoxfalg', "1", function(txt)
    bai.bringamount = txt
end)
Sectionbringtree:Button("带来树", function()
    bai.bringtree = true
    bai.treecutset = lp.Character.HumanoidRootPart.CFrame
    task.wait(0.2)
    for i = 1, bai.bringamount do
        if bai.bringtree == true then
            task.wait()
            bringTree(bai.cuttreeselect)
        end

    end
    task.wait()

end)
Sectionbringtree:Button("停止", function()
    bai.bringtree = false
end)
Sectionbringtree:Toggle("自动砍树", 'Toggleflag', false, function(state)

    if state then
        bai.autofarm = true
        task.spawn(function()
            while task.wait(0.3) do

                if bai.autofarm == true then

                    bringTree(bai.cuttreeselect)

                end
            end
        end)
    else
        bai.autofarm = false

    end
end)
Sectionbringtree:Toggle("自动赚钱", 'Toggleflag', false, function(state)

    local oldpos = lp.Character.HumanoidRootPart.CFrame

    if state then
        bai.autofarm1 = true
        local function callback(Text)
            if Text == "确定" then
                pcall(function()

                    while task.wait() do
                        if bai.autofarm1 == true then
                            game:GetService("Players").LocalPlayer.Character:MoveTo(Vector3.new(315, -0.296, 102.791));

                            autofarm(bai.cuttreeselect)

                            wait(1)
                            game:GetService("Players").LocalPlayer.Character:MoveTo(Vector3.new(315, -0.296, 102.791));

                            wait(20)
                        end
                    end
                end)

            elseif Text == "取消" then

            end
        end

        local NotificationBindable = Instance.new("BindableFunction")
        NotificationBindable.OnInvoke = callback
        --
        game.StarterGui:SetCore("SendNotification", {
            Title = " 忍 ",
            Text = "使用此功能前请你打开自动卖木头",
            Icon = "",
            Duration = 6,
            Button1 = "确定",
            Button2 = "取消",
            Callback = NotificationBindable
        })
    else
        bai.autofarm1 = false
        for i, v in pairs(game.Workspace.Properties:GetChildren()) do
            if v.Owner.Value == game.Players.LocalPlayer then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame +
                                                                                 Vector3.new(0, 10, 0)
            end
        end
    end
end)
Section5:Button("木板填充蓝图", function()
    PlankToBlueprint()
end)
Section5:Toggle("查看幻影", 'Toggleflag', false, function(state)
    if state then

        for i, v in pairs(game.workspace:GetChildren()) do
            if v.Name == "TreeRegion" and v:FindFirstChildOfClass("Model") then
                if v.Model.TreeClass.Value == "LoneCave" then
                    workspace.Camera.CameraSubject = v.Model.WoodSection
                    task.wait()
                end
            end
        end

    else
        workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character

    end
end)
Section5:Button("锯木机最大木头体型", function()
    local connection, sawmillModel;
    notify(' 忍 ', '选择一个剧木机', 4)
    connection = mouse.Button1Down:Connect(function(b)
        local target = mouse.Target;
        if target then
            sawmill = target.Parent;
            if sawmill.Name:find('Sawmill') then
                sawmillModel = sawmill;
                notify(' 忍 ', '剧木机已选择', 4)
            elseif sawmill.Parent.Name:find('Sawmill') or sawmill.Parent:FindFirstChild 'BlockageAlert' then
                sawmillModel = sawmill.Parent
                notify(' 忍 ', '剧木机已选择', 4)
            end
        end
    end);
    repeat
        wait()
    until sawmillModel ~= nil;
    if connection then
        connection:Disconnect();
        connection = nil;
    end
    spawn(function()
        for i = 1, 50 do
            game:GetService('ReplicatedStorage').Interaction.RemoteProxy:FireServer(
                sawmillModel:FindFirstChild 'ButtonRemote_XUp');
            task.wait(0.5)
            game:GetService('ReplicatedStorage').Interaction.RemoteProxy:FireServer(
                sawmillModel:FindFirstChild 'ButtonRemote_YUp');

        end
    end);
end)

Section5:Toggle("自动把木头切成1个单位", 'Toggleflag', false, function(state)
    local oldpos = lp.Character.HumanoidRootPart.CFrame

    if state then
        PlankReAdded = game:GetService("Workspace").PlayerModels.ChildAdded:Connect(function(v)
            if v:WaitForChild("TreeClass") and v:WaitForChild("WoodSection") then
                SelTree = v
                task.wait()
            end
        end)
        UnitCutterClick = Mouse.Button1Up:Connect(function()
            Clicked = Mouse.Target

            if Clicked.Name == "WoodSection" then
                SelTree = Clicked.Parent
                game.Players.LocalPlayer.Character:MoveTo(Clicked.Position + Vector3.new(0, 3, -3))
                local success, data = getBestAxe(SelTree.TreeClass.Value)
                repeat
                    if state == false then
                        break
                    end
                    cutPart(SelTree.CutEvent, 1, 1, data, SelTree.TreeClass.Value)
                    if SelTree:FindFirstChild("Cut") then
                        game.Players.LocalPlayer.Character:MoveTo(
                            SelTree:FindFirstChild("Cut").Position + Vector3.new(0, 3, -3))
                    end
                    task.wait()
                until SelTree.WoodSection.Size.X <= 1.88 and SelTree.WoodSection.Size.Y <= 1.88 and
                    SelTree.WoodSection.Size.Z <= 1.88 or state == false
            end
        end)

    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
        UnitCutterClick:Disconnect()
        UnitCutterClick = nil
        PlankReAdded:Disconnect()
        PlankReAdded = nil
    end
end)
Section5:Button("分解树", function()

    OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local LogChopped = false
    branchadded = game:GetService("Workspace").LogModels.ChildAdded:Connect(function(v)
        if v:WaitForChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
            if v:WaitForChild("WoodSection") then
                LogChopped = true
            end
        end
    end)
    notify(" 忍 ", "请你点击一棵树", 4)

    DismemberTreeC = Mouse.Button1Up:Connect(function()
        Clicked = Mouse.Target
        if Clicked.Parent:FindFirstAncestor("LogModels") then
            if Clicked.Parent:FindFirstChild("Owner") and Clicked.Parent.Owner.Value == game.Players.LocalPlayer then
                TreeToJointCut = Clicked.Parent
            end
        end
    end)
    repeat
        task.wait()
    until tostring(TreeToJointCut) ~= "nil"

    for i, v in next, TreeToJointCut:GetChildren() do
        if v.Name == "WoodSection" then
            if v:FindFirstChild("ID") and v.ID.Value ~= 1 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.p)
                local success, data = getBestAxe(v.Parent:FindFirstChild("TreeClass").Value)
                repeat
                    cutPart(v.Parent:FindFirstChild("CutEvent"), v.ID.Value, 0.2, data,
                        v.Parent:FindFirstChild("TreeClass").Value)
                    task.wait()
                until LogChopped == true
                LogChopped = false
                task.wait(1)
            end
        end
    end
    TreeToJointCut = nil
    branchadded:Disconnect()
    DismemberTreeC:Disconnect()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos

end)

Section5:Button("处理树--自动", function()
    local wood
    local Saw
    local sell = CFrame.new(315, -4, 84)
    notify("一键加工", "请点击一颗树,再点击一个锯木机", 4)
    wait(0.5)
    local oldPosition = getPosition()
    local oldpos = lp.Character.HumanoidRootPart.CFrame
    local ModTree = Mouse.Button1Up:Connect(function()
        local obj = Mouse.Target.Parent
        if not obj:FindFirstChild "RootCut" and obj.Parent.Name == "TreeRegion" then
            return notify("错误!", "这棵树还没有砍!", 3)
        end
        if obj:FindFirstChild "Owner" and obj.Owner.Value == lp and obj:FindFirstChild "WoodSection" then
            wood = obj
            notify("一键加工", "已选择树!", 3)
        end

        if obj.Name:find('Sawmill') then
            Saw = sawmill;
            notify(' 忍 ', '剧木机已选择', 4)
        elseif obj.Parent.Name:find('Sawmill') or obj.Parent:FindFirstChild 'BlockageAlert' then
            Saw = obj.Parent
            notify(' 忍 ', '剧木机已选择', 4)
        end

    end)
    repeat
        task.wait(.01)
    until wood and Saw ~= nil
    ModTree:Disconnect()
    ModTree = nil
    local SawC = Saw.Particles.CFrame + Vector3.new(0.7, 0)
    tp(wood.WoodSection.CFrame)
    spawn(function()
        for i = 1, 20 do

            wood:SetPrimaryPartCFrame(sell)
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(wood)
            game:GetService('RunService').Stepped:wait();

        end
    end)
    task.wait(0.3)
    tp(wood.WoodSection.CFrame)
    task.wait(1)
    for i = 1, 20 do
        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(wood)
        wood:MoveTo(oldPosition)
        game:GetService('RunService').Stepped:wait();

    end
    tp(oldpos)
    pcall(function()
        spawn(function()
            for i = 1, 200 do
                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(wood)
                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(wood)

                wood:SetPrimaryPartCFrame(SawC)
                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(wood)

                task.wait()

            end
        end)
    end)

    Teleport(oldpos)
end)

Section5:Button("删除树/木板", function()
    local a = game:GetService("ReplicatedStorage")
    local b = game:GetService("Players").LocalPlayer
    local c = b:GetMouse()
    local f = Instance.new("Tool", b.Backpack)
    f.Name = "点击你要删除的树或木板"
    f.RequiresHandle = false
    f.Activated:Connect(function()
        local g = c.Target.Parent
        local h = b.Character.HumanoidRootPart.CFrame
        if not g:FindFirstChild "WoodSection" then
            return
        end
        local i
        if g:FindFirstChild "Owner" and g.Owner.Value == b or g.Owner.Value == nil then
            if not g:FindFirstChild "RootCut" and g.Parent.Name == "TreeRegion" then
                for e, j in next, g:children() do
                    if j.Name == "WoodSection" and j:FindFirstChild "ID" and j:FindFirstChild "ID".Value == tonumber(1) then
                        i = j
                    end
                end
            else
                i = g.WoodSection
            end
            tp(i.CFrame)
            for e = 1, 3 do
                spawn(function()
                    for e = 1, 20 do

                        a.Interaction.ClientIsDragging:FireServer(g)
                        a.Interaction.DestroyStructure:FireServer(g)
                        game:GetService('RunService').Stepped:wait();

                    end
                end)
                task.wait(.1)
            end
        else
            return
        end
        task.wait()
        tp(h)
    end)
    f.Parent = game.Players.LocalPlayer.Backpack
end)
Sectionshuoh:Textbox("你要说的话", 'TextBoxfalg', "填写你想要说的话", function(txt)
    bai.saymege = txt
end)
Sectionshuoh:Textbox("说话次数", 'TextBoxfalg', "输入数字", function(txt)
    bai.saymount = txt
end)
Sectionshuoh:Button("说话", function()
    bai.sayfast = true
    for i = 1, bai.saymount do
        if bai.sayfast == true then
            game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer(bai.saymege,
                'All')
        end
    end
end)
Sectionshuoh:Button("停止说话", function()
    bai.sayfast = false
end)
Sectionshuoh:Toggle("全自动说话", 'Toggleflag', false, function(state)
    if state then
        bai.autosay = true
        while task.wait() do
            if bai.autosay == true then
                game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                    bai.saymege, 'All')

            end
        end
    else
        bai.autosay = false
    end
end)
local dropdown = Sectionjinbi:Dropdown("选择玩家名字", 'Dropdown', bai.dropdown, function(v)
    bai.moneytoplayername = v
end)

Sectionjinbi:Button("刷新列表", function()
    shuaxinlb(true)
    dropdown:SetOptions(bai.dropdown)
end)
Sectionjinbi:Textbox("给玩家转钱数量", 'TextBoxfalg', "输入数量", function(txt)
    bai.moneyaoumt = txt
end)

Sectionjinbi:Button("开始转钱", function()
    donate(bai.moneytoplayername, bai.moneyaoumt)
end)
Sectionqita:Button("获得4个小工具", function()
    if lp.Backpack:FindFirstChildOfClass 'HopperBin' then
        return
    end
    for index = 1, 4 do
        Instance.new('HopperBin', lp.Backpack).BinType = index
    end
end)
Sectionqita:Toggle("远程打开东西", 'Toggleflag', false, function(state)
    if state then
        notify(' 忍 ', '选择一个东西去打开', 4)
        bai.openItem = mouse.Button1Down:Connect(function()
            if mouse.Target then
                bai.itemtoopen = mouse.Target;
            end
            OpenSelectedItem(bai.itemtoopen.Parent);
        end)
    else
        if bai.openItem then
            bai.openItem:Disconnect();
            bai.openItem = nil;
        end
        notify(' 忍 ', '打开东西已关闭', 4)
        bai.itemToOpen = nil;
    end
end)
Sectionqita:Button("获得小绿盒", function()
    local greenBox = game:GetService('Workspace')['Region_Volcano'].VolcanoWin;
    firetouchinterest(greenBox, lp.Character.HumanoidRootPart, 0)
    firetouchinterest(greenBox, lp.Character.HumanoidRootPart, 1)
end)
Sectionqita:Button("生成上火山捷径", function()
    local Model = Instance.new("Model", game:GetService("Workspace"))
    Model.Name = "Lumber"

    local Part1 = Instance.new("Part", Model)
    Part1.Name = "Bridge"
    Part1.Reflectance = 0
    Part1.Transparency = 0
    Part1.Anchored = true
    Part1.Archivable = true
    Part1.CanCollide = true
    Part1.Locked = false
    Part1.BrickColor = BrickColor.new("Medium green")
    Part1.Material = Enum.Material.Fabric
    Part1.Position = Vector3.new(4380.8090820313, -11.749999046326, -101.56007385254)
    Part1.Size = Vector3.new(254.85998535156, 0.10000000149012, 1012.0200805664)
    Part1.Rotation = Vector3.new(0, 0, 0)

    local Part2 = Instance.new("Part", Model)
    Part2.Name = "Part"
    Part2.Reflectance = 0
    Part2.Transparency = 0
    Part2.Anchored = true
    Part2.Archivable = true
    Part2.CanCollide = true
    Part2.Locked = false
    Part2.BrickColor = BrickColor.new("Medium green")
    Part2.Material = Enum.Material.Fabric
    Part2.Position = Vector3.new(-1498.7203369141, 628.11077880859, 1146.8332519531)
    Part2.Size = Vector3.new(54.889999389648, 0.38999998569489, 46.719993591309)
    Part2.Rotation = Vector3.new(0, 30, 0)

    local Part3 = Instance.new("Part", Model)
    Part3.Name = "RoadVol"
    Part3.Reflectance = 0
    Part3.Transparency = 0
    Part3.Anchored = true
    Part3.Archivable = true
    Part3.CanCollide = true
    Part3.Locked = false
    Part3.BrickColor = BrickColor.new("Medium green")
    Part3.Material = Enum.Material.Fabric
    Part3.Position = Vector3.new(-604.03656005859, 301.07205200195, 637.69116210938)
    Part3.Size = Vector3.new(40, 0.20000000298023, 2030.8299560547)
    Part3.Rotation = Vector3.new(147.75, 55.680000305176, -152.4700012207)

    local WedgePart8 = Instance.new("WedgePart", Model)
    WedgePart8.Name = "UP"
    WedgePart8.Reflectance = 0
    WedgePart8.Transparency = 0
    WedgePart8.Anchored = true
    WedgePart8.Archivable = true
    WedgePart8.CanCollide = true
    WedgePart8.Locked = false
    WedgePart8.BrickColor = BrickColor.new("Beige")
    WedgePart8.Material = Enum.Material.Fabric
    WedgePart8.Position = Vector3.new(341.31372070313, -5.8850064277649, -772.25903320313)
    WedgePart8.Size = Vector3.new(65.220001220703, 11.829997062683, 159.52000427246)
    WedgePart8.Rotation = Vector3.new(0, -21.549999237061, 0)

    local WedgePart9 = Instance.new("WedgePart", Model)
    WedgePart9.Name = "UP2"
    WedgePart9.Reflectance = 0
    WedgePart9.Transparency = 0
    WedgePart9.Anchored = true
    WedgePart9.Archivable = true
    WedgePart9.CanCollide = true
    WedgePart9.Locked = false
    WedgePart9.BrickColor = BrickColor.new("Beige")
    WedgePart9.Material = Enum.Material.Fabric
    WedgePart9.Position = Vector3.new(384.87704467773, -5.8850121498108, -1050.4354248047)
    WedgePart9.Size = Vector3.new(65.220001220703, 11.829997062683, 155.8099822998)
    WedgePart9.Rotation = Vector3.new(180, -25.35000038147, 180)

    local WedgePart10 = Instance.new("WedgePart", Model)
    WedgePart10.Name = "Vol1"
    WedgePart10.Reflectance = 0
    WedgePart10.Transparency = 0
    WedgePart10.Anchored = true
    WedgePart10.Archivable = true
    WedgePart10.CanCollide = true
    WedgePart10.Locked = false
    WedgePart10.BrickColor = BrickColor.new("Medium green")
    WedgePart10.Material = Enum.Material.Fabric
    WedgePart10.Position = Vector3.new(-1133.5314941406, 499.67663574219, 943.49224853516)
    WedgePart10.Size = Vector3.new(39.729999542236, 10.650003433228, 823.29010009766)
    WedgePart10.Rotation = Vector3.new(-32.25, -55.680000305176, -27.529998779297)

    local WedgePart11 = Instance.new("WedgePart", Model)
    WedgePart11.Name = "Vol2"
    WedgePart11.Reflectance = 0
    WedgePart11.Transparency = 0
    WedgePart11.Anchored = true
    WedgePart11.Archivable = true
    WedgePart11.CanCollide = true
    WedgePart11.Locked = false
    WedgePart11.BrickColor = BrickColor.new("Medium green")
    WedgePart11.Material = Enum.Material.Fabric
    WedgePart11.Position = Vector3.new(-1526.9182128906, 623.2353515625, 1112.2694091797)
    WedgePart11.Size = Vector3.new(33.96000289917, 10.470000267029, 43.559997558594)
    WedgePart11.Rotation = Vector3.new(0, 32.899997711182, 0)

    local WedgePart12 = Instance.new("WedgePart", Model)
    WedgePart12.Name = "Wedge2"
    WedgePart12.Reflectance = 0
    WedgePart12.Transparency = 0
    WedgePart12.Anchored = true
    WedgePart12.Archivable = true
    WedgePart12.CanCollide = true
    WedgePart12.Locked = false
    WedgePart12.BrickColor = BrickColor.new("Medium green")
    WedgePart12.Material = Enum.Material.Fabric
    WedgePart12.Position = Vector3.new(-580.31176757813, 50.62678527832, -2443.0573730469)
    WedgePart12.Size = Vector3.new(58.749996185303, 1, 69.490005493164)
    WedgePart12.Rotation = Vector3.new(-179.08000183105, 14.309999465942, -178.72999572754)

    local WedgePart13 = Instance.new("WedgePart", Model)
    WedgePart13.Name = "Wedge"
    WedgePart13.Reflectance = 0
    WedgePart13.Transparency = 0
    WedgePart13.Anchored = true
    WedgePart13.Archivable = true
    WedgePart13.CanCollide = true
    WedgePart13.Locked = false
    WedgePart13.BrickColor = BrickColor.new("Medium green")
    WedgePart13.Material = Enum.Material.Fabric
    WedgePart13.Position = Vector3.new(-554.13073730469, 37.368190765381, -2545.1484375)
    WedgePart13.Size = Vector3.new(59.18998336792, 30.919998168945, 140.86001586914)
    WedgePart13.Rotation = Vector3.new(0.91999995708466, -14.309999465942, -1.2699999809265)

    local Part14 = Instance.new("Part", Model)
    Part14.Name = "Wall"
    Part14.Reflectance = 0
    Part14.Transparency = 0.60000002384186
    Part14.Anchored = false
    Part14.Archivable = true
    Part14.CanCollide = true
    Part14.Locked = false
    Part14.BrickColor = BrickColor.new("Medium stone grey")
    Part14.Material = Enum.Material.Fabric
    Part14.Position = Vector3.new(-1522.0369873047, 632.79083251953, 1160.2779541016)
    Part14.Size = Vector3.new(46.590003967285, 8.9700002670288, 1.0400000810623)
    Part14.Rotation = Vector3.new(-180, 60, -180)

    local Part15 = Instance.new("Part", Model)
    Part15.Name = "Fence2"
    Part15.Reflectance = 0
    Part15.Transparency = 0.5
    Part15.Anchored = true
    Part15.Archivable = true
    Part15.CanCollide = true
    Part15.Locked = false
    Part15.BrickColor = BrickColor.new("Beige")
    Part15.Material = Enum.Material.Fabric
    Part15.Position = Vector3.new(-620.37908935547, 319.05871582031, 669.19006347656)
    Part15.Size = Vector3.new(2037.669921875, 16.129999160767, 2)
    Part15.Rotation = Vector3.new(0.0099999997764826, 30, -17.510000228882)

    local Part16 = Instance.new("Part", Model)
    Part16.Name = "Fence"
    Part16.Reflectance = 0
    Part16.Transparency = 0.5
    Part16.Anchored = true
    Part16.Archivable = true
    Part16.CanCollide = true
    Part16.Locked = false
    Part16.BrickColor = BrickColor.new("Beige")
    Part16.Material = Enum.Material.Fabric
    Part16.Position = Vector3.new(-639.38134765625, 319.06237792969, 636.27484130859)
    Part16.Size = Vector3.new(2037.669921875, 16.129999160767, 2)
    Part16.Rotation = Vector3.new(0.0099999997764826, 30, -17.510000228882)
    wait(4.6)
    for index, lumber in pairs(game.Workspace.Lumber:GetChildren()) do

    end
end)
Sectionqita:Button("生成去椰子岛的捷径", function()
    local palm1 = Instance.new("Part", workspace)
    palm1.Name = "K Truck's Goin' There"
    palm1.Position = Vector3.new(1753.475, -10, -45.351)
    palm1.Size = Vector3.new(1600, 1, 50)
    palm1.BrickColor = BrickColor.Random()
    palm1.Anchored = true
    palm1.CanCollide = true
end)
Sectionqita:Button("沼泽捷径", function()
    local part = Instance.new("Part", workspace)
    part.CFrame = CFrame.new(-499.196075, 155.460663, -166.186081, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(295.87, 1, 40.14)
    local part2 = Instance.new("Part", workspace)
    part2.CFrame = CFrame.new(-53.5482712, 75.8732529, -166.035767, 0.965925813, 0.258819044, 0, -0.258819044,
        0.965925813, 0, 0, 0, 1)
    part2.Size = Vector3.new(617.23, 0.72, 40)
    part2.Rotation = Vector3.new(0, 0, -15)
    part.BrickColor = BrickColor.new(255, 255, 255)
    part.Material = Enum.Material.DiamondPlate;
    part.Anchored = true
    part2.BrickColor = BrickColor.new(255, 255, 255)
    part2.Material = Enum.Material.DiamondPlate;
    part2.Anchored = true
end)
Sectionqita:Button("黄金木捷径", function()
    local f0 = Instance.new("Folder", workspace)
    f0.Name = "SGlowPath"
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(8.54199982, -0.914913177, -812.122375, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(55, 1, 186)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-309.958008, -0.834023476, -879.710388, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(582, 1, 50)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-606.630554, -0.843258381, -748.689453, 0.965925813, 0, -0.258819044, 0, 1, 0, 0.258819044,
        0, 0.965925813)
    part.Size = Vector3.new(47, 1, 246)
    part.Rotation = Vector3.new(0, -15, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-763.458679, -0.723966122, -652.31958, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(227, 1, 38)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-842.989868, -0.602809906, -713.690918, 0.965925872, 0, -0.258818835, 0, 1, 0, 0.258818835,
        0, 0.965925872)
    part.Size = Vector3.new(43, 1, 108)
    part.Rotation = Vector3.new(0, -15, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-775.692932, -0.588047981, -815.868713, 0.707106829, 0, -0.707106769, 0, 1, 0, 0.707106769,
        0, 0.707106829)
    part.Size = Vector3.new(42, 1, 170)
    part.Rotation = Vector3.new(0, -45, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-728.159668, -0.591278076, -952.04364, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(55, 1, 182)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-864.098999, -0.257263005, -985.877014, 0.965925872, 0, 0.258818835, 0, 1, 0, -0.258818835,
        0, 0.965925872)
    part.Size = Vector3.new(235, 1, 56)
    part.Rotation = Vector3.new(0, 15, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(-1015.87311, -11.1293316, -945.632751, 0.933012664, -0.258819044, 0.25, 0.267445326,
        0.963572919, -0.000555455685, -0.240749463, 0.0673795789, 0.968245745)
    part.Size = Vector3.new(82, 1, 55)
    part.Rotation = Vector3.new(0.03, 14.48, 15.51)
    for J, v in pairs(f0:children()) do
        v.BrickColor = BrickColor.new(255, 255, 255)
        v.Material = Enum.Material.DiamondPlate;
        v.Anchored = true
    end
end)
Sectionqita:Button("冰木捷径", function()
    local f0 = Instance.new("Folder", workspace)
    f0.Name = "FrostPath"
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(744.516663, 71.5780411, 861.148438, 1, -1.04308164e-07, -1.78813934e-07, 1.47034342e-07,
        0.965925932, 0.258818656, 1.45724101e-07, -0.258818656, 0.965925932)
    part.Size = Vector3.new(40, 1, 202)
    part.Rotation = Vector3.new(-15, 0, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(744.273, 97.5341, 1003.82)
    part.Size = Vector3.new(41, 1, 90)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(775.181458, 100.246162, 1027.58276, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813,
        0, 0, 0, 1)
    part.Size = Vector3.new(46, 1, 43)
    part.Rotation = Vector3.new(0, 0, 15)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(815.776672, 106.550224, 1027.4032, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(38, 1, 42)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(815.849976, 257.424072, 1608.79456, 1, 0, 0, 0, 0.965925813, 0.258819044, 0, -0.258819044,
        0.965925813)
    part.Size = Vector3.new(38, 1, 1164)
    part.Rotation = Vector3.new(-15, 0, 0)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(900.612122, 407.759827, 2194.72363, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    part.Size = Vector3.new(208, 1, 50)
    local part = Instance.new("Part", f0)
    part.CFrame = CFrame.new(1268.40649, 407.26062, 2798.83594, 0.91354543, 0, 0.406736642, 0, 1, 0, -0.406736642, 0,
        0.91354543)
    part.Size = Vector3.new(41, 2, 1364)
    part.Rotation = Vector3.new(0, 24, 0)
    for J, v in pairs(f0:children()) do
        v.BrickColor = BrickColor.new(255, 255, 255)
        v.Material = Enum.Material.DiamondPlate;
        v.Anchored = true
    end
end)
Sectionqita:Button("更简单的砍幻影", function()
    local yellow1 = Instance.new("Part", workspace)
    yellow1.Name = "Lol Truck There Easy"
    yellow1.Position = Vector3.new(-5.915, -217, -1250.256)
    yellow1.Size = Vector3.new(1207.06, 1, 1160.09)
    yellow1.BrickColor = BrickColor.Random()
    yellow1.Anchored = true
    yellow1.CanCollide = true
end)
Sectionqita:Button("点击传送", function()
    mouse = game.Players.LocalPlayer:GetMouse()
    tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "点击传送工具"
    tool.Activated:connect(function()
        local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
        pos = CFrame.new(pos.X, pos.Y, pos.Z)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)
Sectionqita:Button("重进服务器", function()
    game:GetService("TeleportService"):Teleport(13822889)
end)
Sectionyule:Button("拿出可口可乐", function()

    loadstring(game:HttpGet('https://pastebin.com/raw/BEgB0gEJ', true))()
end)
Sectionyule:Button("变成警察", function()

    loadstring(game:HttpGet('https://pastebin.com/raw/8wB54iNk', true))()
end)

Sectionyule:Button("出现悬浮板", function()

    loadstring(game:HttpGet('https://pastebin.com/raw/MrfVCM9y', true))()
end)
Sectionyule:Button("托马斯小火车", function()

    loadstring(game:HttpGet(('http://pastebin.com/raw/tMr759X7'), true))()
end)
Sectionyule:Button("圆球", function()

    loadstring(game:HttpGet(('https://pastebin.com/raw/ZFSTSi9B'), true))()
end)
Sectionyule:Button("喷漆", function()

    loadstring(game:HttpGet(('http://pastebin.com/raw/raYkCjyy'), true))()
end)
Sectionyule:Button("安全自杀", function()

    lp.Character.Head:Destroy()
end)
local Players = Sectionzhenglimt:Dropdown("选择玩家", 'Dropdown', bai.dropdown, function(v)
    bai.mtwjia = v
end)

Sectionzhenglimt:Button("重置玩家名称", function()
    shuaxinlb(true)
    Players:SetOptions(bai.dropdown)
end)
local drop = Sectionzhenglimt:Dropdown("选择木头类型", 'Dropdown',
    {"普通树", "沼泽黄金", "樱花", "蓝木", "冰木", "火山木", "橡木", "巧克力木", "白桦木",
     "黄金木", "雪地松", "僵尸木", "大巧克力树", "椰子树", '幻影', '幽灵木', '南瓜木'},
    function(b)
        if b == '普通树' then
            bai.zlmt = "Generic"
        elseif b == '沼泽黄金' then
            bai.zlmt = "GoldSwampy"
        elseif b == '樱花' then
            bai.zlmt = "Cherry"
        elseif b == '蓝木' then
            bai.zlmt = "CaveCrawler"
        elseif b == '冰木' then
            bai.zlmt = "Frost"
        elseif b == '火山木' then
            bai.zlmt = "Volcano"
        elseif b == '橡木' then
            bai.zlmt = "Oak"
        elseif b == '巧克力木' then
            bai.zlmt = "Walnut"
        elseif b == '白桦木' then
            bai.zlmt = "Birch"
        elseif b == '黄金木' then
            bai.zlmt = "SnowGlow"
        elseif b == '雪地松' then
            bai.zlmt = "Pine"
        elseif b == '僵尸木' then
            bai.zlmt = "GreenSwampy"
        elseif b == '大巧克力树' then
            bai.zlmt = "Koa"
        elseif b == '椰子树' then
            bai.zlmt = "Palm"
        elseif b == '幻影' then
            bai.zlmt = "LoneCave"
        elseif b == '幽灵木' then
            bai.zlmt = "Spooky"
        elseif b == '南瓜木' then
            bai.zlmt = "SpookyNeon"
        end

    end)
Sectionzhenglimt:Toggle("改为竖着整理", 'Toggleflag', false, function(state)
    if state then

        bai.shuzhe = true
    else
        bai.shuzhe = false

    end
end)
Sectionzhenglimt:Button("开始整理", function()
    if bai.zlmt == nil then
        return notify(" 忍 ", "你没有选择木头", 4)
    end
    if bai.shuzhe == false then
        local oldpos = lp.Character.HumanoidRootPart.Position

        for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
            if Plank.Name == "Plank" and Plank:findFirstChild("Owner") then
                if Plank:FindFirstChild("Owner") and tostring(Plank.Owner.Value) == bai.mtwjia then
                    if Plank.TreeClass.Value == bai.zlmt then
                        tp(Plank.WoodSection.CFrame)
                        for i = 1, 50 do
                            game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(Plank)
                            Plank.WoodSection.Position = oldpos
                            game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(Plank)

                            game:GetService('RunService').Stepped:wait();
                        end
                    end
                end
            end
        end
    else
        local oldpos = lp.Character.HumanoidRootPart.CFrame

        for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
            if Plank.Name == "Plank" and Plank:findFirstChild("Owner") then
                if Plank:FindFirstChild("Owner") and tostring(Plank.Owner.Value) == bai.mtwjia then
                    if Plank.TreeClass.Value == bai.zlmt then
                        tp(Plank.WoodSection.CFrame)
                        for i = 1, 50 do
                            game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(Plank)
                            Plank.WoodSection.CFrame = oldpos
                            game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(Plank)

                            game:GetService('RunService').Stepped:wait();
                        end
                    end
                end
            end
        end
    end
end)
local drop = Sectiontchon:Dropdown("选择木头类型", 'Dropdown',
    {"普通树", "沼泽黄金", "樱花", "蓝木", "冰木", "火山木", "橡木", "巧克力木", "白桦木",
     "黄金木", "雪地松", "僵尸木", "大巧克力树", "椰子树", '幻影'}, function(b)
        if b == '普通树' then
            bai.tchonmt = "Generic"
        elseif b == '沼泽黄金' then
            bai.tchonmt = "GoldSwampy"
        elseif b == '樱花' then
            bai.tchonmt = "Cherry"
        elseif b == '蓝木' then
            bai.tchonmt = "CaveCrawler"
        elseif b == '冰木' then
            bai.tchonmt = "Frost"
        elseif b == '火山木' then
            bai.tchonmt = "Volcano"
        elseif b == '橡木' then
            bai.tchonmt = "Oak"
        elseif b == '巧克力木' then
            bai.tchonmt = "Walnut"
        elseif b == '白桦木' then
            bai.tchonmt = "Birch"
        elseif b == '黄金木' then
            bai.tchonmt = "SnowGlow"
        elseif b == '雪地松' then
            bai.tchonmt = "Pine"
        elseif b == '僵尸木' then
            bai.tchonmt = "GreenSwampy"
        elseif b == '大巧克力树' then
            bai.tchonmt = "Koa"
        elseif b == '椰子树' then
            bai.tchonmt = "Palm"
        elseif b == '幻影' then
            bai.tchonmt = "LoneCave"
        end
    end)

Sectiontchon:Button("填充蓝图（木头）", function()
    local plr = game:GetService("Players").LocalPlayer
    local tool = Instance.new("Tool", plr.Backpack)
    tool.RequiresHandle = false
    tool.Name = "点击一块蓝图"
    tool.Activated:Connect(function()
        local str = getMouseTarget().Parent
        if str:FindFirstChild("Type") and str.Type.Value == "Blueprint" and str:FindFirstChild("Owner") then
            lumbsmasher_legitpaint(bai.tchonmt, str, true)
        end
    end)
end)
Sectiontchon:Button("填充蓝图（全部）", function()
    for i, v in pairs(game.Workspace.PlayerModels:GetChildren()) do

        if v:FindFirstChild("Type") and v.Type.Value == "Blueprint" and v:FindFirstChild("Owner") then
            if v.Owner.Value == lp then

                lumbsmasher_legitpaint(bai.tchonmt, v, true)

                task.wait()
            end

        end

    end
end)
Section3:Slider('设置速度', 'Sliderflag', 16, 16, 600, false, function(s)
    bai.walkspeed = s
    spawn(function()
        while task.wait() do
            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = bai.walkspeed
        end
    end)
end)
Section3:Slider('设置跳跃', 'Sliderflag', 50, 50, 600, false, function(s)
    bai.JumpPower = s
    spawn(function()
        while task.wait() do
            game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = bai.JumpPower
        end
    end)
end)
Section3:Slider('设置高度', 'Sliderflag', 0, 0, 1000, false, function(s)
    lp.Character.Humanoid.HipHeight = s
end)
Section3:Slider('设置重力', 'Sliderflag', 198, -999, 999, false, function(s)
    game.workspace.Gravity = s
end)
Section3:Slider('设置相机焦距', 'Sliderflag', 100, 0, 9999, false, function(s)
    lp.CameraMaxZoomDistance = s
end)
Section3:Button("飞行", function()
    loadstring(
        "\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)
Section3:Toggle("自身发光", 'Toggleflag', false, function(state)
    if state then
        applyLight(true);
    else
        applyLight();
    end
end)
function NoClip(NoClipVal)
    if not NoClipVal then
        if Clipping then
            Clipping:Disconnect()
        end
        return
    end
    Clipping = game:GetService("RunService").Stepped:connect(function()
        for i, v in next, game.Players.LocalPlayer.Character:GetChildren() do
            if v:IsA("Part") or v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end)
end
Section3:Toggle("穿墙", 'Toggleflag', false, function(state)
    NoClip(state)

end)
Section3:Button("安全自杀", function()
    lp.Character.Head:Destroy()
end)
Section3:Button("解锁最大焦距", function()
    lp.CameraMaxZoomDistance = 9e9
end)
local invisnum = 0
Section3:Toggle("隐身", 'Toggleflag', false, function(state)
    if state then
        TurnInvisible()
    else
        TurnVisible()
    end
end)
Section6:Dropdown("传送", 'Dropdown',
    {'出生点', '木材反斗城', '土地商店', '桥', '码头', '椰子岛', '洞穴', '鲨鱼斧合成',
     '火山', '沼泽', '家具店', '盒子车行', '连锁逻辑店', '鲍勃的小店', '画廊', '雪山',
     '灵视神殿', '怪人', '小绿盒', '滑雪小屋', '黄金木洞穴', '小鸟斧头', "灯塔", '回家'},
    function(b)
        if b == '木材反斗城' then
            carTeleport(CFrame.new(270, 4, 60));
        elseif b == '出生点' then
            carTeleport(CFrame.new(174, 10.5, 66));
        elseif b == '土地商店' then
            carTeleport(CFrame.new(270, 3, -98));
        elseif b == '桥' then
            carTeleport(CFrame.new(112, 37, -892));
        elseif b == '码头' then
            carTeleport(CFrame.new(1136, 0, -206));
        elseif b == '椰子岛' then
            carTeleport(CFrame.new(2614, -4, -34));
        elseif b == '洞穴' then
            carTeleport(CFrame.new(3590, -177, 415));
        elseif b == '火山' then
            carTeleport(CFrame.new(-1588, 623, 1069));
        elseif b == '沼泽' then
            carTeleport(CFrame.new(-1216, 131, -822));
        elseif b == '家具店' then
            carTeleport(CFrame.new(486, 3, -1722));
        elseif b == '盒子车行' then
            carTeleport(CFrame.new(509, 3, -1458));
        elseif b == '雪山' then
            carTeleport(CFrame.new(1487, 415, 3259));
        elseif b == '连锁逻辑店' then
            carTeleport(CFrame.new(4615, 7, -794));
        elseif b == '鲍勃的小店' then
            carTeleport(CFrame.new(292, 8, -2544));
        elseif b == '画廊' then
            carTeleport(CFrame.new(5217, -166, 721));
        elseif b == '灵视神殿' then
            carTeleport(CFrame.new(-1608, 195, 928));
        elseif b == '怪人' then
            carTeleport(CFrame.new(1071, 16, 1141));
        elseif b == '小绿盒' then
            carTeleport(CFrame.new(-1667, 349, 1474));
        elseif b == '滑雪小屋' then
            carTeleport(CFrame.new(1244, 59, 2290));
        elseif b == '黄金木洞穴' then
            carTeleport(CFrame.new(-1080, -5, -942));
        elseif b == '鲨鱼斧合成' then
            carTeleport(CFrame.new(330.259735, 45.7998505, 1943.30823, 0.972010553, -8.07546598e-08, 0.234937176,
                7.63610259e-08, 1, 2.77986647e-08, -0.234937176, -9.08055142e-09, 0.972010553))
        elseif b == '小鸟斧头' then
            carTeleport(CFrame.new(4813.1, 33.5, -978.8));
        elseif b == '灯塔' then
            carTeleport(CFrame.new(1464.8, 356.3, 3257.2));
        else
            if b == '回家' then
                for i, v in pairs(game.Workspace.Properties:GetChildren()) do
                    if v.Owner.Value == game.Players.LocalPlayer then
                        carTeleport(v.OriginSquare.CFrame + Vector3.new(0, 10, 0))
                    end
                end
            end
        end

    end)
Sectiontptree:Dropdown("传送到树", 'Dropdown',
    {"普通树", "沼泽黄金", "樱花", "蓝木", "冰木", "火山木", "橡木", "巧克力木", "白桦木",
     "黄金木", "雪地松", "僵尸木", "大巧克力树", "椰子树", "幻影木"}, function(b)
        if b == '普通树' then
            bai.tptree = "Generic"
        elseif b == '沼泽黄金' then
            bai.tptree = "GoldSwampy"
        elseif b == '樱花' then
            bai.tptree = "Cherry"
        elseif b == '蓝木' then
            bai.tptree = "CaveCrawler"
        elseif b == '冰木' then
            bai.tptree = "Frost"
        elseif b == '火山木' then
            bai.tptree = "Volcano"
        elseif b == '橡木' then
            bai.tptree = "Oak"
        elseif b == '巧克力木' then
            bai.tptree = "Walnut"
        elseif b == '白桦木' then
            bai.tptree = "Birch"
        elseif b == '黄金木' then
            bai.tptree = "SnowGlow"
        elseif b == '雪地松' then
            bai.tptree = "Pine"
        elseif b == '僵尸木' then
            bai.tptree = "GreenSwampy"
        elseif b == '大巧克力树' then
            bai.tptree = "Koa"
        elseif b == '椰子树' then
            bai.tptree = "Palm"
        elseif b == '幻影木' then
            bai.tptree = "LoneCave"
        end
        for i, v in pairs(game.Workspace:GetChildren()) do
            if v.Name == "TreeRegion" then
                for j, k in ipairs(v:GetChildren()) do
                    if k:FindFirstChild("TreeClass") and k.TreeClass.Value == bai.tptree then
                        game.Players.LocalPlayer.Character:MoveTo(k.WoodSection.Position)
                        break
                    end
                end
            end
        end
    end)
Section4:Dropdown("传送", 'Dropdown',
    {'出生点', '木材反斗城', '土地商店', '桥', '码头', '椰子岛', '洞穴', '鲨鱼斧合成',
     '火山', '沼泽', '家具店', '盒子车行', '连锁逻辑店', '鲍勃的小店', '画廊', '雪山',
     '灵视神殿', '怪人', '小绿盒', '滑雪小屋', '黄金木洞穴', '小鸟斧头', "灯塔", '回家'},
    function(b)
        if b == '木材反斗城' then
            tp(CFrame.new(270, 4, 60));
        elseif b == '出生点' then
            tp(CFrame.new(174, 10.5, 66));
        elseif b == '土地商店' then
            tp(CFrame.new(270, 3, -98));
        elseif b == '桥' then
            tp(CFrame.new(112, 37, -892));
        elseif b == '码头' then
            tp(CFrame.new(1136, 0, -206));
        elseif b == '椰子岛' then
            tp(CFrame.new(2614, -4, -34));
        elseif b == '洞穴' then
            tp(CFrame.new(3590, -177, 415));
        elseif b == '火山' then
            tp(CFrame.new(-1588, 623, 1069));
        elseif b == '沼泽' then
            tp(CFrame.new(-1216, 131, -822));
        elseif b == '家具店' then
            tp(CFrame.new(486, 3, -1722));
        elseif b == '盒子车行' then
            tp(CFrame.new(509, 3, -1458));
        elseif b == '雪山' then
            tp(CFrame.new(1487, 415, 3259));
        elseif b == '连锁逻辑店' then
            tp(CFrame.new(4615, 7, -794));
        elseif b == '鲍勃的小店' then
            tp(CFrame.new(292, 8, -2544));
        elseif b == '画廊' then
            tp(CFrame.new(5217, -166, 721));
        elseif b == '灵视神殿' then
            tp(CFrame.new(-1608, 195, 928));
        elseif b == '怪人' then
            tp(CFrame.new(1071, 16, 1141));
        elseif b == '小绿盒' then
            tp(CFrame.new(-1667, 349, 1474));
        elseif b == '滑雪小屋' then
            tp(CFrame.new(1244, 59, 2290));
        elseif b == '黄金木洞穴' then
            tp(CFrame.new(-1080, -5, -942));
        elseif b == '鲨鱼斧合成' then
            tp(CFrame.new(330.259735, 45.7998505, 1943.30823, 0.972010553, -8.07546598e-08, 0.234937176, 7.63610259e-08,
                1, 2.77986647e-08, -0.234937176, -9.08055142e-09, 0.972010553))
        elseif b == '小鸟斧头' then
            tp(CFrame.new(4813.1, 33.5, -978.8));
        elseif b == '灯塔' then
            tp(CFrame.new(1464.8, 356.3, 3257.2));
        else
            if b == '回家' then
                for i, v in pairs(game.Workspace.Properties:GetChildren()) do
                    if v.Owner.Value == game.Players.LocalPlayer then
                        tp(v.OriginSquare.CFrame + Vector3.new(0, 10, 0))
                    end
                end
            end
        end

    end)

Sectionhuanjin:Toggle("终日白天", 'Toggleflag', false, function(state)
    if state then
        bai.awaysday = true
        while task.wait() do
            if bai.awaysday == true then
                game:GetService('Lighting').TimeOfDay = ('12:00:00');
            end
        end
    else
        bai.awaysday = false
    end

end)
Sectionhuanjin:Toggle("终日黑天", 'Toggleflag', false, function(state)
    if state then
        bai.awaysdnight = true
        while task.wait() do
            if bai.awaysdnight == true then
                game:GetService('Lighting').TimeOfDay = ('2:00:00');
            end
        end
    else
        bai.awaysdnight = false
    end
end)
game:GetService("Lighting").GlobalShadows = true
Sectionhuanjin:Toggle("消除阴影", 'Toggleflag', false, function(state)

    if state then
        game:GetService("Lighting").GlobalShadows = false
    else
        game:GetService("Lighting").GlobalShadows = true
    end

end)
Sectionhuanjin:Button("圣诞节地图", function()
    for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "Ground" then
            v.BrickColor = BrickColor.new("White")
            v.Material = "Sand"
        end
        if v.Name == "Slate" then
            v.BrickColor = BrickColor.new("White")
        end
        if v.Name == "LeafPart" then
            v.BrickColor = BrickColor.new("White")
            v.Material = "Sand"
        end
        if v.Name == "Sand" then
            v.BrickColor = BrickColor.new("White")
        end
    end

end)
Sectionhuanjin:Button("秋天地图", function()
    for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "Ground" then
            v.BrickColor = BrickColor.new("Burnt Sienna")
            v.Material = "Sand"
        end
        if v.Name == "Slate" then
            v.BrickColor = BrickColor.new("Burnt Sienna")
        end
        if v.Name == "LeafPart" then
            v.BrickColor = BrickColor.new("Burnt Sienna")
            v.Material = "Sand"
        end
    end

end)
Sectionhuanjin:Button("万圣节地图", function()
    loadstring(game:HttpGet 'https://raw.githubusercontent.com/silentben8x/Silent/main/Halloween')()

end)
Sectionhuanjin:Button("糖果地图", function()
    loadstring(
        game:HttpGet 'https://raw.githubusercontent.com/silentben9x/silentwinningmain/main/Willy%20Wonker%20Map%20Theme')()

end)
Sectionhuanjin:Button("删除灵视神殿的石头", function()
    workspace.Region_Mountainside.BoulderRegen.Boulder:Destroy()
    workspace.Region_Mountainside.Door.Door:Destroy()

end)
Sectionhuanjin:Toggle("删除岩浆", 'Toggleflag', false, function(state)
    for i, v in pairs(game.Workspace.Region_Volcano:GetDescendants()) do
        if v.Name == "TouchInterest" then
            v:Destroy()
        elseif v.Name == "Lava" then
            for n, k in pairs(v:GetChildren()) do
                if k:IsA("Part") then
                    if state == true then
                        k.Transparency = 1
                    else
                        k.Transparency = 0
                    end
                end
            end
        end
    end
end)
Sectionhuanjin:Toggle("删除水", 'Toggleflag', false, function(state)
    for _, v in pairs(game.Workspace.Water:GetChildren()) do
        if v.Name == "Water" then
            if state then
                v.Transparency = 1;
            else
                v.Transparency = 0;
            end
        end
    end
end)

Sectionhuanjin:Toggle("去除雾", 'Toggleflag', false, function(state)
    if state then
        bai.nofog = true
        while task.wait() do
            if bai.nofog == true then
                game:GetService('Lighting').FogEnd = 1000000;
            end
        end
    else
        bai.nofog = false
    end
end)
Sectionhuanjin:Toggle("水上行走", 'Toggleflag', false, function(state)
    for i, v in next, game.workspace.Water:children() do
        if v.ClassName == 'Part' then
            bai.waterwalk, v.CanCollide = state, state;
        end
    end
    for i, v in next, game:GetService('Workspace').Bridge.VerticalLiftBridge.WaterModel:children() do
        if v:IsA('BasePart') then
            v.CanCollide = state;
        end
    end

end)
local Players = Sectionzhengli:Dropdown("选择玩家", 'Dropdown', bai.dropdown, function(v)
    bai.zlwjia = v
end)

Sectionzhengli:Button("重置玩家名称", function()
    shuaxinlb(true)
    Players:SetOptions(bai.dropdown)
end)

Sectionzhengli:Textbox("x轴", 'TextBoxfalg', "输入数字", function(txt)
    bai.zix = txt
end)
Sectionzhengli:Textbox("z轴", 'TextBoxfalg', "输入数字", function(txt)
    bai.zlz = txt
end)
Sectionzhengli:Button("获取整理工具", function()
    Identify = Instance.new("Tool")
    Identify.RequiresHandle = false;
    Identify.Name = "点击要整理的物品"
    Identify.Activated:connect(function()
        local Player = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 4, 0)
        local Items = {}
        if mouse.Target.Parent:FindFirstChild("PurchasedBoxItemName") then
            bai.dxmz = (mouse.Target.Parent.PurchasedBoxItemName.Value)

            function ItemStacker(ItemType, XAxis, ZAxis)
                for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
                    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == bai.zlwjia then
                        if v:FindFirstChild("PurchasedBoxItemName") and tostring(v.PurchasedBoxItemName.Value) ==
                            ItemType then
                            table.insert(Items, v)

                        end
                    end
                end
                local Count = 0
                for Y = 1, math.ceil(#Items / (XAxis * ZAxis)) do
                    for X = 1, XAxis do
                        for Z = 1, ZAxis do
                            Count = Count + 1
                            tp(Items[Count].Main.CFrame + Vector3.new(3, 0, 3))
                            for e = 1, 40 do

                                game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(
                                    Items[Count])
                                Items[Count].Main.CFrame = CFrame.new(X * Items[1].Main.Size.X,
                                    Y * Items[1].Main.Size.Y, Z * Items[1].Main.Size.Z) + Player
                                game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(
                                    Items[Count])
                                game:GetService('RunService').Stepped:wait();
                            end

                        end
                    end
                end
            end

            ItemStacker(bai.dxmz, bai.zlz, bai.zix)
            notify('', '' .. mouse.Target.Parent.PurchasedBoxItemName.Value, 5)

        elseif mouse.Target.Parent:FindFirstChild("ItemName") then

            bai.dxmz = (mouse.Target.Parent.ItemName.Value)
            local Player = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 5.5, 0)

            function ItemStackerft(ItemType, XAxis, ZAxis)
                for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do

                    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == bai.zlwjia then
                        if (v:FindFirstChild 'DraggableItem' and tostring(v.DraggableItem.Parent) == ItemType) then
                            table.insert(Items, v)
                        end
                    end
                end
                local Count = 0
                for Y = 1, math.ceil(#Items / (XAxis * ZAxis)) do
                    for X = 1, XAxis do
                        for Z = 1, ZAxis do
                            Count = Count + 1
                            tp(Items[Count].Main.CFrame + Vector3.new(3, 0, 3))

                            for e = 1, 40 do

                                game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(
                                    Items[Count])
                                Items[Count].Main.CFrame = CFrame.new(X * Items[1].Main.Size.X,
                                    Y * Items[1].Main.Size.Y, Z * Items[1].Main.Size.Z) + Player
                                game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(
                                    Items[Count])
                                game:GetService('RunService').Stepped:wait();
                            end

                        end
                    end
                end
            end
            ItemStackerft(bai.dxmz, bai.zlz, bai.zix)
            notify('', '' .. mouse.Target.Parent.ItemName.Value, 5)
        end
    end)
    Identify.Parent = game.Players.LocalPlayer.Backpack
end)
local Players = Sectionchuanson:Dropdown("选择玩家", 'Dropdown', bai.dropdown, function(v)
    bai.cswjia = v
end)

Sectionchuanson:Button("重置玩家名称", function()
    shuaxinlb(true)
    Players:SetOptions(bai.dropdown)
end)

Sectionchuanson:Button("设置传送点", function()
    pcall(function()
        game.Workspace.baiBasedropCord:Destroy();
        bai.itemset = nil
    end)
    local baiBasedropCord = Instance.new("Part", game.Workspace)
    baiBasedropCord.CanCollide = false
    baiBasedropCord.Anchored = true
    baiBasedropCord.Shape = Enum.PartType.Ball
    baiBasedropCord.Color = Color3.fromRGB(0, 217, 255);
    baiBasedropCord.Transparency = 0
    baiBasedropCord.Size = Vector3.new(2, 2, 2)
    baiBasedropCord.CFrame = lp.Character.HumanoidRootPart.CFrame
    baiBasedropCord.Material = Enum.Material.Marble
    baiBasedropCord.Name = "baiBasedropCord"

    bai.itemset = lp.Character.HumanoidRootPart.CFrame
end)

Sectionchuanson:Button("删除传送点", function()
    pcall(function()
        game.Workspace.baiBasedropCord:Destroy();
        bai.itemset = nil
    end)

end)
Sectionchuanson:Button("获得工具", function()
    if bai.itemset == nil then
        return notify(" 忍 ", "请你放传送点", 4)
    end
    local Tool = Instance.new("Tool", game:GetService("Players").LocalPlayer.Backpack)
    Tool.Name = "点击你想要传送的物品"
    Tool.RequiresHandle = false;

    Tool.Activated:connect(function()

        bai.cskais = true
        if mouse.Target.Parent:FindFirstChild("PurchasedBoxItemName") then

            bai.dxmz = (mouse.Target.Parent.PurchasedBoxItemName.Value)

        elseif mouse.Target.Parent:FindFirstChild("ItemName") then
            bai.dxmz = (mouse.Target.Parent.ItemName.Value)

        end

        for _, v in next, workspace.PlayerModels:children() do
            local check = v:FindFirstChild('ItemName') or v:FindFirstChild('PurchasedBoxItemName');
            local check2 = v:FindFirstChild 'Type'
            local main
            if bai.cskais == true then

                if check and check.Value == bai.dxmz and v:FindFirstChild('Owner') and tostring(v.Owner.Value) ==
                    bai.cswjia or check2 and check2.Value == bai.dxmz and v:FindFirstChild('Owner') and
                    tostring(v.Owner.Value) == bai.cswjia then
                    local main = v:FindFirstChild 'Main';
                    if (lp.Character.HumanoidRootPart.CFrame.p - main.CFrame.p).magnitude > 5 then
                        tp(v.Main.CFrame + Vector3.new(4, 0, 4))
                    end

                    for e = 1, 20 do

                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                        v.Main.CFrame = bai.itemset
                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                        game:GetService('RunService').Stepped:wait();
                    end

                end
            end
        end

    end)
    Tool.Parent = game.Players.LocalPlayer.Backpack
end)

Sectionchuanson:Toggle("点击选择传送物品", 'Toggleflag', false, function(state)
    if state then
        ClickToSelectClick = Mouse.Button1Up:Connect(function()
            Clicked = Mouse.Target
            if Clicked.Parent:FindFirstChild("Owner") and tostring(Clicked.Parent.Owner.Value) == bai.cswjia then
                if Clicked.Parent:FindFirstAncestor("PlayerModels") then
                    if not Clicked.Parent:FindFirstChild("SelectionBox") then
                        local SB = Instance.new("SelectionBox", Clicked.Parent)
                        SB.Adornee = Clicked.Parent
                    else
                        Clicked.Parent:FindFirstChild("SelectionBox"):Destroy()
                    end
                end
            end
        end)
    else
        ClickToSelectClick:Disconnect()
    end

end)

Sectionchuanson:Button("取消选择", function()
    for i, v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
        if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == bai.cswjia then
            if v:FindFirstChild("SelectionBox") then
                v.SelectionBox:Destroy()
            end
        end
    end
end)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(4, 0, 255)
Frame.BackgroundTransparency = 0.8
Frame.BorderColor3 = Color3.new(0.09, 0.137, 0.776)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0, 0, 0, 0)
Frame.Size = UDim2.new(0, 0, 0, 0)
function is_in_frame(screenpos, frame)
    local xPos = frame.AbsolutePosition.X
    local yPos = frame.AbsolutePosition.Y

    local xSize = frame.AbsoluteSize.X
    local ySize = frame.AbsoluteSize.Y

    local check1 = screenpos.X >= xPos and screenpos.X <= xPos + xSize
    local check2 = screenpos.X <= xPos and screenpos.X >= xPos + xSize

    local check3 = screenpos.Y >= yPos and screenpos.Y <= yPos + ySize
    local check4 = screenpos.Y <= yPos and screenpos.Y >= yPos + ySize

    local finale = (check1 and check3) or (check2 and check3) or (check1 and check4) or (check2 and check4)

    return finale
end

Sectionchuanson:Toggle("框选物品", 'Toggleflag', false, function(state)
    if state then
        bai.kuangxiu = game:GetService("UserInputService").InputBegan:Connect(function(cilk)

            if cilk.UserInputType == Enum.UserInputType.MouseButton1 then
                Frame.Visible = true
                Frame.Position = UDim2.new(0, Mouse.X, 0, Mouse.Y)

                while game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                    game:GetService("RunService").RenderStepped:wait()
                    Frame.Size = UDim2.new(0, Mouse.X, 0, Mouse.Y) - Frame.Position

                    for i, v in pairs(workspace.PlayerModels:GetChildren()) do
                        if bai.xzemuban == true and v:FindFirstChild("Owner") and tostring(v.Owner.Value) == bai.cswjia and
                            v:FindFirstChild("WoodSection") then
                            local screenpos, visible = game.Workspace.CurrentCamera:WorldToScreenPoint(v.WoodSection
                                                                                                           .CFrame.p)
                            if visible then
                                if is_in_frame(screenpos, Frame) then
                                    if not v:FindFirstChild("SelectionBox") then
                                        local SB = Instance.new("SelectionBox", v)
                                        SB.Adornee = v
                                    end
                                end
                            end
                        end
                        if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == bai.cswjia and
                            v:FindFirstChild("Main") then
                            local screenpos, visible = game.Workspace.CurrentCamera:WorldToScreenPoint(v.Main.CFrame.p)
                            if visible then
                                if is_in_frame(screenpos, Frame) then
                                    if not v:FindFirstChild("SelectionBox") then
                                        local SB = Instance.new("SelectionBox", v)
                                        SB.Adornee = v
                                    end
                                end
                            end
                        end
                    end
                end
            end
            Frame.Size = UDim2.new(0, 1, 0, 1)
            Frame.Visible = false

        end)
    else
        Frame.Visible = false
        bai.kuangxiu:Disconnect()
        bai.kuangxiu = nil
    end

end)
Sectionchuanson:Toggle("带木板", 'Toggleflag', false, function(state)

    bai.xzemuban = state

end)
Sectionchuanson:Button("开始传送选择的物品", function()
    if bai.itemset == nil then
        return notify(" 忍 ", "请你放传送点", 4)
    end
    bai.cskais = true
    OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for i, v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
        if bai.cskais == false then
            break
        end
        if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == bai.cswjia then
            if v:FindFirstChild("SelectionBox") then
                if v:FindFirstChild("Main") then
                    if (lp.Character.HumanoidRootPart.CFrame.p - v.Main.CFrame.p).magnitude > 5 then
                        tp(v.Main.CFrame + Vector3.new(4, 0, 4))
                    end
                    for e = 1, 30 do
                        if bai.cskais == false then
                            break
                        end
                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                        v:PivotTo(bai.itemset)
                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                        game:GetService('RunService').Stepped:wait();
                    end
                    v.SelectionBox:Destroy()
                    game:GetService('RunService').Stepped:wait();
                elseif v:FindFirstChild("WoodSection") then
                    tp(v.WoodSection.CFrame + Vector3.new(4, 0, 4))
                    for e = 1, 70 do
                        if bai.cskais == false then
                            break
                        end
                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                        v.WoodSection.CFrame = bai.itemset * CFrame.Angles(math.rad(90), 0, 90)
                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                        game:GetService('RunService').Stepped:wait();
                    end
                    v.SelectionBox:Destroy()
                    game:GetService('RunService').Stepped:wait();
                end

            end

        end
    end
    tp(OldPos)
end)
Sectionchuanson:Button("停止", function()
    bai.cskais = false
end)
Sectionhuanjin:Toggle("放下桥", 'Toggleflag', false, function(state)
    if state then
        lowerBridge("Lower")
    else
        lowerBridge("Higher")
    end
end)
Sectionhuanjin:Button("删除火山石头", function()
    for i, v in pairs(workspace["Region_Volcano"]:children()) do
        if v.Name == "PartSpawner" then
            v.Parent = game.Lighting
        end
    end
end)
Sectionhuanjin:Button("删除雪山石头", function()
    for i, v in pairs(workspace["Region_Snow"]:children()) do
        if v.Name == "PartSpawner" then
            v.Parent = game.Lighting
        end
    end
end)
Sectionhuanjin:Button("启动所有压力板", function()
    burnAllShopItems()
end)
Sectionhuanjin:Button("船离开时间", function()

    if game.Workspace.Ferry.TimeToDeparture.Value == 0 then
        notify(" 忍 ", "船已离开", 4)
    else
        notify(" 忍 ", "距离船离开时间有" .. game.Workspace.Ferry.TimeToDeparture.Value .. "秒", 4)
    end
end)
Sectionhuanjin:Button("桥上升时间", function()

    if game.Workspace.Bridge.DownTime.Value < 0 then
        notify(" 忍 ", "桥已上升", 4)
    else
        notify(" 忍 ", "距离桥上升的时间有" .. game.Workspace.Bridge.DownTime.Value .. "秒", 4)
    end
end)
Sectionhuanjin:Button("查看游戏时间", function()
    notify(" 忍 ", "游戏时间为" .. tostring(game.Lighting.TimeOfDay):sub(1, -2):sub(1, -2):sub(1, -2), 4)
end)
Sectionhuanjin:Textbox("自定义亮度", 'TextBoxfalg', "输入亮度", function(s)
    game:GetService("Lighting").Brightness = s / 10
end)
Sectionhuanjin:Button("提高画质", function()
    -- Roblox Graphics Enhancher
    local light = game.Lighting
    for i, v in pairs(light:GetChildren()) do
        v:Destroy()
    end

    local ter = workspace.Terrain
    local color = Instance.new("ColorCorrectionEffect")
    local bloom = Instance.new("BloomEffect")
    local sun = Instance.new("SunRaysEffect")
    local blur = Instance.new("BlurEffect")

    color.Parent = light
    bloom.Parent = light
    sun.Parent = light
    blur.Parent = light

    -- enable or disable shit

    local config = {

        Terrain = true,
        ColorCorrection = true,
        Sun = true,
        Lighting = true,
        BloomEffect = true

    }

    -- settings {

    color.Enabled = false
    color.Contrast = 0.15
    color.Brightness = 0.1
    color.Saturation = 0.25
    color.TintColor = Color3.fromRGB(255, 222, 211)

    bloom.Enabled = false
    bloom.Intensity = 0.1

    sun.Enabled = false
    sun.Intensity = 0.2
    sun.Spread = 1

    bloom.Enabled = false
    bloom.Intensity = 0.05
    bloom.Size = 32
    bloom.Threshold = 1

    blur.Enabled = false
    blur.Size = 6

    -- settings }

    if config.ColorCorrection then
        color.Enabled = true
    end

    if config.Sun then
        sun.Enabled = true
    end

    if config.Terrain then
        -- settings {
        ter.WaterColor = Color3.fromRGB(10, 10, 24)
        ter.WaterWaveSize = 0.1
        ter.WaterWaveSpeed = 22
        ter.WaterTransparency = 0.9
        ter.WaterReflectance = 0.05
        -- settings }
    end

    if config.Lighting then
        -- settings {
        light.Ambient = Color3.fromRGB(0, 0, 0)
        light.Brightness = 4
        light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
        light.ExposureCompensation = 0
        light.FogColor = Color3.fromRGB(132, 132, 132)
        light.GlobalShadows = true
        light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
        light.Outlines = false
        -- settings }
    end

    Sectionhuanjin:Button("高清地图", function()
        _G.BlurSize = 3

        _G.ColorCorrectionBrightness = 0.03
        _G.ColorCorrectionContrast = 0.3
        _G.ColorCorrectionSaturation = 0.01
        _G.ColorCorrectionTintColor = Color3.fromRGB(244, 244, 244)

        _G.SunRaysIntensity = 0.2
        _G.SunRaysSpread = 1

        -- Lighting settings:
        _G.GlobalShadows = true
        _G.Brightness = 0.9
        _G.GeographicLatitude = 350
        _G.TimeOfDay = 17
        _G.ExposureCompensation = 0.03

        spawn(function()
            _, i = pcall(function()
                Lighting = game:GetService("Lighting")
                Blur = Instance.new("BlurEffect", Lighting)
                Color = Instance.new("ColorCorrectionEffect", Lighting)
                Sun = Instance.new("SunRaysEffect", Lighting)
                -- Setting the mood:
                Blur.Enabled = not false;
                Blur.Size = _G.BlurSize
                Color.Enabled = not false;
                Color.Brightness = _G.ColorCorrectionBrightness;
                Color.Contrast = _G.ColorCorrectionContrast;
                Color.Saturation = _G.ColorCorrectionSaturation;
                Color.TintColor = _G.ColorCorrectionTintColor
                Sun.Enabled = not false;
                Sun.Intensity = _G.SunRaysIntensity;
                Sun.Spread = _G.SunRaysSpread
                print("Finished setting mood")
                -- Setting Lighting:
                function loadLighting()
                    Lighting.GlobalShadows = _G.GlobalShadows;
                    Lighting.Brightness = _G.Brightness
                    Lighting.GeographicLatitude = _G.GeographicLatitude
                    Lighting.TimeOfDay = _G.TimeOfDay
                    Lighting.ExposureCompensation = _G.ExposureCompensation
                end
                loadLighting()
            end)
            if i and not _ then
                print("ERROR: " .. i)
            else
                print("Loaded HD Graphics")
            end
        end)
    end)
end)
Sectionhuanjin:Button("关/开家具店的门", function()

    pcall(function()
        game:GetService('ReplicatedStorage').Interaction.RemoteProxy:FireServer(
            workspace.Stores.FurnitureStore.LDoor.ButtonRemote_Toggle);
        wait(0.5)
        game:GetService('ReplicatedStorage').Interaction.RemoteProxy:FireServer(
            workspace.Stores.FurnitureStore.RDoor.ButtonRemote_Toggle);
    end);

end)
Sectionhuanjin:Button("删除迷宫门", function()
    spawn(function()
        pcall(function()
            local door7 = game:GetService('Workspace')['Region_MazeCave'].Blockade.Blockade7
            door7:Destroy()
        end)
    end)
    spawn(function()
        pcall(function()
            local door6 = game:GetService('Workspace')['Region_MazeCave'].Blockade.Blockade6
            door6:Destroy()
        end)
    end)
    spawn(function()
        pcall(function()
            local door5 = game:GetService('Workspace')['Region_MazeCave'].Blockade.Blockade5
            door5:Destroy()
        end)
    end)
    spawn(function()
        pcall(function()
            local door4 = game:GetService('Workspace')['Region_MazeCave'].Blockade.Blockade4
            door4:Destroy()
        end)
    end)
    spawn(function()
        pcall(function()
            local door3 = game:GetService('Workspace')['Region_MazeCave'].Blockade.Blockade3
            door3:Destroy()
        end)
    end)
    spawn(function()
        pcall(function()
            local door2 = game:GetService('Workspace')['Region_MazeCave'].Blockade.Blockade2
            door2:Destroy()
        end)
    end)

    spawn(function()
        pcall(function()
            local door1 = game:GetService('Workspace')['Region_MazeCave'].Blockade.Blockade1

            door1:Destroy()

        end)
    end)

    spawn(function()
        pcall(function()
            local door = game:GetService('Workspace')['Region_MazeCave'].Blockade.Blockade0

            door:Destroy()

        end)
    end)
end)
Sectionhuanjin:Button("打开鲨鱼斧合成地方的门", function()

    pcall(function()
        game:GetService('ReplicatedStorage').Interaction.RemoteProxy:FireServer(
            workspace.Region_Snow.Den.Hatch.ButtonRemote_Hinge);
    end);

end)
Sectionhuanjin:Button("删除鲨鱼斧合成地方的门", function()

    local door = game:GetService('Workspace')['Region_Snow'].Den.Hatch;
    door:Destroy()

end)
Sectionhuanjin:Button("关/开连锁逻辑店的门", function()

    pcall(function()
        game:GetService('ReplicatedStorage').Interaction.RemoteProxy:FireServer(
            workspace.Stores.LogicStore.LDoor.ButtonRemote_Toggle);
        wait(0.5)
        game:GetService('ReplicatedStorage').Interaction.RemoteProxy:FireServer(
            workspace.Stores.LogicStore.RDoor.ButtonRemote_Toggle);
    end);
end)

Sectionhuanjin:Button("关/开盒子车行的门", function()

    pcall(function()
        game:GetService('ReplicatedStorage').Interaction.RemoteProxy:FireServer(
            workspace.Stores.CarStore.LDoor.ButtonRemote_Toggle);
        wait(0.5)
        game:GetService('ReplicatedStorage').Interaction.RemoteProxy:FireServer(
            workspace.Stores.CarStore.RDoor.ButtonRemote_Toggle);
    end);
end)
Sectionhuanjin:Button("带来沼泽桥", function()
    local oldPos = lp.Character.HumanoidRootPart.CFrame;
    local slab = game:GetService('Workspace')['Region_Mountainside'].SlabRegen:FindFirstChild('Slab')
    if slab and not slab.PrimaryPart then
        slab.PrimaryPart = slab.PushMe;
    end
    tp(CFrame.new(slab.PrimaryPart.CFrame.p));
    wait(.2)
    spawn(function()
        for i = 1, 100 do
            slab:SetPrimaryPartCFrame(CFrame.new(oldPos.p));
            game:GetService('ReplicatedStorage').Interaction.ClientIsDragging:FireServer(slab);
            task.wait()
        end
    end)
    wait(1)
    tp(CFrame.new(oldPos.p))

end)

Sectionqiche:Textbox("输入飞行速度", 'TextBoxfalg', "输入数字", function(s)
    while (true) do
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity"):Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyGyro"):Destroy()
        wait()
        local BV = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
        local BG = Instance.new("BodyGyro", game.Players.LocalPlayer.Character.HumanoidRootPart)
        BG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        BG.D = 5000
        BG.P = 50000
        BG.CFrame = game.Workspace.CurrentCamera.CFrame
        BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * s
    end
end)
Sectionqiche:Toggle("开始飞行", 'Toggleflag', false, function(state)
    if state then
        local BV = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
        local BG = Instance.new("BodyGyro", game.Players.LocalPlayer.Character.HumanoidRootPart)
        BG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        BG.D = 5000
        BG.P = 50000
        BG.CFrame = game.Workspace.CurrentCamera.CFrame
        BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity"):Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyGyro"):Destroy()
    end
end)
Sectionqiche:Button("飞行食用说明", function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "说明",
        Text = "1，飞行速度要超过200不超过就会往下掉2，要先开启飞行再输入速度，然后重新开启飞行",
        Button1 = "知道了",
        Duration = 30
    })
end)
Sectionqiche:Toggle("汽车穿墙", 'Toggleflag', false, function(state)
    if state then

        vnoclipParts = {}
        local seat = lp.Character:FindFirstChildOfClass('Humanoid').SeatPart
        local vehicleModel = seat.Parent
        repeat
            if vehicleModel.ClassName ~= "Model" then
                vehicleModel = vehicleModel.Parent
            end
        until vehicleModel.ClassName == "Model"
        wait(0.1)
        for i, v in pairs(vehicleModel:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide then
                table.insert(vnoclipParts, v)
                v.CanCollide = false
            end
        end
    else
        for i, v in pairs(vnoclipParts) do
            v.CanCollide = true
        end
        vnoclipParts = {}
    end

end)
Sectionqiche:Slider('汽车速度', 'Sliderflag', 3, 3, 600, false, function(s)
    local speed = s
    for i, v in pairs(game.Workspace.PlayerModels:GetChildren()) do
        if v:FindFirstChild("Seat") and v:FindFirstChild("Configuration") then
            v.Configuration.MaxSpeed.Value = speed
        end
    end
end)
Sectionfengche:Button("获得选择工具", function()
    Identify = Instance.new("Tool")
    Identify.RequiresHandle = false;
    Identify.Name = "点击汽车重生垫"
    Identify.Parent = game.Players.LocalPlayer.Backpack
    Identify.Activated:connect(function()
        if Mouse.Target and Mouse.Target.Parent.Type and Mouse.Target.Parent.Type.Value == "Vehicle Spot" then
            if not Mouse.Target.Parent:FindFirstChild("SelectionBox") then
                bai.car = Mouse.Target.Parent:FindFirstChild("ButtonRemote_SpawnButton", true)
                local SB = Instance.new("SelectionBox", Mouse.Target.Parent)
                SB.Adornee = Mouse.Target.Parent
            else
                Mouse.Target.Parent.SelectionBox:Destroy()
            end

            notify(" 忍 ", "汽车已选择", 4)
        end
    end)
end)
Sectionfengche:Button("开始", function()
    local C = nil
    local FP = nil
    bai.stopcar = false
    local a = game:GetService("Workspace").PlayerModels.ChildAdded:connect(function(v)
        v:WaitForChild("Owner")
        if v:WaitForChild("PaintParts") then
            FP = v.PaintParts.Part
        end
    end)
    if bai.car ~= nil then
        repeat
            task.wait(0.45)
            Press(bai.car)
            repeat
                wait()
            until FP ~= C
            C = FP
        until FP.BrickColor.Name == "Hot pink" or bai.stopcar == true
        a:Disconnect();
        a = nil
    else
        notify(" 忍 ", "你暂时没有选择汽车", 4)
    end
end)
Sectionfengche:Button("停止", function()
    bai.stopcar = true
    bai.car = nil
    for i, v in next, game:GetService("Workspace").PlayerModels:GetChildren() do

        if v:FindFirstChild("SelectionBox") and v:FindFirstChild("ButtonRemote_SpawnButton", true) then
            v.SelectionBox:Destroy()
        end
    end
end)
local dropdown = Sectionmogui:Dropdown("选择玩家名称", 'Dropdown', bai.dropdown, function(v)
    bai.playernamedied = v
end)

Sectionmogui:Button("刷新列表", function()
    shuaxinlb(true)
    dropdown:SetOptions(bai.dropdown)
end)

Sectionmogui:Button("传送到玩家旁边", function()
    local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tp_player = game:GetService("Players")[bai.playernamedied]
    if tp_player then
        for i = 1, 5 do
            wait()
            HumRoot.CFrame = tp_player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        end
    end
end)
Sectionmogui:Button("传送到玩家基地", function()
    local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
    for i, v in pairs(game.Workspace.Properties:GetChildren()) do
        if v.Owner.Value == game.Players[bai.playernamedied] then
            ME.CFrame = v.OriginSquare.CFrame + Vector3.new(0, 10, 0)
        end
    end
end)
Sectionmogui:Button("汽车传送到玩家旁边", function()
    local tp_player = game:GetService("Players")[bai.playernamedied]

    if tp_player then

        carTeleport(tp_player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0))

    end
end)
Sectionmogui:Button("汽车传送到玩家基地", function()

    for i, v in pairs(game.Workspace.Properties:GetChildren()) do
        if v.Owner.Value == game.Players[bai.playernamedied] then

            carTeleport(v.OriginSquare.CFrame + Vector3.new(0, 10, 0))
        end
    end
end)

Sectionmogui:Button("汽车踢人", function()
    local ME = game.Players.LocalPlayer.Character.HumanoidRootPart

    local function callback(Text)
        if Text == "确定" then
            for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
                if v.Name == "Model" and v:FindFirstChild("DriveSeat") and v:FindFirstChild("ItemName") then
                    if v.ItemName.Value == "UtilityTruck_Vehicle" then
                        if v.Owner.OwnerString.Value == tostring(game.Players.LocalPlayer) then
                            Car = v
                            Car.DriveSeat:Sit(game.Players.LocalPlayer.Character.Humanoid)
                            wait(0.5)
                            Car.PrimaryPart = v.Seat
                        end
                    end
                end
            end

            spawn(function()

                if not lp.Character.Humanoid.SeatPart then
                    print('错误,你需要坐在车上')
                    return
                end
                if not game.Players[bai.playernamedied].Character.Humanoid.SeatPart then
                    repeat
                        task.wait()
                        carTeleport(game.Players[bai.playernamedied].Character.HumanoidRootPart.CFrame +
                                        Vector3.new(0, -2, 0))
                    until game.Players[bai.playernamedied].Character.Humanoid.SeatPart
                end
                while task.wait() do
                    for i, v in pairs(game.Workspace.Properties:GetChildren()) do
                        if v.Owner.Value == game.Players.LocalPlayer then
                            carTeleport(v.OriginSquare.CFrame + Vector3.new(0, 10, 0))
                        end
                    end
                end

            end)
        elseif Text == "取消" then

        end
    end

    local NotificationBindable = Instance.new("BindableFunction")
    NotificationBindable.OnInvoke = callback
    --
    game.StarterGui:SetCore("SendNotification", {
        Title = " 忍 ",
        Text = "使用此功能前请自己拉黑他,然后再打开让他可以坐副驾驶的功能0",
        Icon = "",
        Duration = 5,
        Button1 = "确定",
        Button2 = "取消",
        Callback = NotificationBindable
    })

end)
Sectionmogui:Button("斧头杀人", function()
    local tool = getTool()
    if not tool then
        return notify(" 忍 ", "你需要斧头", 4)
    end
    local KillPlayer = bai.playernamedied

    local Player = gplr(KillPlayer)

    if Player[1] then
        Player = Player[1]
        local LocalPlayer = game.Players.LocalPlayer

        if LocalPlayer.Character.PrimaryPart ~= nil then
            local Character = LocalPlayer.Character
            local previous = LocalPlayer.Character.PrimaryPart.CFrame

            Character.Archivable = true
            local Clone = Character:Clone()
            LocalPlayer.Character = Clone
            wait(0.5)
            LocalPlayer.Character = Character
            wait(0.2)

            if LocalPlayer.Character and Player.Character and Player.Character.PrimaryPart ~= nil then
                if LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                    LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):Destroy()
                end

                local Humanoid = Instance.new("Humanoid")
                Humanoid.Parent = LocalPlayer.Character

                local Tool = nil

                if LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                elseif LocalPlayer.Backpack and LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
                    Tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                end

                if Tool ~= nil then
                    Tool.Parent = LocalPlayer.Backpack

                    Player.Character.HumanoidRootPart.Anchored = true

                    local Arm = game.Players.LocalPlayer.Character['Right Arm'].CFrame *
                                    CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
                    Tool.Grip = Arm:ToObjectSpace(Player.Character.PrimaryPart.CFrame):Inverse()

                    Tool.Parent = LocalPlayer.Character
                    Workspace.CurrentCamera.CameraSubject = Tool.Handle

                    repeat
                        wait()
                    until not Tool or Tool and (Tool.Parent == Workspace or Tool.Parent == Player.Character)
                    Player.Character.HumanoidRootPart.Anchored = false
                    wait(0.1)
                    Humanoid.Health = 0
                    LocalPlayer.Character = nil
                end
            end

            spawn(function()
                LocalPlayer.CharacterAdded:Wait()
                Player.Character.HumanoidRootPart.Anchored = false
                if Player.Character.Humanoid.Health <= 15 then
                    notify(" 忍 ", "成功", 4)
                    repeat
                        wait()
                    until LocalPlayer.Character.PrimaryPart ~= nil
                    wait(0.4)
                    LocalPlayer.Character:SetPrimaryPartCFrame(previous)
                end
            end)
        end
    end

end)

Sectionmogui:Button("斧头带人", function()
    Target = bai.playernamedied
    local tool = getTool()
    if not tool then
        return notify(" 忍 ", "你需要斧头", 4)
    end

    NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

    game.Players.LocalPlayer.Character.Humanoid.Name = 1
    local l = game.Players.LocalPlayer.Character["1"]:Clone()
    l.Parent = game.Players.LocalPlayer.Character
    l.Name = "Humanoid"

    wait(0.1)
    game.Players.LocalPlayer.Character["1"]:Destroy()
    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
    game.Players.LocalPlayer.Character.Animate.Disabled = true
    wait(1.1)
    game.Players.LocalPlayer.Character.Animate.Disabled = false
    game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
    for i, v in pairs(game:GetService 'Players'.LocalPlayer.Backpack:GetChildren()) do
        if v.Name:sub(1, 4) == "Tool" then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
        end
    end
    local function tp(player, player2)
        local char1, char2 = player.Character, player2.Character
        if char1 and char2 then
            char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
        end
    end
    local function getout(player, player2)
        local char1, char2 = player.Character, player2.Character
        if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
        end
    end
    tp(game.Players[Target], game.Players.LocalPlayer)
    wait(0.1)
    tp(game.Players[Target], game.Players.LocalPlayer)
    wait(0.3)
    tp(game.Players[Target], game.Players.LocalPlayer)
    wait(0.3)
    fori = 1, 60
    do
        getout(game.Players.LocalPlayer, game.Players[Target])

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
        task.wait(.1)
    end

end)
Sectionmogui:Button("岩浆杀人", function()
    local tool = getTool()
    if not tool then
        return notify(" 忍 ", "你需要斧头", 4)
    end

    Target = bai.playernamedied
    NOW = CFrame.new(-1685, 200, 1216)

    game.Players.LocalPlayer.Character.Humanoid.Name = 1
    local l = game.Players.LocalPlayer.Character["1"]:Clone()
    l.Parent = game.Players.LocalPlayer.Character
    l.Name = "Humanoid"

    wait(0.1)
    game.Players.LocalPlayer.Character["1"]:Destroy()
    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
    game.Players.LocalPlayer.Character.Animate.Disabled = true
    wait(1.1)
    game.Players.LocalPlayer.Character.Animate.Disabled = false
    game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
    for i, v in pairs(game:GetService 'Players'.LocalPlayer.Backpack:GetChildren()) do
        if v.Name:sub(1, 4) == "Tool" then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
        end
    end
    local function tp(player, player2)
        local char1, char2 = player.Character, player2.Character
        if char1 and char2 then
            char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
        end
    end
    local function getout(player, player2)
        local char1, char2 = player.Character, player2.Character
        if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
        end
    end
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
    tp(game.Players[Target], game.Players.LocalPlayer)
    wait(0.1)
    tp(game.Players[Target], game.Players.LocalPlayer)
    wait(0.3)
    tp(game.Players[Target], game.Players.LocalPlayer)
    fori = 1, 20
    do
        getout(game.Players.LocalPlayer, game.Players[Target])

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
    end

end)
Sectionmogui:Button("虚空搞人", function()
    local tool = getTool()
    if not tool then
        return notify(" 忍 ", "你需要斧头", 4)
    end
    Target = bai.playernamedied
    NOW = CFrame.new(9e9, 9e9, 9e9)

    game.Players.LocalPlayer.Character.Humanoid.Name = 1
    local l = game.Players.LocalPlayer.Character["1"]:Clone()
    l.Parent = game.Players.LocalPlayer.Character
    l.Name = "Humanoid"

    wait(0.1)
    game.Players.LocalPlayer.Character["1"]:Destroy()
    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
    game.Players.LocalPlayer.Character.Animate.Disabled = true
    wait(1.1)
    game.Players.LocalPlayer.Character.Animate.Disabled = false
    game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
    for i, v in pairs(game:GetService 'Players'.LocalPlayer.Backpack:GetChildren()) do
        if v.Name:sub(1, 4) == "Tool" then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
        end
    end
    local function tp(player, player2)
        local char1, char2 = player.Character, player2.Character
        if char1 and char2 then
            char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
        end
    end
    local function getout(player, player2)
        local char1, char2 = player.Character, player2.Character
        if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
        end
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
    wait(0.1)
    tp(game.Players[Target], game.Players.LocalPlayer)
    wait(0.1)
    tp(game.Players[Target], game.Players.LocalPlayer)
    wait(0.3)
    tp(game.Players[Target], game.Players.LocalPlayer)
    for i = 1, 20 do
        getout(game.Players.LocalPlayer, game.Players[Target])

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
    end

end)
Sectionmogui:Button("飞玩家", function()
    Target = bai.playernamedied
    local tool = getTool()
    if not tool then
        return notify(" 忍 ", "你需要斧头", 4)
    end

    NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local hrp = lp.Character.HumanoidRootPart
    game.Players.LocalPlayer.Character.Humanoid.Name = 1
    local l = game.Players.LocalPlayer.Character["1"]:Clone()
    l.Parent = game.Players.LocalPlayer.Character
    l.Name = "Humanoid"

    wait(0.1)
    game.Players.LocalPlayer.Character["1"]:Destroy()
    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
    game.Players.LocalPlayer.Character.Animate.Disabled = true
    wait(1.1)
    game.Players.LocalPlayer.Character.Animate.Disabled = false
    game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
    for i, v in pairs(game:GetService 'Players'.LocalPlayer.Backpack:GetChildren()) do
        if v.Name:sub(1, 4) == "Tool" then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
        end
    end
    local function tp(player, player2)
        local char1, char2 = player.Character, player2.Character
        if char1 and char2 then
            char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
        end
    end
    local function getout(player, player2)
        local char1, char2 = player.Character, player2.Character
        if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
        end
    end
    local mag = 1000
    hrp.Velocity = Vector3.new(mag, mag, mag)
    hrp.RotVelocity = Vector3.new(mag, mag, mag)
    wait(0.2)
    tp(game.Players[Target], game.Players.LocalPlayer)
    wait(0.1)

    tp(game.Players[Target], game.Players.LocalPlayer)
    wait(0.3)
    tp(game.Players[Target], game.Players.LocalPlayer)
    wait(0.3)

    for i = 1, 20 do
        getout(game.Players.LocalPlayer, game.Players[Target])

    end

end)
Sectionmogui:Toggle("查看玩家", 'Toggleflag', false, function(state)
    if state then
        game:GetService('Workspace').CurrentCamera.CameraSubject =
            game:GetService('Players'):FindFirstChild(bai.playernamedied).Character.Humanoid
    else
        game:GetService('Workspace').CurrentCamera.CameraSubject = lp.Character.Humanoid
    end
end)
Sectionmogui:Toggle("查看玩家基地", 'Toggleflag', false, function(state)
    local see = nil
    for i, v in pairs(game.Workspace.Properties:GetChildren()) do
        if v.Owner.Value == game.Players[bai.playernamedied] then

            see = v.OriginSquare
        end
    end

    if state then
        if see == nil then
            return notify(" 忍 ", "没有找到基地", 4)
        end
        game:GetService('Workspace').CurrentCamera.CameraSubject = see
    else
        game:GetService('Workspace').CurrentCamera.CameraSubject = lp.Character.Humanoid
    end
end)

Sectionautobuy:Textbox("购买数量", 'TextBoxfalg', "输入数字", function(txt)
    bai.autobuyamount = txt
end)
local l = {'按钮', '控制杆', '电线', '4/4x1木楔', '3/4x1木楔', '2/4x1木楔', '1/4X1木楔', '3/3x1木楔',
           '2/3x1木楔', '1/3x1木楔', '2/2x1木楔', '1/2x1木楔', '1/1x1木楔', '篱笆', '压力板',
           '1/3木楔', '锯木机01', '锯木机02L', '波纹墙角立柱', '传送带', '普通凳子',
           '倾斜传送带', '3/4木楔', '2/3木楔', '光滑的墙', '光滑墙角', '普通锯木厂', '4/4木楔',
           '光滑墙立柱', '篱笆角', '矮篱笆角', '矮波纹墙', '长桌', '矮篱笆', '光滑墙角立柱',
           '破旧锯木厂', '普通门', '矮光滑墙', '工作灯', '弯传送带', '切换传送带', '宽敞门',
           '3/3木楔', '400元小汽车', '波纹墙立柱', '锯木机02', '漏斗式传送带', '小型地板',
           '小型瓷砖', '矮波纹墙角', '波纹墙', '大型地板', '微型瓷砖', '微型地板', '1/1木楔',
           '左转直式传送带', '银斧头', '切割机', '基础斧头', '右转传送带', '普通斧头',
           '转向传送带支架', '传送带支架', '波纹墙角立柱', '楼梯', '陡峭楼梯', '钢斧',
           '标志杆', '梯子', '大型瓷砖', '瓷砖', '硬化斧', '半截门', '木头清扫机',
           '光滑墙立柱', '沙子袋', '小型拖车', '531式拖车', '小汽车XL', '大卡车', '长沙发',
           '洗碗机', '薄柜子', '冰箱', '火炉', '马桶', '双人沙发', '床', '落地灯', '台灯',
           '微型玻璃板', '小型玻璃板', '玻璃板', '大型玻璃板', '玻璃门', '琥珀色冰柱灯串',
           '红色冰柱灯串', '绿色冰柱灯串', '蓝色冰柱灯串', '烟花发射器', '惊悚冰柱灯串',
           '单人沙发', '双人床', '灯泡', '工作台面', '薄工作台面', '带水槽的工作台面',
           '照明灯', '墙灯', '橱柜角', '宽橱柜角', '橱柜', '炸药', '毛毛虫软糖', '未知标题',
           '困扰装饰画', '户外水彩素描', '阴郁的黄昏海景', '北极灯串', '菠萝画',
           '孤独的长颈鹿', '信号维持器', '与门', '异与门', '木材检测器', '按钮', '压力板',
           'OR门', '拉杆', '信号延时器', '信号变换器', '激光', '激光探测器', '舱门',
           '橙色发光线', '绿色发光线', '黄色发光线', ' 忍 色发光线', '紫色发光线',
           '红色发光线', '青色发光线', '蓝色发光线', '定时开关'}
Sectionautobuy:Dropdown("自动购买的物品", 'Dropdown', l, function(a)

    if a == '按钮' then
        l = 'Button0'
    elseif a == '控制杆' then
        l = 'Lever0'
    elseif a == '电线' then
        l = 'Wire'
    elseif a == '4/4x1木楔' then
        l = 'Wedge1_Thin'
    elseif a == '3/4x1木楔' then
        l = 'Wedge2_Thin'
    elseif a == '2/4x1木楔' then
        l = 'Wedge3_Thin'
    elseif a == '1/4x1木楔' then
        l = 'Wedge4_Thin'
    elseif a == '3/3x1木楔' then
        l = 'Wedge5_Thin'
    elseif a == '2/3x1木楔' then
        l = 'Wedge6_Thin'
    elseif a == '1/3x1木楔' then
        l = 'Wedge7_Thin'
    elseif a == '2/2x1木楔' then
        l = 'Wedge8_Thin'
    elseif a == '1/2x1木楔' then
        l = 'Wedge9_Thin'
    elseif a == '1/1x1木楔' then
        l = 'Wedge10_Thin'
    elseif a == '篱笆' then
        l = 'Wall3TallThin'
    elseif a == '压力板' then
        l = 'PressurePlate'
    elseif a == '1/3木楔' then
        l = 'Wedge7'
    elseif a == '锯木机01' then
        l = 'Sawmill3'
    elseif a == '锯木机02L' then
        l = 'Sawmill4L'
    elseif a == '波纹墙角立柱' then
        l = 'Wall1ShortCorner'
    elseif a == '传送带' then
        l = 'StraightConveyor'
    elseif a == '普通凳子' then
        l = 'Chair1'
    elseif a == '倾斜传送带' then
        l = 'TiltConveyor'
    elseif a == '3/4木楔' then
        l = 'Wedge2'
    elseif a == '2/3木楔' then
        l = 'Wedge6'
    elseif a == '光滑的墙' then
        l = "Wall2"
    elseif a == '光滑墙角' then
        l = 'Wall2TallCorner'
    elseif a == '普通锯木厂' then
        l = 'Sawmill2'
    elseif a == '4/4木楔' then
        l = 'Wedge1'
    elseif a == '光滑墙立柱' then
        l = 'Wall2Short'
    elseif a == '篱笆角' then
        l = 'Wall3TallCorner'
    elseif a == '矮篱笆角' then
        l = 'Wall3Corner'
    elseif a == '矮波纹墙' then
        l = 'Wall1Thin'
    elseif a == '长桌' then
        l = 'Table2'
    elseif a == '矮篱笆' then
        l = 'Wall3'
    elseif a == '光滑墙角立柱' then
        l = 'Wall2ShortCorner'
    elseif a == '破旧锯木厂' then
        l = 'Sawmill'
    elseif a == '普通门' then
        l = 'Door1'
    elseif a == '矮光滑墙' then
        l = 'Wall2'
    elseif a == '工作灯' then
        l = 'WorkLight'
    elseif a == '弯传送带' then
        l = 'TightTurnConveyor'
    elseif a == '切换传送带' then
        l = 'ConveyorSwitch'
    elseif a == '宽敞门' then
        l = 'Door3'
    elseif a == '3/3木楔' then
        l = 'Wedge5'
    elseif a == '400元小汽车' then
        l = 'UtilityTruck'
    elseif a == '波纹墙立柱' then
        l = 'Wall1ShortThin'
    elseif a == '锯木机02' then
        l = 'Sawmill4L'
    elseif a == '漏斗式传送带' then
        l = 'ConveyorFunnel'
    elseif a == '小型地板' then
        l = 'Floor1Small'
    elseif a == '小型瓷砖' then
        l = 'Floor2Small'
    elseif a == '矮波纹墙角' then
        l = 'Wall1Corner'
    elseif a == '波纹墙' then
        l = 'Wall1Tall'
    elseif a == '大型地板' then
        l = 'Floor1Large'
    elseif a == '微型瓷砖' then
        l = 'Floor2Tiny'
    elseif a == '微型地板' then
        l = 'Floor1Tiny'
    elseif a == '1/1木楔' then
        l = 'Wedge10'
    elseif a == '左转直式传送带' then
        l = 'StraightSwitchConveyorLeft'
    elseif a == '银斧头' then
        l = 'SilverAxe'
    elseif a == '切割机' then
        l = 'ChopSaw'
    elseif a == '基础斧头' then
        l = 'BasicHatchet'
    elseif a == '右转传送带' then
        l = 'StraightSwitchConveyorRight'
    elseif a == '普通斧头' then
        l = 'Axe1'
    elseif a == '转向传送带支架' then
        l = 'TightTurnConveyorSupports'
    elseif a == '传送带支架' then
        l = 'ConveyorSupports'
    elseif a == '波纹墙角立柱' then
        l = 'Wall1ShortCorner'
    elseif a == '楼梯' then
        l = 'Stair2'
    elseif a == '陡峭楼梯' then
        l = 'Stair1'
    elseif a == '钢斧' then
        l = 'Axe2'
    elseif a == '标志杆' then
        l = 'Post'
    elseif a == '梯子' then
        l = 'Ladder1'
    elseif a == '大型瓷砖' then
        l = 'Floor2Large'
    elseif a == '瓷砖' then
        l = 'Floor2'
    elseif a == '硬化斧' then
        l = 'Axe3'
    elseif a == '半截门' then
        l = 'Door2'
    elseif a == '木头清扫机' then
        l = 'LogSweeper'
    elseif a == '光滑墙立柱' then
        l = 'Wall2ShortThin'
    elseif a == '沙子袋' then
        l = 'BagOfSand'
    elseif a == '小型拖车' then
        l = 'SmallTrailer'
    elseif a == '531式拖车' then
        l = 'Trailer2'
    elseif a == '小汽车XL' then
        l = 'UtilityTruck2'
    elseif a == '大卡车' then
        l = 'Pickup1'
    elseif a == '长沙发' then
        l = 'Seat_Couch'
    elseif a == '洗碗机' then
        l = 'Dishwasher'
    elseif a == '薄柜子' then
        l = 'Cabinet1Thin'
    elseif a == '冰箱' then
        l = 'Refridgerator'
    elseif a == '马桶' then
        l = 'Toilet'
    elseif a == '双人沙发' then
        l = 'Seat_Loveseat'
    elseif a == '床' then
        l = 'Bed1'
    elseif a == '落地灯' then
        l = 'FloorLamp1'
    elseif a == '台灯' then
        l = 'Lamp1'
    elseif a == '微型玻璃板' then
        l = 'GlassPane1'
    elseif a == '小型玻璃板' then
        l = 'GlassPane2'
    elseif a == '玻璃板' then
        l = 'GlassPane3'
    elseif a == '大型玻璃板' then
        l = 'GlassPane4'
    elseif a == '玻璃门' then
        l = 'GlassDoor1'
    elseif a == '琥珀色冰柱灯串' then
        l = 'IcicleWireAmber'
    elseif a == '红色冰柱灯串' then
        l = 'IcicleWireRed'
    elseif a == '绿色冰柱灯串' then
        l = 'IcicleWireGreen'
    elseif a == '蓝色冰柱灯串' then
        l = 'IcicleWireBlue'
    elseif a == '烟花发射器' then
        l = 'FireworkLauncher'
    elseif a == '惊悚冰柱灯串' then
        l = 'IcicleWireHalloween'
    elseif a == '单人沙发' then
        l = 'Seat_Armchair'
    elseif a == '双人床' then
        l = 'Bed2'
    elseif a == '灯泡' then
        l = 'LightBulb'
    elseif a == '工作台面' then
        l = 'CounterTop1'
    elseif a == '薄工作台面' then
        l = 'CounterTop1Thin'
    elseif a == '带水槽的工作台面' then
        l = 'CounterTop1Sink'
    elseif a == '照明灯' then
        l = 'WallLight2'
    elseif a == '墙灯' then
        l = 'WallLight1'
    elseif a == '橱柜角' then
        l = 'Cabinet1CornerTight'
    elseif a == '宽橱柜角' then
        l = 'Cabinet1CornerWide'
    elseif a == '橱柜' then
        l = 'Cabinet1'
    elseif a == '毛毛虫软糖' then
        l = 'CanOfWorms'
    elseif a == '炸药' then
        l = 'Dynamite'
    elseif a == '未知标题' then
        l = 'Painting1'
    elseif a == '困扰装饰画' then
        l = 'Painting2'
    elseif a == '户外水彩素描' then
        l = 'Painting3'
    elseif a == '阴郁的黄昏海景' then
        l = 'Painting6'
    elseif a == '北极灯串' then
        l = 'Painting7'
    elseif a == '菠萝画' then
        l = 'Painting8'
    elseif a == '孤独的长颈鹿' then
        l = 'Painting9'
    elseif a == '信号维持器' then
        l = 'SignalSustain'
    elseif a == '与门' then
        l = 'GateAND'
    elseif a == '异与门' then
        l = 'GateXOR'
    elseif a == '木材检测器' then
        l = 'WoodChecker'
    elseif a == '按钮' then
        l = 'lutton0'
    elseif a == '压力板' then
        l = 'PressurePlate'
    elseif a == 'OR门' then
        l = 'GateOR'
    elseif a == '拉杆' then
        l = 'Lever0'
    elseif a == '信号延时器' then
        l = 'SignalDelay'
    elseif a == '信号变换器' then
        l = 'GateNOT'
    elseif a == '激光' then
        l = 'Laser'
    elseif a == '激光探测器' then
        l = 'LaserReceiver'
    elseif a == '舱门' then
        l = 'Hatch'
    elseif a == '橙色发光线' then
        l = 'NeonWireOrange'
    elseif a == '绿色发光线' then
        l = 'NeonWireGreen'
    elseif a == '黄色发光线' then
        l = 'NeonWireYellow'
    elseif a == ' 忍 色发光线' then
        l = 'NeonWireWhite'
    elseif a == '紫色发光线' then
        l = 'NeonWireViolet'
    elseif a == '红色发光线' then
        l = 'NeonWireRed'
    elseif a == '青色发光线' then
        l = 'NeonWireCyan'
    elseif a == '蓝色发光线' then
        l = 'NeonWireBlue'
    elseif a == '定时开关' then
        l = 'ClockSwitch'
    end
end)
Sectionautobuy:Button("买", function()
    bai.autobuystop = false
    bai.autobuyset = lp.Character.HumanoidRootPart.CFrame
    autobuy(l, bai.autobuyamount)
    task.wait()
    tp(bai.autobuyset)
end)
Sectionautobuy:Button("停止购买", function()
    bai.autobuystop = true
    pcall(function()
        bai.autocsdx:Disconnect();
        bai.autocsdx = nil;
    end)

end)

Sectionautobuy6:Button("买黄金蓝图", function()
    local function callback(Text)
        if Text == "确定" then
            game.ReplicatedStorage.NPCDialog.PlayerChatted:InvokeServer({
                ['Character'] = workspace.Region_Main['Strange Man'],
                ['Name'] = 'Strange Man',
                ['ID'] = getSpecialID('Strange Man'),
                ['Dialog'] = workspace.Region_Main['Strange Man'].Dialog
            }, 'ConfirmPurchase')

        elseif Text == "取消" then

        end
    end

    local NotificationBindable = Instance.new("BindableFunction")
    NotificationBindable.OnInvoke = callback
    --
    game.StarterGui:SetCore("SendNotification", {
        Title = " 忍 ",
        Text = "确定购买？",
        Icon = "",
        Duration = 5,
        Button1 = "确定",
        Button2 = "取消",
        Callback = NotificationBindable
    })

end)
Sectionautobuy6:Button("买桥", function()
    game.ReplicatedStorage.NPCDialog.PlayerChatted:InvokeServer({
        ['Character'] = workspace.Bridge.TollBooth0.Seranok,
        ['Name'] = 'Seranok',
        ['ID'] = getSpecialID('Seranok'),
        ['Dialog'] = workspace.Bridge.TollBooth0.Seranok.Dialog
    }, 'ConfirmPurchase')
end)
Sectionautobuy6:Button("买船票", function()
    game.ReplicatedStorage.NPCDialog.PlayerChatted:InvokeServer({
        ['Character'] = workspace.Ferry.Ferry.Hoover,
        ['Name'] = 'Hoover',
        ['ID'] = getSpecialID('Hoover'),
        ['Dialog'] = workspace.Ferry.Ferry.Hoover.Dialog
    }, 'ConfirmPurchase')
end)
Sectionautobuy6:Button("买鲨鱼", function()
    local oldPos = lp.Character.HumanoidRootPart.CFrame.Position
    bai.autobuystop = false
    bai.autobuyset = CFrame.new(319, 43, 1914)
    autobuy("BagOfSand", 1)
    task.wait(0.1)
    bai.autobuyset = CFrame.new(317, 43, 1918)
    autobuy('CanOfWorms', 1)
    task.wait(0.1)
    bai.autobuyset = CFrame.new(322, 43, 1916)
    autobuy('LightBulb', 1)
    tp(bai.autobuyset)
    local boxOpenConnection, axeConnection;

    axeConnection = workspace.PlayerModels.ChildAdded:Connect(function(Child)
        local Main = Child:WaitForChild('Main', 60)
        if Main:FindFirstChild 'Mesh' and Main.Mesh.TextureId == 'rbxassetid://273892918' then
            repeat
                wait()
            until Child:FindFirstChild 'ToolName';

            tp(CFrame.new(Child.Main.CFrame.p));
            repeat
                task.wait()
                game:GetService 'ReplicatedStorage'.Interaction.ClientIsDragging:FireServer(Child);

                game.ReplicatedStorage.Interaction.ClientInteracted:FireServer(Child, 'Pick up tool'); -- >not running?
            until tostring(Child.Parent) ~= 'PlayerModels';
            tp(CFrame.new(oldPos));
            pcall(function()
                axeConnection:Disconnect();
                axeConnection = nil;
                bai.boxOpenConnection:Disconnect();
                bai.boxOpenConnection = nil;
            end);
        end
    end);
    bai.boxOpenConnection = workspace.PlayerModels.ChildAdded:Connect(function(Child)
        pcall(function()
            wait(.5)
            local Owner = Child:WaitForChild('Owner', 60)
            if tostring(Owner.Value) == tostring(lp) then
                local itemName = Child:FindFirstChild 'ItemName' or Child:FindFirstChild 'PurchasedBoxItemName';
                if itemName then
                    if tostring(itemName.Value) == 'BagOfSand' or tostring(itemName.Value) == 'CanOfWorms' or
                        tostring(itemName.Value) == 'LightBulb' then
                        if Child:FindFirstChild 'ItemName' then
                            wait(0.1)
                            game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(Child,
                                'Open box');
                        end

                    end
                end

            end
        end)
    end);
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  
RC:Button("白脚本rc[免费](已修复)", function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/noob616161/KphoooOooooOoOo-wprfbdksorbfKvsdcIUH-194jddJ-___-_-lIlIIIllIIIlllIIIIlIlIIlIllIIIllllllIllllllIIIl/main/bai/rc"))();
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------      


BZMNQ:Button("获取计数器手套", function()
fireclickdetector(game.Workspace.CounterLever.ClickDetector)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(121)
for i,v in pairs(workspace.Maze:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
end)

BZMNQ:Toggle("地牢亮度","Toggle" ,false, function(Value)
 Light = Value
    if not Light then
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)

BZMNQ:Dropdown("传送","Dropdown",{"安全区","竞技场","埃及岛","果实岛","盘子","锦标赛","默认竞技场"},function(Value)
if Value == "安全区" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,40,0)
elseif Value == "竞技场" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
elseif Value == "埃及岛" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
elseif Value == "果实岛" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
elseif Value == "盘子" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
elseif Value == "锦标赛" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
elseif Value == "默认竞技场" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)
end
end)

BZMNQ:Toggle("复古技能","Toggle" ,false, function(Value)
RetroSpam = Value
while RetroSpam do
game:GetService("ReplicatedStorage").RetroAbility:FireServer(RetroAbility)
task.wait()
end
end)

BZMNQ:Dropdown("复古技能选择","Dropdown",{"Rocket Launcher","Ban Hammer","Bomb"}, function(Value)
RetroAbility = Value
end)

BZMNQ:Toggle("自动捡糖果","Toggle",false, function(Value)
CandyCornFarm = Value
while CandyCornFarm do
for i, v in pairs(workspace.CandyCorns:GetChildren()) do
                if v:FindFirstChildWhichIsA("TouchTransmitter") then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
task.wait()
end
end)

BZMNQ:Toggle("获取炼金术师材料","Toggle", false, function(Value)
AlchemistIngredients = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
while AlchemistIngredients do
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Mushroom")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Glowing Mushroom")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Fire Flower")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Winter Rose")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dark Root")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dire Flower")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Autumn Sprout")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Elder Wood")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Hazel Lily")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Wild Vine")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Jade Stone")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Lamp Grass")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Plane Flower")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blood Rose")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Red Crystal")
game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blue Crystal")
task.wait()
end
end
end)

BZMNQ:Toggle("自动加入竞技场","Toggle", false, function(Value)
AutoEnterArena = Value
while AutoEnterArena do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
    end
task.wait()
end
end)

BZMNQ:Toggle("自动光波球","Toggle", false, function(Value)
if Person == nil then
Person = game.Players.LocalPlayer.Name
end
_G.RojoSpam = Value
while _G.RojoSpam do
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players[Person].Character.HumanoidRootPart.CFrame})
task.wait()
end
end)

BZMNQ:Button("Rojo技能", function(Value)
_G.RojoSpam = Value
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Charge")
wait(6)
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
task.wait()
end)

BZMNQ:Toggle("音符技能","Toggle", false, function(Value)
_G.RhythmSpam = Value
while _G.RhythmSpam do
game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
task.wait()
end
end)

BZMNQ:Toggle("Null技能","Toggle", false, function(Value)
NullSpam = Value
while NullSpam do
game:GetService("ReplicatedStorage").NullAbility:FireServer()
task.wait()
end
end)

BZMNQZX:Toggle("自动拾取黄金果实","Toggle", false, function(Value)
SlappleFarm = Value
while SlappleFarm do
for i, v in ipairs(workspace.Arena.island5.Slapples:GetDescendants()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Glove" and v:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
                end
            end
task.wait()
end
end)

BZMNQZX:Toggle("自动捡飞行宝珠","Toggle", false, function(Value)
Jetfarm = Value
while Jetfarm do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "JetOrb" and v:FindFirstChild("TouchInterest") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                    end
                end
task.wait()
end
end)

BZMNQZX:Toggle("自动捡相位球","Toggle", false, function(Value)
Phasefarm = Value
while Phasefarm do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "PhaseOrb" and v:FindFirstChild("TouchInterest") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                    end
                end
task.wait()
end
end)

BZMNQZX:Toggle("自动刷bob","Toggle", false, function(Value)
ReplicaFarm = Value
while ReplicaFarm do
for i, v in pairs(workspace:GetChildren()) do
                if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"))
                end
            end
task.wait()
game:GetService("ReplicatedStorage").Duplicate:FireServer()
task.wait(7)
end
end)

BZMNQZX:Toggle("无限反转","Toggle", false, function(Value)
_G.InfReverse = Value
while _G.InfReverse do
game:GetService("ReplicatedStorage").ReverseAbility:FireServer()
wait(6)
end
end)

BZMNQZX:Toggle("彩虹角色(装备黄金手套)","Toggle", false, function(Value)
_G.Rainbow = Value
while _G.Rainbow do
for i = 0,1,0.001*25 do
game:GetService("ReplicatedStorage").Goldify:FireServer(false, BrickColor.new(Color3.fromHSV(i,1,1)))
task.wait()
end
end
end)


BZMNQFJN:Toggle("管理员预警(反管理员)","Toggle", false, function(Value)
AntiAdmins = Value
while AntiAdmins do
for i,v in pairs(game.Players:GetChildren()) do
                    if v:GetRankInGroup(9950771) >= 2 then
AntiKick = false
                        game.Players.LocalPlayer:Kick("High Rank Player Detected.".." ("..v.Name..")")
                        break
                    end
                end
task.wait()
end
end)

BZMNQFJN:Toggle("防踢","Toggle", false, function(Value)
AntiKick = Value
while AntiKick do
for i,v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetDescendants()) do
                    if v.Name == "ErrorPrompt" then
AK:Set(false)
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                    end
                end
task.wait()
end
end)

BZMNQFJN:Toggle("防击飞","Toggle", false, function(Value)
AntiRagdoll = Value
if AntiRagdoll then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
game.Players.LocalPlayer.CharacterAdded:Connect(function()
game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and AntiRagdoll then
repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end)
end)
end
end)

BZMNQFJN:Toggle("反虚空(锦标赛也有效果)","Toggle", false, function(Value)
game.Workspace.dedBarrier.CanCollide = Value
game.Workspace.TAntiVoid.CanCollide = Value
end)

BZMNQFJN:Toggle("防死亡屏障","Toggle", false, function(Value)
if Value == true then
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = false
                    end
                end
workspace.DEATHBARRIER.CanTouch = false
workspace.DEATHBARRIER2.CanTouch = false
workspace.dedBarrier.CanTouch = false
workspace.ArenaBarrier.CanTouch = false
workspace.AntiDefaultArena.CanTouch = false
else
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = true
                    end
                end
workspace.DEATHBARRIER.CanTouch = true
workspace.DEATHBARRIER2.CanTouch = true
workspace.dedBarrier.CanTouch = true
workspace.ArenaBarrier.CanTouch = true
workspace.AntiDefaultArena.CanTouch = true
end
end)

BZMNQFJN:Toggle("反巴西","Toggle", false, function(Value)
if Value == true then
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                        v.CanTouch = false
                end
else
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                        v.CanTouch = true
                end
end
end)

BZMNQFJN:Toggle("反死亡方块","Toggle", false, function(Value)
if Value == true then
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
        else
                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
        end
end)

BZMNQFJN:Toggle("反上帝技能","Toggle", false, function(Value)
AntiTimestop = Value
while AntiTimestop do
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Part" then
                        v.Anchored = false
                    end
                end
task.wait()
end
end)

BZMNQFJN:Toggle("反鱿鱼","Toggle", false, function(Value)
AntiSquid = Value
if AntiSquid == false then
        game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
        end
while AntiSquid do
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
        game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
end
task.wait()
end
end)

BZMNQFJN:Toggle("反神圣杰克","Toggle", false, function(Value)
game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = Value
end)

BZMNQFJN:Toggle("反传送带","Toggle", false, function(Value)
game.Players.LocalPlayer.PlayerScripts.ConveyorVictimized.Disabled = Value
end)

BZMNQFJN:Toggle("反板砖","Toggle", false, function(Value)
AntiBrick = Value
while AntiBrick do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Union" then
                        v.CanTouch = false
                    end
                end
task.wait()
end
end)

BZMNQFJN:Toggle("反Null","Toggle", false, function(Value)
AntiNull = Value
while AntiNull do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Imp" and v:FindFirstChild("Body") then
shared.gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Body,true)
end
end
task.wait()
end
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
-- made by 1ndrew nuke script
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
Model1 = Instance.new("Model")
Part2 = Instance.new("Part")
CylinderMesh3 = Instance.new("CylinderMesh")
ObjectValue4 = Instance.new("ObjectValue")
Part5 = Instance.new("Part")
BlockMesh6 = Instance.new("BlockMesh")
Part7 = Instance.new("Part")
CylinderMesh8 = Instance.new("CylinderMesh")
Part9 = Instance.new("Part")
CylinderMesh10 = Instance.new("CylinderMesh")
Weld11 = Instance.new("Weld")
Weld12 = Instance.new("Weld")
Part13 = Instance.new("Part")
Script14 = Instance.new("Script")
BlockMesh15 = Instance.new("BlockMesh")
Part16 = Instance.new("Part")
CylinderMesh17 = Instance.new("CylinderMesh")
Part18 = Instance.new("Part")
BlockMesh19 = Instance.new("BlockMesh")
Weld20 = Instance.new("Weld")
Weld21 = Instance.new("Weld")
Weld22 = Instance.new("Weld")
Part23 = Instance.new("Part")
BlockMesh24 = Instance.new("BlockMesh")
Part25 = Instance.new("Part")
BlockMesh26 = Instance.new("BlockMesh")
Part27 = Instance.new("Part")
CylinderMesh28 = Instance.new("CylinderMesh")
Part29 = Instance.new("Part")
BlockMesh30 = Instance.new("BlockMesh")
Part31 = Instance.new("Part")
BlockMesh32 = Instance.new("BlockMesh")
ObjectValue33 = Instance.new("ObjectValue")
VehicleSeat34 = Instance.new("VehicleSeat")
Sound35 = Instance.new("Sound")
Script36 = Instance.new("Script")
Script37 = Instance.new("Script")
BlockMesh38 = Instance.new("BlockMesh")
Script39 = Instance.new("Script")
ScreenGui40 = Instance.new("ScreenGui")
Frame41 = Instance.new("Frame")
TextButton42 = Instance.new("TextButton")
TextButton43 = Instance.new("TextButton")
TextButton44 = Instance.new("TextButton")
TextButton45 = Instance.new("TextButton")
Script46 = Instance.new("Script")
ObjectValue47 = Instance.new("ObjectValue")
Frame48 = Instance.new("Frame")
TextButton49 = Instance.new("TextButton")
Script50 = Instance.new("Script")
TextButton51 = Instance.new("TextButton")
Script52 = Instance.new("Script")
TextLabel53 = Instance.new("TextLabel")
TextButton54 = Instance.new("TextButton")
Script55 = Instance.new("Script")
TextButton56 = Instance.new("TextButton")
Script57 = Instance.new("Script")
TextLabel58 = Instance.new("TextLabel")
NumberValue59 = Instance.new("NumberValue")
NumberValue60 = Instance.new("NumberValue")
NumberValue61 = Instance.new("NumberValue")
Frame62 = Instance.new("Frame")
TextLabel63 = Instance.new("TextLabel")
TextLabel64 = Instance.new("TextLabel")
TextLabel65 = Instance.new("TextLabel")
TextLabel66 = Instance.new("TextLabel")
TextLabel67 = Instance.new("TextLabel")
TextLabel68 = Instance.new("TextLabel")
TextLabel69 = Instance.new("TextLabel")
TextLabel70 = Instance.new("TextLabel")
TextButton71 = Instance.new("TextButton")
Script72 = Instance.new("Script")
Script73 = Instance.new("Script")
NumberValue74 = Instance.new("NumberValue")
Part75 = Instance.new("Part")
BlockMesh76 = Instance.new("BlockMesh")
Part77 = Instance.new("Part")
CylinderMesh78 = Instance.new("CylinderMesh")
Part79 = Instance.new("Part")
CylinderMesh80 = Instance.new("CylinderMesh")
Script81 = Instance.new("Script")
Part82 = Instance.new("Part")
Fire83 = Instance.new("Fire")
Smoke84 = Instance.new("Smoke")
Smoke85 = Instance.new("Smoke")
Smoke86 = Instance.new("Smoke")
Smoke87 = Instance.new("Smoke")
Smoke88 = Instance.new("Smoke")
BillboardGui89 = Instance.new("BillboardGui")
ImageLabel90 = Instance.new("ImageLabel")
Script91 = Instance.new("Script")
SpecialMesh92 = Instance.new("SpecialMesh")
Script93 = Instance.new("Script")
Script94 = Instance.new("Script")
Sound95 = Instance.new("Sound")
Sky96 = Instance.new("Sky")
Part97 = Instance.new("Part")
Sound98 = Instance.new("Sound")
Sound99 = Instance.new("Sound")
SpecialMesh100 = Instance.new("SpecialMesh")
PointLight101 = Instance.new("PointLight")
Smoke102 = Instance.new("Smoke")
Sound103 = Instance.new("Sound")
Model104 = Instance.new("Model")
Part105 = Instance.new("Part")
SpecialMesh106 = Instance.new("SpecialMesh")
Part107 = Instance.new("Part")
SpecialMesh108 = Instance.new("SpecialMesh")
Smoke109 = Instance.new("Smoke")
BillboardGui110 = Instance.new("BillboardGui")
ImageLabel111 = Instance.new("ImageLabel")
Script112 = Instance.new("Script")
Smoke113 = Instance.new("Smoke")
Smoke114 = Instance.new("Smoke")
Smoke115 = Instance.new("Smoke")
StringValue116 = Instance.new("StringValue")
StringValue117 = Instance.new("StringValue")
StringValue118 = Instance.new("StringValue")
Script119 = Instance.new("Script")
Script120 = Instance.new("Script")
Sound121 = Instance.new("Sound")
Sky122 = Instance.new("Sky")
Part123 = Instance.new("Part")
BlockMesh124 = Instance.new("BlockMesh")
Part125 = Instance.new("Part")
BlockMesh126 = Instance.new("BlockMesh")
Part127 = Instance.new("Part")
BlockMesh128 = Instance.new("BlockMesh")
Part129 = Instance.new("Part")
BlockMesh130 = Instance.new("BlockMesh")
Part131 = Instance.new("Part")
BlockMesh132 = Instance.new("BlockMesh")
Part133 = Instance.new("Part")
BlockMesh134 = Instance.new("BlockMesh")
Part135 = Instance.new("Part")
BlockMesh136 = Instance.new("BlockMesh")
Part137 = Instance.new("Part")
BlockMesh138 = Instance.new("BlockMesh")
Part139 = Instance.new("Part")
BlockMesh140 = Instance.new("BlockMesh")
Part141 = Instance.new("Part")
BlockMesh142 = Instance.new("BlockMesh")
Part143 = Instance.new("Part")
BlockMesh144 = Instance.new("BlockMesh")
Part145 = Instance.new("Part")
BlockMesh146 = Instance.new("BlockMesh")
Part147 = Instance.new("Part")
BlockMesh148 = Instance.new("BlockMesh")
Part149 = Instance.new("Part")
BlockMesh150 = Instance.new("BlockMesh")
Part151 = Instance.new("Part")
BlockMesh152 = Instance.new("BlockMesh")
Part153 = Instance.new("Part")
BlockMesh154 = Instance.new("BlockMesh")
Part155 = Instance.new("Part")
BlockMesh156 = Instance.new("BlockMesh")
Part157 = Instance.new("Part")
BlockMesh158 = Instance.new("BlockMesh")
Part159 = Instance.new("Part")
CylinderMesh160 = Instance.new("CylinderMesh")
Part161 = Instance.new("Part")
BlockMesh162 = Instance.new("BlockMesh")
Part163 = Instance.new("Part")
BlockMesh164 = Instance.new("BlockMesh")
Part165 = Instance.new("Part")
BlockMesh166 = Instance.new("BlockMesh")
WedgePart167 = Instance.new("WedgePart")
SpecialMesh168 = Instance.new("SpecialMesh")
WedgePart169 = Instance.new("WedgePart")
SpecialMesh170 = Instance.new("SpecialMesh")
WedgePart171 = Instance.new("WedgePart")
SpecialMesh172 = Instance.new("SpecialMesh")
WedgePart173 = Instance.new("WedgePart")
SpecialMesh174 = Instance.new("SpecialMesh")
WedgePart175 = Instance.new("WedgePart")
SpecialMesh176 = Instance.new("SpecialMesh")
WedgePart177 = Instance.new("WedgePart")
SpecialMesh178 = Instance.new("SpecialMesh")
WedgePart179 = Instance.new("WedgePart")
SpecialMesh180 = Instance.new("SpecialMesh")
WedgePart181 = Instance.new("WedgePart")
SpecialMesh182 = Instance.new("SpecialMesh")
WedgePart183 = Instance.new("WedgePart")
SpecialMesh184 = Instance.new("SpecialMesh")
WedgePart185 = Instance.new("WedgePart")
SpecialMesh186 = Instance.new("SpecialMesh")
WedgePart187 = Instance.new("WedgePart")
SpecialMesh188 = Instance.new("SpecialMesh")
WedgePart189 = Instance.new("WedgePart")
SpecialMesh190 = Instance.new("SpecialMesh")
WedgePart191 = Instance.new("WedgePart")
SpecialMesh192 = Instance.new("SpecialMesh")
Model193 = Instance.new("Model")
Part194 = Instance.new("Part")
CylinderMesh195 = Instance.new("CylinderMesh")
Part196 = Instance.new("Part")
CylinderMesh197 = Instance.new("CylinderMesh")
Part198 = Instance.new("Part")
CylinderMesh199 = Instance.new("CylinderMesh")
Part200 = Instance.new("Part")
CylinderMesh201 = Instance.new("CylinderMesh")
Part202 = Instance.new("Part")
BlockMesh203 = Instance.new("BlockMesh")
Part204 = Instance.new("Part")
BlockMesh205 = Instance.new("BlockMesh")
Part206 = Instance.new("Part")
BlockMesh207 = Instance.new("BlockMesh")
Part208 = Instance.new("Part")
BlockMesh209 = Instance.new("BlockMesh")
Part210 = Instance.new("Part")
BlockMesh211 = Instance.new("BlockMesh")
Part212 = Instance.new("Part")
BlockMesh213 = Instance.new("BlockMesh")
Part214 = Instance.new("Part")
BlockMesh215 = Instance.new("BlockMesh")
Part216 = Instance.new("Part")
BlockMesh217 = Instance.new("BlockMesh")
Part218 = Instance.new("Part")
BlockMesh219 = Instance.new("BlockMesh")
Part220 = Instance.new("Part")
BlockMesh221 = Instance.new("BlockMesh")
Part222 = Instance.new("Part")
BlockMesh223 = Instance.new("BlockMesh")
Part224 = Instance.new("Part")
BlockMesh225 = Instance.new("BlockMesh")
Part226 = Instance.new("Part")
BlockMesh227 = Instance.new("BlockMesh")
Part228 = Instance.new("Part")
BlockMesh229 = Instance.new("BlockMesh")
Part230 = Instance.new("Part")
BlockMesh231 = Instance.new("BlockMesh")
Part232 = Instance.new("Part")
BlockMesh233 = Instance.new("BlockMesh")
Part234 = Instance.new("Part")
BlockMesh235 = Instance.new("BlockMesh")
Part236 = Instance.new("Part")
BlockMesh237 = Instance.new("BlockMesh")
Part238 = Instance.new("Part")
BlockMesh239 = Instance.new("BlockMesh")
Part240 = Instance.new("Part")
BlockMesh241 = Instance.new("BlockMesh")
Part242 = Instance.new("Part")
BlockMesh243 = Instance.new("BlockMesh")
Part244 = Instance.new("Part")
BlockMesh245 = Instance.new("BlockMesh")
Part246 = Instance.new("Part")
BlockMesh247 = Instance.new("BlockMesh")
Part248 = Instance.new("Part")
CylinderMesh249 = Instance.new("CylinderMesh")
Part250 = Instance.new("Part")
BlockMesh251 = Instance.new("BlockMesh")
Part252 = Instance.new("Part")
BlockMesh253 = Instance.new("BlockMesh")
Part254 = Instance.new("Part")
BlockMesh255 = Instance.new("BlockMesh")
Part256 = Instance.new("Part")
BlockMesh257 = Instance.new("BlockMesh")
Part258 = Instance.new("Part")
BlockMesh259 = Instance.new("BlockMesh")
Part260 = Instance.new("Part")
BlockMesh261 = Instance.new("BlockMesh")
Part262 = Instance.new("Part")
BlockMesh263 = Instance.new("BlockMesh")
Part264 = Instance.new("Part")
BlockMesh265 = Instance.new("BlockMesh")
Part266 = Instance.new("Part")
BlockMesh267 = Instance.new("BlockMesh")
Part268 = Instance.new("Part")
BlockMesh269 = Instance.new("BlockMesh")
Part270 = Instance.new("Part")
BlockMesh271 = Instance.new("BlockMesh")
Part272 = Instance.new("Part")
BlockMesh273 = Instance.new("BlockMesh")
Part274 = Instance.new("Part")
BlockMesh275 = Instance.new("BlockMesh")
Part276 = Instance.new("Part")
BlockMesh277 = Instance.new("BlockMesh")
Part278 = Instance.new("Part")
BlockMesh279 = Instance.new("BlockMesh")
Part280 = Instance.new("Part")
BlockMesh281 = Instance.new("BlockMesh")
Part282 = Instance.new("Part")
BlockMesh283 = Instance.new("BlockMesh")
Part284 = Instance.new("Part")
BlockMesh285 = Instance.new("BlockMesh")
Part286 = Instance.new("Part")
BlockMesh287 = Instance.new("BlockMesh")
Part288 = Instance.new("Part")
BlockMesh289 = Instance.new("BlockMesh")
Part290 = Instance.new("Part")
BlockMesh291 = Instance.new("BlockMesh")
Part292 = Instance.new("Part")
BlockMesh293 = Instance.new("BlockMesh")
WedgePart294 = Instance.new("WedgePart")
SpecialMesh295 = Instance.new("SpecialMesh")
WedgePart296 = Instance.new("WedgePart")
SpecialMesh297 = Instance.new("SpecialMesh")
WedgePart298 = Instance.new("WedgePart")
SpecialMesh299 = Instance.new("SpecialMesh")
WedgePart300 = Instance.new("WedgePart")
SpecialMesh301 = Instance.new("SpecialMesh")
VehicleSeat302 = Instance.new("VehicleSeat")
WedgePart303 = Instance.new("WedgePart")
SpecialMesh304 = Instance.new("SpecialMesh")
WedgePart305 = Instance.new("WedgePart")
SpecialMesh306 = Instance.new("SpecialMesh")
WedgePart307 = Instance.new("WedgePart")
SpecialMesh308 = Instance.new("SpecialMesh")
WedgePart309 = Instance.new("WedgePart")
SpecialMesh310 = Instance.new("SpecialMesh")
WedgePart311 = Instance.new("WedgePart")
SpecialMesh312 = Instance.new("SpecialMesh")
WedgePart313 = Instance.new("WedgePart")
SpecialMesh314 = Instance.new("SpecialMesh")
WedgePart315 = Instance.new("WedgePart")
SpecialMesh316 = Instance.new("SpecialMesh")
WedgePart317 = Instance.new("WedgePart")
SpecialMesh318 = Instance.new("SpecialMesh")
WedgePart319 = Instance.new("WedgePart")
SpecialMesh320 = Instance.new("SpecialMesh")
WedgePart321 = Instance.new("WedgePart")
SpecialMesh322 = Instance.new("SpecialMesh")
WedgePart323 = Instance.new("WedgePart")
SpecialMesh324 = Instance.new("SpecialMesh")
WedgePart325 = Instance.new("WedgePart")
SpecialMesh326 = Instance.new("SpecialMesh")
WedgePart327 = Instance.new("WedgePart")
SpecialMesh328 = Instance.new("SpecialMesh")
WedgePart329 = Instance.new("WedgePart")
SpecialMesh330 = Instance.new("SpecialMesh")
WedgePart331 = Instance.new("WedgePart")
SpecialMesh332 = Instance.new("SpecialMesh")
WedgePart333 = Instance.new("WedgePart")
SpecialMesh334 = Instance.new("SpecialMesh")
WedgePart335 = Instance.new("WedgePart")
SpecialMesh336 = Instance.new("SpecialMesh")
WedgePart337 = Instance.new("WedgePart")
SpecialMesh338 = Instance.new("SpecialMesh")
Part339 = Instance.new("Part")
BlockMesh340 = Instance.new("BlockMesh")
Part341 = Instance.new("Part")
BlockMesh342 = Instance.new("BlockMesh")
Part343 = Instance.new("Part")
BlockMesh344 = Instance.new("BlockMesh")
Part345 = Instance.new("Part")
BlockMesh346 = Instance.new("BlockMesh")
Part347 = Instance.new("Part")
BlockMesh348 = Instance.new("BlockMesh")
Part349 = Instance.new("Part")
BlockMesh350 = Instance.new("BlockMesh")
Part351 = Instance.new("Part")
BlockMesh352 = Instance.new("BlockMesh")
Part353 = Instance.new("Part")
BlockMesh354 = Instance.new("BlockMesh")
Part355 = Instance.new("Part")
BlockMesh356 = Instance.new("BlockMesh")
Part357 = Instance.new("Part")
BlockMesh358 = Instance.new("BlockMesh")
Part359 = Instance.new("Part")
BlockMesh360 = Instance.new("BlockMesh")
Part361 = Instance.new("Part")
BlockMesh362 = Instance.new("BlockMesh")
Part363 = Instance.new("Part")
BlockMesh364 = Instance.new("BlockMesh")
Part365 = Instance.new("Part")
BlockMesh366 = Instance.new("BlockMesh")
Part367 = Instance.new("Part")
BlockMesh368 = Instance.new("BlockMesh")
Part369 = Instance.new("Part")
BlockMesh370 = Instance.new("BlockMesh")
Part371 = Instance.new("Part")
CylinderMesh372 = Instance.new("CylinderMesh")
Part373 = Instance.new("Part")
BlockMesh374 = Instance.new("BlockMesh")
Part375 = Instance.new("Part")
BlockMesh376 = Instance.new("BlockMesh")
Part377 = Instance.new("Part")
BlockMesh378 = Instance.new("BlockMesh")
Part379 = Instance.new("Part")
BlockMesh380 = Instance.new("BlockMesh")
Part381 = Instance.new("Part")
CylinderMesh382 = Instance.new("CylinderMesh")
Part383 = Instance.new("Part")
CylinderMesh384 = Instance.new("CylinderMesh")
Part385 = Instance.new("Part")
CylinderMesh386 = Instance.new("CylinderMesh")
WedgePart387 = Instance.new("WedgePart")
SpecialMesh388 = Instance.new("SpecialMesh")
WedgePart389 = Instance.new("WedgePart")
SpecialMesh390 = Instance.new("SpecialMesh")
WedgePart391 = Instance.new("WedgePart")
SpecialMesh392 = Instance.new("SpecialMesh")
WedgePart393 = Instance.new("WedgePart")
SpecialMesh394 = Instance.new("SpecialMesh")
WedgePart395 = Instance.new("WedgePart")
SpecialMesh396 = Instance.new("SpecialMesh")
WedgePart397 = Instance.new("WedgePart")
SpecialMesh398 = Instance.new("SpecialMesh")
WedgePart399 = Instance.new("WedgePart")
SpecialMesh400 = Instance.new("SpecialMesh")
WedgePart401 = Instance.new("WedgePart")
SpecialMesh402 = Instance.new("SpecialMesh")
WedgePart403 = Instance.new("WedgePart")
SpecialMesh404 = Instance.new("SpecialMesh")
WedgePart405 = Instance.new("WedgePart")
SpecialMesh406 = Instance.new("SpecialMesh")
WedgePart407 = Instance.new("WedgePart")
SpecialMesh408 = Instance.new("SpecialMesh")
Part409 = Instance.new("Part")
BlockMesh410 = Instance.new("BlockMesh")
Part411 = Instance.new("Part")
BlockMesh412 = Instance.new("BlockMesh")
Part413 = Instance.new("Part")
BlockMesh414 = Instance.new("BlockMesh")
Part415 = Instance.new("Part")
BlockMesh416 = Instance.new("BlockMesh")
Part417 = Instance.new("Part")
CylinderMesh418 = Instance.new("CylinderMesh")
Part419 = Instance.new("Part")
CylinderMesh420 = Instance.new("CylinderMesh")
Part421 = Instance.new("Part")
CylinderMesh422 = Instance.new("CylinderMesh")
Part423 = Instance.new("Part")
CylinderMesh424 = Instance.new("CylinderMesh")
Part425 = Instance.new("Part")
CylinderMesh426 = Instance.new("CylinderMesh")
Part427 = Instance.new("Part")
BlockMesh428 = Instance.new("BlockMesh")
WedgePart429 = Instance.new("WedgePart")
SpecialMesh430 = Instance.new("SpecialMesh")
WedgePart431 = Instance.new("WedgePart")
SpecialMesh432 = Instance.new("SpecialMesh")
Part433 = Instance.new("Part")
CylinderMesh434 = Instance.new("CylinderMesh")
Part435 = Instance.new("Part")
CylinderMesh436 = Instance.new("CylinderMesh")
Part437 = Instance.new("Part")
CylinderMesh438 = Instance.new("CylinderMesh")
Part439 = Instance.new("Part")
CylinderMesh440 = Instance.new("CylinderMesh")
Part441 = Instance.new("Part")
CylinderMesh442 = Instance.new("CylinderMesh")
Part443 = Instance.new("Part")
CylinderMesh444 = Instance.new("CylinderMesh")
Part445 = Instance.new("Part")
CylinderMesh446 = Instance.new("CylinderMesh")
Part447 = Instance.new("Part")
CylinderMesh448 = Instance.new("CylinderMesh")
Part449 = Instance.new("Part")
CylinderMesh450 = Instance.new("CylinderMesh")
Part451 = Instance.new("Part")
CylinderMesh452 = Instance.new("CylinderMesh")
Model0.Name = "MAZ-450 Scud Nuclear"
Model0.Parent = mas
Model1.Name = "turret"
Model1.Parent = Model0
Part2.Parent = Model1
Part2.Material = Enum.Material.Metal
Part2.BrickColor = BrickColor.new("Grime")
Part2.Rotation = Vector3.new(0, 90, 0)
Part2.FormFactor = Enum.FormFactor.Plate
Part2.Size = Vector3.new(2, 0.400000006, 3)
Part2.CFrame = CFrame.new(12.8898954, 10.3001108, 38.9598312, 3.06876391e-05, 6.20403944e-06, 1, -3.31463598e-05, 1, -6.68033636e-06, -1, -2.63205093e-05, 2.09769823e-05)
Part2.BackSurface = Enum.SurfaceType.Weld
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.FrontSurface = Enum.SurfaceType.Weld
Part2.LeftSurface = Enum.SurfaceType.Weld
Part2.RightSurface = Enum.SurfaceType.Weld
Part2.TopSurface = Enum.SurfaceType.Weld
Part2.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part2.Position = Vector3.new(12.8898954, 10.3001108, 38.9598312)
Part2.Orientation = Vector3.new(0, 90, 0)
Part2.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh3.Parent = Part2
CylinderMesh3.Scale = Vector3.new(1.79999995, 1, 2)
CylinderMesh3.Scale = Vector3.new(1.79999995, 1, 2)
ObjectValue4.Name = "WER"
ObjectValue4.Parent = Model1
ObjectValue4.Value = Weld12
Part5.Parent = Model1
Part5.Material = Enum.Material.Metal
Part5.BrickColor = BrickColor.new("Grime")
Part5.Rotation = Vector3.new(-90, 0, -180)
Part5.FormFactor = Enum.FormFactor.Custom
Part5.Size = Vector3.new(3, 0.400000006, 0.399999976)
Part5.CFrame = CFrame.new(12.8898659, 10.7001324, 40.1598129, -1, 5.64619597e-07, 6.20732499e-06, 6.68464554e-06, 1.11793124e-05, 1, 1.02754129e-05, 1, -4.35367065e-06)
Part5.BackSurface = Enum.SurfaceType.Weld
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.FrontSurface = Enum.SurfaceType.Weld
Part5.LeftSurface = Enum.SurfaceType.Weld
Part5.RightSurface = Enum.SurfaceType.Weld
Part5.TopSurface = Enum.SurfaceType.Weld
Part5.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part5.Position = Vector3.new(12.8898659, 10.7001324, 40.1598129)
Part5.Orientation = Vector3.new(-90, -180, 0)
Part5.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh6.Parent = Part5
Part7.Parent = Model1
Part7.Material = Enum.Material.Metal
Part7.BrickColor = BrickColor.new("Grime")
Part7.Rotation = Vector3.new(90, 0, -90)
Part7.FormFactor = Enum.FormFactor.Symmetric
Part7.Size = Vector3.new(1, 1, 1)
Part7.CFrame = CFrame.new(13.8899441, 12.0000706, 38.9595375, 4.72349166e-05, 1, -3.85977728e-06, -4.47773564e-05, -4.33497553e-06, -1, -1, 3.75242453e-05, 3.79514786e-05)
Part7.BottomSurface = Enum.SurfaceType.Weld
Part7.TopSurface = Enum.SurfaceType.Weld
Part7.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part7.Position = Vector3.new(13.8899441, 12.0000706, 38.9595375)
Part7.Orientation = Vector3.new(90, 90, 0)
Part7.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh8.Parent = Part7
CylinderMesh8.Scale = Vector3.new(2, 1, 1.79999995)
CylinderMesh8.Scale = Vector3.new(2, 1, 1.79999995)
Part9.Name = "Connector"
Part9.Parent = Model1
Part9.Material = Enum.Material.Metal
Part9.BrickColor = BrickColor.new("Grime")
Part9.Rotation = Vector3.new(0, 90, 0)
Part9.CanCollide = false
Part9.FormFactor = Enum.FormFactor.Symmetric
Part9.Size = Vector3.new(2, 2, 3)
Part9.CFrame = CFrame.new(12.8898888, 9.10011101, 38.9598045, 1.50947981e-05, 5.43772376e-06, 1, -2.21862356e-05, 1, -5.9147028e-06, -1, -1.53604906e-05, 5.38406312e-06)
Part9.BackSurface = Enum.SurfaceType.Weld
Part9.BottomSurface = Enum.SurfaceType.Weld
Part9.LeftSurface = Enum.SurfaceType.Weld
Part9.TopSurface = Enum.SurfaceType.Weld
Part9.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part9.Position = Vector3.new(12.8898888, 9.10011101, 38.9598045)
Part9.Orientation = Vector3.new(0, 90, 0)
Part9.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh10.Parent = Part9
CylinderMesh10.Scale = Vector3.new(1.5, 1, 2)
CylinderMesh10.Scale = Vector3.new(1.5, 1, 2)
Weld11.Parent = Part9
Weld11.C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld12.Parent = Part9
Weld12.C0 = CFrame.new(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld12.Part0 = Part9
Weld12.Part1 = Part79
Part13.Name = "Wpart"
Part13.Parent = Model1
Part13.Material = Enum.Material.Metal
Part13.BrickColor = BrickColor.new("Grime")
Part13.Rotation = Vector3.new(0, 90, 0)
Part13.FormFactor = Enum.FormFactor.Symmetric
Part13.Size = Vector3.new(2, 1, 2)
Part13.CFrame = CFrame.new(14.3899441, 12.0000477, 38.9595566, 1.52723678e-05, 5.4290017e-06, 1, -2.23110437e-05, 1, -5.90597438e-06, -1, -1.54852969e-05, 5.56163559e-06)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.LeftSurface = Enum.SurfaceType.Weld
Part13.RightSurface = Enum.SurfaceType.Weld
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part13.Position = Vector3.new(14.3899441, 12.0000477, 38.9595566)
Part13.Orientation = Vector3.new(0, 90, 0)
Part13.Color = Color3.new(0.498039, 0.556863, 0.392157)
Script14.Parent = Part13
table.insert(cors,sandbox(Script14,function()
b = script.Parent
c = script.Parent.Parent.Connector2

	local weld = Instance.new("Weld")

	weld.Part0 = c
	weld.Part1 = b

	weld.C0 = CFrame.new(0, 0, 1.5)

	weld.Parent = c

script.Parent.Parent.WER2.Value = weld
end))
BlockMesh15.Parent = Part13
Part16.Parent = Model1
Part16.Material = Enum.Material.Metal
Part16.BrickColor = BrickColor.new("Grime")
Part16.Rotation = Vector3.new(90, 0, -90)
Part16.FormFactor = Enum.FormFactor.Symmetric
Part16.Size = Vector3.new(1, 1, 1)
Part16.CFrame = CFrame.new(14.8899441, 12.0000582, 38.9595566, 3.124254e-05, 1, -4.64493451e-06, -3.3536413e-05, -5.12120005e-06, -1, -1, 2.15318451e-05, 2.67105879e-05)
Part16.BottomSurface = Enum.SurfaceType.Weld
Part16.TopSurface = Enum.SurfaceType.Weld
Part16.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part16.Position = Vector3.new(14.8899441, 12.0000582, 38.9595566)
Part16.Orientation = Vector3.new(90, 90, 0)
Part16.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh17.Parent = Part16
CylinderMesh17.Scale = Vector3.new(1.89999998, 1, 1.60000002)
CylinderMesh17.Scale = Vector3.new(1.89999998, 1, 1.60000002)
Part18.Name = "Connector2"
Part18.Parent = Model1
Part18.Material = Enum.Material.Metal
Part18.BrickColor = BrickColor.new("Grime")
Part18.Rotation = Vector3.new(0, 90, 0)
Part18.FormFactor = Enum.FormFactor.Symmetric
Part18.Size = Vector3.new(1, 1, 1)
Part18.CFrame = CFrame.new(12.8899441, 12.0000563, 38.959549, 1.52723678e-05, 5.4290017e-06, 1, -2.23110437e-05, 1, -5.90597438e-06, -1, -1.54852969e-05, 5.56163559e-06)
Part18.BottomSurface = Enum.SurfaceType.Weld
Part18.TopSurface = Enum.SurfaceType.Weld
Part18.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part18.Position = Vector3.new(12.8899441, 12.0000563, 38.959549)
Part18.Orientation = Vector3.new(0, 90, 0)
Part18.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh19.Parent = Part18
Weld20.Parent = Part18
Weld20.C0 = CFrame.new(0, 0, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld21.Parent = Part18
Weld21.C0 = CFrame.new(0, 0, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld22.Parent = Part18
Weld22.C0 = CFrame.new(0, 0, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld22.Part0 = Part18
Weld22.Part1 = Part13
Part23.Parent = Model1
Part23.Material = Enum.Material.Metal
Part23.BrickColor = BrickColor.new("Grime")
Part23.Rotation = Vector3.new(-90, 0, 180)
Part23.FormFactor = Enum.FormFactor.Plate
Part23.Size = Vector3.new(1, 0.400000006, 1.20000005)
Part23.CFrame = CFrame.new(13.8899651, 11.5000286, 37.7595558, -1, -3.11981494e-05, 4.64657705e-06, 5.12284532e-06, 3.350517e-05, 1, -2.14874563e-05, 1, -2.66793468e-05)
Part23.BackSurface = Enum.SurfaceType.Weld
Part23.BottomSurface = Enum.SurfaceType.Weld
Part23.FrontSurface = Enum.SurfaceType.Weld
Part23.LeftSurface = Enum.SurfaceType.Weld
Part23.RightSurface = Enum.SurfaceType.Weld
Part23.TopSurface = Enum.SurfaceType.Smooth
Part23.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part23.Position = Vector3.new(13.8899651, 11.5000286, 37.7595558)
Part23.Orientation = Vector3.new(-90, 180, 0)
Part23.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh24.Parent = Part23
Part25.Parent = Model1
Part25.Material = Enum.Material.Metal
Part25.BrickColor = BrickColor.new("Grime")
Part25.Rotation = Vector3.new(-90, 0, 180)
Part25.FormFactor = Enum.FormFactor.Custom
Part25.Size = Vector3.new(3, 0.400000006, 0.399999976)
Part25.CFrame = CFrame.new(12.8899288, 10.7000723, 37.7598228, -1, -1.52280863e-05, 5.43084116e-06, 5.90815625e-06, -7.7088643e-08, 1, -5.51722951e-06, 1, 6.90283105e-06)
Part25.BackSurface = Enum.SurfaceType.Weld
Part25.BottomSurface = Enum.SurfaceType.Weld
Part25.FrontSurface = Enum.SurfaceType.Weld
Part25.LeftSurface = Enum.SurfaceType.Weld
Part25.RightSurface = Enum.SurfaceType.Weld
Part25.TopSurface = Enum.SurfaceType.Smooth
Part25.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part25.Position = Vector3.new(12.8899288, 10.7000723, 37.7598228)
Part25.Orientation = Vector3.new(-90, 180, 0)
Part25.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh26.Parent = Part25
Part27.Parent = Model1
Part27.Material = Enum.Material.Metal
Part27.BrickColor = BrickColor.new("Grime")
Part27.Rotation = Vector3.new(90, 0, 0)
Part27.FormFactor = Enum.FormFactor.Plate
Part27.Size = Vector3.new(1, 0.400000006, 1)
Part27.CFrame = CFrame.new(13.8899403, 11.6000576, 37.3598328, 1, -1.52945649e-05, -5.42817907e-06, -5.90515128e-06, 2.23266634e-05, -1, 5.5838309e-06, 1, 1.55009166e-05)
Part27.BackSurface = Enum.SurfaceType.Weld
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.FrontSurface = Enum.SurfaceType.Weld
Part27.LeftSurface = Enum.SurfaceType.Weld
Part27.RightSurface = Enum.SurfaceType.Weld
Part27.TopSurface = Enum.SurfaceType.Weld
Part27.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part27.Position = Vector3.new(13.8899403, 11.6000576, 37.3598328)
Part27.Orientation = Vector3.new(90, 0, 0)
Part27.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh28.Parent = Part27
CylinderMesh28.Offset = Vector3.new(0, 1.60000002, 0)
CylinderMesh28.Scale = Vector3.new(0.800000012, 8, 2)
CylinderMesh28.Scale = Vector3.new(0.800000012, 8, 2)
Part29.Parent = Model1
Part29.Material = Enum.Material.Metal
Part29.BrickColor = BrickColor.new("Grime")
Part29.Rotation = Vector3.new(180, 0, -180)
Part29.FormFactor = Enum.FormFactor.Plate
Part29.Size = Vector3.new(1, 0.800000012, 1)
Part29.CFrame = CFrame.new(13.8901453, 7.60008192, 38.9598312, -1, 6.80900757e-06, -1.28170986e-05, 7.24961728e-06, 1, -3.05093963e-05, 2.17730885e-05, -2.42142978e-05, -1)
Part29.BackSurface = Enum.SurfaceType.Weld
Part29.BottomSurface = Enum.SurfaceType.Weld
Part29.FrontSurface = Enum.SurfaceType.Weld
Part29.LeftSurface = Enum.SurfaceType.Weld
Part29.RightSurface = Enum.SurfaceType.Weld
Part29.TopSurface = Enum.SurfaceType.Smooth
Part29.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part29.Position = Vector3.new(13.8901453, 7.60008192, 38.9598312)
Part29.Orientation = Vector3.new(0, -180, 0)
Part29.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh30.Parent = Part29
Part31.Parent = Model1
Part31.Material = Enum.Material.Metal
Part31.BrickColor = BrickColor.new("Grime")
Part31.FormFactor = Enum.FormFactor.Plate
Part31.Size = Vector3.new(1, 0.800000012, 1)
Part31.CFrame = CFrame.new(11.8901434, 7.60010433, 38.9599037, 1, 6.32152023e-06, 2.89539616e-06, -6.78039805e-06, 1, 3.84974592e-05, -1.22286801e-05, -3.19370556e-05, 1)
Part31.BackSurface = Enum.SurfaceType.Weld
Part31.BottomSurface = Enum.SurfaceType.Weld
Part31.FrontSurface = Enum.SurfaceType.Weld
Part31.LeftSurface = Enum.SurfaceType.Weld
Part31.RightSurface = Enum.SurfaceType.Weld
Part31.TopSurface = Enum.SurfaceType.Smooth
Part31.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part31.Position = Vector3.new(11.8901434, 7.60010433, 38.9599037)
Part31.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh32.Parent = Part31
ObjectValue33.Name = "WER2"
ObjectValue33.Parent = Model1
ObjectValue33.Value = Weld22
VehicleSeat34.Parent = Model1
VehicleSeat34.BrickColor = BrickColor.new("Really red")
VehicleSeat34.Rotation = Vector3.new(0, 90, 0)
VehicleSeat34.Size = Vector3.new(2, 0.400000006, 2)
VehicleSeat34.CFrame = CFrame.new(-23.1100998, 4.80056763, 33.6601639, -1.67083635e-05, 6.97150199e-06, 1, -2.32027105e-07, 0.999991715, -7.13226291e-06, -1.00000143, 1.9876245e-06, -2.00193008e-05)
VehicleSeat34.TopSurface = Enum.SurfaceType.Weld
VehicleSeat34.HeadsUpDisplay = false
VehicleSeat34.MaxSpeed = 50
VehicleSeat34.Color = Color3.new(1, 0, 0)
VehicleSeat34.Position = Vector3.new(-23.1100998, 4.80056763, 33.6601639)
VehicleSeat34.Orientation = Vector3.new(0, 90, 0)
VehicleSeat34.Color = Color3.new(1, 0, 0)
Sound35.Name = "Swiv"
Sound35.Parent = VehicleSeat34
Sound35.Pitch = 0.69999998807907
Sound35.SoundId = "http://www.roblox.com/asset/?id=31245465"
Sound35.Volume = 0
Sound35.PlayOnRemove = true
Script36.Name = "Control"
Script36.Parent = VehicleSeat34
table.insert(cors,sandbox(Script36,function()
while true do
wait()
if script.Parent.Steer == 2 then
script.Parent.Swiv:play()
script.Parent.Parent.WER.Value.C0 = script.Parent.Parent.WER.Value.C0 * CFrame.fromEulerAnglesXYZ(0,0.01,0)
elseif script.Parent.Steer == -2 then
script.Parent.Swiv:play()
script.Parent.Parent.WER.Value.C0 = script.Parent.Parent.WER.Value.C0 * CFrame.fromEulerAnglesXYZ(0,-0.01,0)
elseif script.Parent.Steer == 0 and script.Parent.Throttle == 0 then
script.Parent.Swiv:pause()
end
end

end))
Script37.Name = "Control2"
Script37.Parent = VehicleSeat34
table.insert(cors,sandbox(Script37,function()
angle = 0

while true do
wait()
if script.Parent.Throttle == 1 and angle < 160 then
script.Parent.Swiv:play()
angle = angle + 1
script.Parent.Angle.Value = angle
script.Parent.Parent.WER2.Value.C0 = script.Parent.Parent.WER2.Value.C0 * CFrame.fromEulerAnglesXYZ(-0.01,0,0)
elseif script.Parent.Throttle == -1 and angle > 0 then
script.Parent.Swiv:play()
angle = angle - 1
script.Parent.Angle.Value = angle
script.Parent.Parent.WER2.Value.C0 = script.Parent.Parent.WER2.Value.C0 * CFrame.fromEulerAnglesXYZ(0.01,0,0)
end
end

end))
BlockMesh38.Parent = VehicleSeat34
Script39.Name = "Pickup"
Script39.Parent = VehicleSeat34
table.insert(cors,sandbox(Script39,function()
script.Parent.ChildAdded:connect(function(w)
print("ChildAdded")
if w.className=="Weld" then
print("IsAWeld")
if w.Name=="SeatWeld" then
print("IsASeatWeld")
if w.Part1.Parent:findFirstChild("Humanoid")~=nil then
print("IsAHumanoid")
pl=game.Players:GetPlayerFromCharacter(w.Part1.Parent)
if pl~=nil then
print("IsAPlayer")
if pl.PlayerGui:findFirstChild("VehicleGui")~=nil then
print("found vehicle gui - deleting")
pl.PlayerGui:findFirstChild("VehicleGui").Parent=nil
print("deleted")
else
print("no gui found - adding")
newgui=script.Parent.VehicleGui:clone()
newgui.Parent=pl.PlayerGui
newgui.Vehicle.Value=script.Parent.Parent
print("added")
end
end
end
end
end
end)

script.Parent.ChildRemoved:connect(function(w)
print("ChildRemoved")
if w.className=="Weld" then
print("IsAWeld")
if w.Name=="SeatWeld" then
print("IsASeatWeld")
if w.Part1.Parent:findFirstChild("Humanoid")~=nil then
print("IsAHumanoid")
pl=game.Players:GetPlayerFromCharacter(w.Part1.Parent)
if pl~=nil then
print("IsAPlayer")
if pl.PlayerGui:findFirstChild("VehicleGui")~=nil then
print("found vehicle gui - deleting")
pl.PlayerGui:findFirstChild("VehicleGui").Parent=nil
print("deleted")
else
print("no gui found - wierd...")
end
end
end
end
end
end)


end))
ScreenGui40.Name = "VehicleGui"
ScreenGui40.Parent = VehicleSeat34
Frame41.Parent = ScreenGui40
Frame41.Transparency = 1
Frame41.Size = UDim2.new(0.200000003, 0, 0.0500000007, 0)
Frame41.Position = UDim2.new(0, 0, 0.800000012, 0)
Frame41.BackgroundColor3 = Color3.new(0.905882, 0.905882, 0.905882)
Frame41.BackgroundTransparency = 1
Frame41.BorderColor3 = Color3.new(0, 0, 0)
TextButton42.Name = "Machine"
TextButton42.Parent = Frame41
TextButton42.Transparency = 1
TextButton42.Size = UDim2.new(1, 0, 2, 0)
TextButton42.Style = Enum.ButtonStyle.RobloxButtonDefault
TextButton42.Text = "Machine Guns"
TextButton42.Position = UDim2.new(2, 0, -1, 0)
TextButton42.Active = false
TextButton42.Visible = false
TextButton42.BackgroundColor3 = Color3.new(0, 0, 1)
TextButton42.BackgroundTransparency = 1
TextButton42.BorderColor3 = Color3.new(0, 0, 0)
TextButton42.AutoButtonColor = false
TextButton42.FontSize = Enum.FontSize.Size24
TextButton42.TextColor3 = Color3.new(1, 1, 1)
TextButton43.Name = "SABOT"
TextButton43.Parent = Frame41
TextButton43.Transparency = 0.5
TextButton43.Size = UDim2.new(2, 0, 2, 0)
TextButton43.Text = "Launch Cruise Missile"
TextButton43.Position = UDim2.new(0.0350000001, 0, 1.5, 0)
TextButton43.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton43.BackgroundTransparency = 0.5
TextButton43.BorderColor3 = Color3.new(0, 0, 0)
TextButton43.Font = Enum.Font.ArialBold
TextButton43.FontSize = Enum.FontSize.Size36
TextButton43.TextColor3 = Color3.new(1, 1, 1)
TextButton43.TextStrokeTransparency = 0
TextButton44.Name = "SMOKE"
TextButton44.Parent = Frame41
TextButton44.Size = UDim2.new(2, 0, 2, 0)
TextButton44.Style = Enum.ButtonStyle.RobloxButtonDefault
TextButton44.Text = "Fire SMOKE"
TextButton44.Position = UDim2.new(0.0500000007, 0, -3, 0)
TextButton44.Visible = false
TextButton44.BackgroundColor3 = Color3.new(0, 0, 1)
TextButton44.BorderColor3 = Color3.new(0, 0, 0)
TextButton44.FontSize = Enum.FontSize.Size48
TextButton44.TextColor3 = Color3.new(1, 1, 1)
TextButton45.Name = "HEAT"
TextButton45.Parent = Frame41
TextButton45.Transparency = 0.5
TextButton45.Size = UDim2.new(2, 0, 2, 0)
TextButton45.Text = "Fire 155mm Howitzer"
TextButton45.Position = UDim2.new(0.0250000115, 0, -1, 0)
TextButton45.Visible = false
TextButton45.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton45.BackgroundTransparency = 0.5
TextButton45.BorderColor3 = Color3.new(0, 0, 0)
TextButton45.Font = Enum.Font.ArialBold
TextButton45.FontSize = Enum.FontSize.Size36
TextButton45.TextColor3 = Color3.new(1, 1, 1)
Script46.Parent = Frame41
table.insert(cors,sandbox(Script46,function()
repeat wait() until script.Parent.Parent.Vehicle.Value~=nil

db=false
held=false

v = script.Parent.Parent.Vehicle
f = script.Parent
sabot = script.Parent.SABOT
enable = script.Parent.Parent.red_roof
fakemiss = v.Value.FakeMissile

function launchsabot()
enable.Visible = true
v.Value.Effect.Smoke.Enabled = true
v.Value.Effect.Fire:Play()
v.Value.Effect.Transparency = .5
local v1=v.Value.Missile:clone()
v1.CFrame = v.Value.Missile.CFrame * CFrame.new(0, 0, -5)
v1.Smoke.Enabled = true
v1.Smoke1.Enabled = true
v1.Smoke2.Enabled = true
v1.Smoke3.Enabled = true
v1.Smoke4.Enabled = true
v1.Fire.Enabled = true
v1.Spark.Enabled = true
fakemiss:remove()
local vel=Instance.new("BodyVelocity")
vel.Parent=v1
v1.Velocity=v1.CFrame.lookVector*150
vel.velocity=v1.Velocity
v1.CanCollide=false
v1.Transparency= 0
v1.Parent=workspace
wait(12)
v1:remove()
v.Value.Effect.Transparency = 1
v.Value.Effect.Smoke.Enabled = false
wait(7)
v1:remove()
sabot.Visible = false
end

function sabotclick()
print("click missile")
if db==true then return end
db=true
sabot.Text="Reloading..."
launchsabot()
sabot.Visible = false
db=false
end

sabot.MouseButton1Click:connect(sabotclick)





end))
ObjectValue47.Name = "Vehicle"
ObjectValue47.Parent = ScreenGui40
Frame48.Name = "CoordinateModule"
Frame48.Parent = ScreenGui40
Frame48.Transparency = 1
Frame48.Size = UDim2.new(0, 100, 0, 100)
Frame48.Position = UDim2.new(0, 50, 0, 400)
Frame48.BackgroundColor3 = Color3.new(1, 1, 1)
Frame48.BackgroundTransparency = 1
TextButton49.Name = "AddVariableX"
TextButton49.Parent = Frame48
TextButton49.Size = UDim2.new(0, 20, 0, 20)
TextButton49.Style = Enum.ButtonStyle.RobloxButton
TextButton49.Text = "+"
TextButton49.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton49.Font = Enum.Font.SourceSans
TextButton49.FontSize = Enum.FontSize.Size36
TextButton49.TextColor3 = Color3.new(1, 1, 1)
Script50.Parent = TextButton49
table.insert(cors,sandbox(Script50,function()
x = script.Parent.Parent.VariableX
vx = script.Parent.Parent.Variable1

function onButtonClicked()
x.Value = x.Value + 10
vx.Text="x:("..tostring(x.Value)..")"
end
script.Parent.MouseButton1Click:connect(onButtonClicked)
end))
TextButton51.Name = "SubtractVariableX"
TextButton51.Parent = Frame48
TextButton51.Size = UDim2.new(0, 20, 0, 20)
TextButton51.Style = Enum.ButtonStyle.RobloxButton
TextButton51.Text = "-"
TextButton51.Position = UDim2.new(0, 30, 0, 0)
TextButton51.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton51.Font = Enum.Font.SourceSans
TextButton51.FontSize = Enum.FontSize.Size36
TextButton51.TextColor3 = Color3.new(1, 1, 1)
Script52.Parent = TextButton51
table.insert(cors,sandbox(Script52,function()
x = script.Parent.Parent.VariableX
vx = script.Parent.Parent.Variable1

function onButtonClicked()
x.Value = x.Value - 10
vx.Text="x:("..tostring(x.Value)..")"
end
script.Parent.MouseButton1Click:connect(onButtonClicked)
end))
TextLabel53.Name = "Variable1"
TextLabel53.Parent = Frame48
TextLabel53.Size = UDim2.new(0, 150, 0, 20)
TextLabel53.Text = "x:(0)"
TextLabel53.Position = UDim2.new(0, 60, 0, 0)
TextLabel53.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel53.Font = Enum.Font.ArialBold
TextLabel53.FontSize = Enum.FontSize.Size14
TextLabel53.TextColor3 = Color3.new(1, 1, 1)
TextButton54.Name = "AddVariableZ"
TextButton54.Parent = Frame48
TextButton54.Size = UDim2.new(0, 20, 0, 20)
TextButton54.Style = Enum.ButtonStyle.RobloxButton
TextButton54.Text = "+"
TextButton54.Position = UDim2.new(0, 0, 0, 30)
TextButton54.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton54.Font = Enum.Font.SourceSans
TextButton54.FontSize = Enum.FontSize.Size36
TextButton54.TextColor3 = Color3.new(1, 1, 1)
Script55.Parent = TextButton54
table.insert(cors,sandbox(Script55,function()
z = script.Parent.Parent.VariableZ
vz = script.Parent.Parent.Variable2

function onButtonClicked()
z.Value = z.Value + 10
vz.Text="z:("..tostring(z.Value)..")"
end
script.Parent.MouseButton1Click:connect(onButtonClicked)
end))
TextButton56.Name = "SubtractVariableZ"
TextButton56.Parent = Frame48
TextButton56.Size = UDim2.new(0, 20, 0, 20)
TextButton56.Style = Enum.ButtonStyle.RobloxButton
TextButton56.Text = "-"
TextButton56.Position = UDim2.new(0, 30, 0, 30)
TextButton56.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton56.Font = Enum.Font.SourceSans
TextButton56.FontSize = Enum.FontSize.Size36
TextButton56.TextColor3 = Color3.new(1, 1, 1)
Script57.Parent = TextButton56
table.insert(cors,sandbox(Script57,function()
z = script.Parent.Parent.VariableZ
vz = script.Parent.Parent.Variable2

function onButtonClicked()
z.Value = z.Value - 10
vz.Text="z:("..tostring(z.Value)..")"
end
script.Parent.MouseButton1Click:connect(onButtonClicked)
end))
TextLabel58.Name = "Variable2"
TextLabel58.Parent = Frame48
TextLabel58.Size = UDim2.new(0, 150, 0, 20)
TextLabel58.Text = "y:(0)"
TextLabel58.Position = UDim2.new(0, 60, 0, 30)
TextLabel58.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel58.Font = Enum.Font.ArialBold
TextLabel58.FontSize = Enum.FontSize.Size14
TextLabel58.TextColor3 = Color3.new(1, 1, 1)
NumberValue59.Name = "VariableX"
NumberValue59.Parent = Frame48
NumberValue60.Name = "VariableY"
NumberValue60.Parent = Frame48
NumberValue61.Name = "VariableZ"
NumberValue61.Parent = Frame48
Frame62.Name = "MeterModule"
Frame62.Parent = ScreenGui40
Frame62.Size = UDim2.new(0, 100, 0, 160)
Frame62.Position = UDim2.new(0, 50, 0, 230)
Frame62.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
TextLabel63.Name = "S1A"
TextLabel63.Parent = Frame62
TextLabel63.Size = UDim2.new(0, 95, 0, 30)
TextLabel63.Text = "STAGE 1"
TextLabel63.Position = UDim2.new(0.0250000004, 0, 0.0250000004, 0)
TextLabel63.BackgroundColor3 = Color3.new(0.576471, 0.333333, 0.407843)
TextLabel63.Font = Enum.Font.ArialBold
TextLabel63.FontSize = Enum.FontSize.Size18
TextLabel64.Name = "S2A"
TextLabel64.Parent = Frame62
TextLabel64.Size = UDim2.new(0, 95, 0, 30)
TextLabel64.Text = "STAGE 2"
TextLabel64.Position = UDim2.new(0.0250000004, 0, 0.25, 1)
TextLabel64.BackgroundColor3 = Color3.new(0.576471, 0.333333, 0.407843)
TextLabel64.Font = Enum.Font.ArialBold
TextLabel64.FontSize = Enum.FontSize.Size18
TextLabel65.Name = "S3A"
TextLabel65.Parent = Frame62
TextLabel65.Size = UDim2.new(0, 95, 0, 30)
TextLabel65.Text = "STAGE 3"
TextLabel65.Position = UDim2.new(0.0250000004, 0, 0.5, 1)
TextLabel65.BackgroundColor3 = Color3.new(0.576471, 0.333333, 0.407843)
TextLabel65.Font = Enum.Font.ArialBold
TextLabel65.FontSize = Enum.FontSize.Size18
TextLabel66.Name = "S4A"
TextLabel66.Parent = Frame62
TextLabel66.Size = UDim2.new(0, 95, 0, 30)
TextLabel66.Text = "STAGE 4"
TextLabel66.Position = UDim2.new(0.0250000004, 0, 0.75, 1)
TextLabel66.BackgroundColor3 = Color3.new(0.576471, 0.333333, 0.407843)
TextLabel66.Font = Enum.Font.ArialBold
TextLabel66.FontSize = Enum.FontSize.Size18
TextLabel67.Name = "S1B"
TextLabel67.Parent = Frame62
TextLabel67.Size = UDim2.new(0, 95, 0, 30)
TextLabel67.Text = "STAGE 1"
TextLabel67.Position = UDim2.new(0.0250000004, 0, 0.0250000004, 0)
TextLabel67.Visible = false
TextLabel67.BackgroundColor3 = Color3.new(0.196078, 0.576471, 0.0901961)
TextLabel67.Font = Enum.Font.ArialBold
TextLabel67.FontSize = Enum.FontSize.Size18
TextLabel68.Name = "S2B"
TextLabel68.Parent = Frame62
TextLabel68.Size = UDim2.new(0, 95, 0, 30)
TextLabel68.Text = "STAGE 2"
TextLabel68.Position = UDim2.new(0.0250000004, 0, 0.25, 1)
TextLabel68.Visible = false
TextLabel68.BackgroundColor3 = Color3.new(0.196078, 0.576471, 0.0901961)
TextLabel68.Font = Enum.Font.ArialBold
TextLabel68.FontSize = Enum.FontSize.Size18
TextLabel69.Name = "S3B"
TextLabel69.Parent = Frame62
TextLabel69.Size = UDim2.new(0, 95, 0, 30)
TextLabel69.Text = "STAGE 3"
TextLabel69.Position = UDim2.new(0.0250000004, 0, 0.5, 1)
TextLabel69.Visible = false
TextLabel69.BackgroundColor3 = Color3.new(0.196078, 0.576471, 0.0901961)
TextLabel69.Font = Enum.Font.ArialBold
TextLabel69.FontSize = Enum.FontSize.Size18
TextLabel70.Name = "S4B"
TextLabel70.Parent = Frame62
TextLabel70.Size = UDim2.new(0, 95, 0, 30)
TextLabel70.Text = "STAGE 4"
TextLabel70.Position = UDim2.new(0.0250000004, 0, 0.75, 1)
TextLabel70.Visible = false
TextLabel70.BackgroundColor3 = Color3.new(0.196078, 0.576471, 0.0901961)
TextLabel70.Font = Enum.Font.ArialBold
TextLabel70.FontSize = Enum.FontSize.Size18
TextButton71.Name = "red_roof"
TextButton71.Parent = ScreenGui40
TextButton71.Transparency = 0.5
TextButton71.Size = UDim2.new(0, 100, 0, 20)
TextButton71.Text = "ENABLE"
TextButton71.Position = UDim2.new(0, 270, 0, 400)
TextButton71.Visible = false
TextButton71.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton71.BackgroundTransparency = 0.5
TextButton71.Font = Enum.Font.ArialBold
TextButton71.FontSize = Enum.FontSize.Size14
TextButton71.TextColor3 = Color3.new(1, 1, 1)
TextButton71.TextStrokeTransparency = 0
Script72.Parent = TextButton71
table.insert(cors,sandbox(Script72,function()
repeat wait() until script.Parent.Parent.Vehicle.Value~=nil

db=false
held=false

v = script.Parent.Parent.Vehicle
vz = script.Parent.Parent.CoordinateModule.VariableZ
vx = script.Parent.Parent.CoordinateModule.VariableX
vy = script.Parent.Parent.CoordinateModule.VariableY
wh = v.Value.Warhead
mm = script.Parent.Parent.MeterModule

function stage1()
	script.Parent.Visible = false
	mm.S1A.Visible = false
	mm.S1B.Visible = true
end

function stage2()
	mm.S1B.Visible = false
	mm.S1A.Visible = true
	mm.S2A.Visible = false
	mm.S2B.Visible = true
end

function stage3()
	mm.S2B.Visible = false
	mm.S2A.Visible = true
	mm.S3A.Visible = false
	mm.S3B.Visible = true
end

function stage4()
	mm.S3B.Visible = false
	mm.S3A.Visible = true
	mm.S4A.Visible = false
	mm.S4B.Visible = true	
end

function impact()
	wh.CFrame = CFrame.new((vx.Value), 1000, (vz.Value))
	wait(0.1)
	wh.Anchored = false
	wh.Transparency = 0
	wh.Touch.Disabled = false
	wh.Smoke.Enabled = true
	wh.Smoke2.Enabled = true
	wh.Smoke3.Enabled = true
	wh.Smoke4.Enabled = true
	wh.Light.Enabled = true
	wh.CanCollide = true
	local vel=Instance.new("BodyVelocity")
	vel.Parent=wh
	wh.Velocity=wh.CFrame.lookVector*60
	vel.velocity=wh.Velocity
end

function onButtonClicked()
	stage1()
	wait(5)
	stage2()
	wait(5)
	stage3()
	wait(5)
	stage4()
	wait(3)	
	mm.S4B.Visible = false
	mm.S4A.Visible = true
	impact()
end

script.Parent.MouseButton1Click:connect(onButtonClicked)
end))
Script73.Name = "MainFrame"
Script73.Parent = ScreenGui40
Script73.Disabled = true
table.insert(cors,sandbox(Script73,function()
repeat wait() until script.Parent.Parent.Vehicle.Value~=nil

db=false
held=false

v = script.Parent.Vehicle
vs = v.Value.VehicleSeat
mm = script.Parent.MeterModule
cm = script.Parent.CoordinateModule
fire = script.Parent.Frame
enable = script.Parent.red_roof
angle = vs.Angle

if angle.Value > 159 then
	mm.Visible = true
	cm.Visible = true
	fire.Visible = true
	enable.Visible = true
end

if angle.Value < 160 then
	mm.Visible = false
	cm.Visible = false
	fire.Visible = false
	enable.Visible = false
end

end))
NumberValue74.Name = "Angle"
NumberValue74.Parent = VehicleSeat34
Part75.Parent = Model1
Part75.Material = Enum.Material.Metal
Part75.BrickColor = BrickColor.new("Grime")
Part75.Rotation = Vector3.new(0, -90, 0)
Part75.FormFactor = Enum.FormFactor.Plate
Part75.Size = Vector3.new(1.80000007, 0.800000012, 1)
Part75.CFrame = CFrame.new(12.8898983, 7.6000824, 38.9598885, 1.79557064e-05, 9.34016316e-06, -1, 5.58539214e-05, 1, 9.81848007e-06, 1, -4.90284801e-05, 2.76660649e-05)
Part75.BackSurface = Enum.SurfaceType.Weld
Part75.BottomSurface = Enum.SurfaceType.Weld
Part75.FrontSurface = Enum.SurfaceType.Weld
Part75.LeftSurface = Enum.SurfaceType.Weld
Part75.RightSurface = Enum.SurfaceType.Weld
Part75.TopSurface = Enum.SurfaceType.Smooth
Part75.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part75.Position = Vector3.new(12.8898983, 7.6000824, 38.9598885)
Part75.Orientation = Vector3.new(0, -90, 0)
Part75.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh76.Parent = Part75
BlockMesh76.Scale = Vector3.new(1.29999995, 1, 1)
BlockMesh76.Scale = Vector3.new(1.29999995, 1, 1)
Part77.Name = "BarrelPart"
Part77.Parent = Model1
Part77.Material = Enum.Material.Metal
Part77.BrickColor = BrickColor.new("Grime")
Part77.Rotation = Vector3.new(180, -90, 0)
Part77.FormFactor = Enum.FormFactor.Custom
Part77.Size = Vector3.new(2, 0.200000003, 2)
Part77.CFrame = CFrame.new(12.3898935, 10.6001215, 38.9598274, -5.20252797e-07, -4.67066002e-06, -1, -1.12105145e-05, -1, 5.14798012e-06, -1, 4.38485722e-06, 1.02310514e-05)
Part77.BackSurface = Enum.SurfaceType.Weld
Part77.BottomSurface = Enum.SurfaceType.Smooth
Part77.FrontSurface = Enum.SurfaceType.Weld
Part77.LeftSurface = Enum.SurfaceType.Weld
Part77.RightSurface = Enum.SurfaceType.Weld
Part77.TopSurface = Enum.SurfaceType.Weld
Part77.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part77.Position = Vector3.new(12.3898935, 10.6001215, 38.9598274)
Part77.Orientation = Vector3.new(0, -90, -180)
Part77.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh78.Parent = Part77
Part79.Name = "Swivel"
Part79.Parent = Model1
Part79.Material = Enum.Material.Metal
Part79.BrickColor = BrickColor.new("Grime")
Part79.Rotation = Vector3.new(0, 90, 0)
Part79.CanCollide = false
Part79.FormFactor = Enum.FormFactor.Custom
Part79.Size = Vector3.new(3, 0.200000003, 3)
Part79.CFrame = CFrame.new(12.889883, 8.10011101, 38.9598198, 1.50947981e-05, 5.43772376e-06, 1, -2.21862356e-05, 1, -5.9147028e-06, -1, -1.53604906e-05, 5.38406312e-06)
Part79.BottomSurface = Enum.SurfaceType.Weld
Part79.RightSurface = Enum.SurfaceType.Weld
Part79.TopSurface = Enum.SurfaceType.Weld
Part79.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part79.Position = Vector3.new(12.889883, 8.10011101, 38.9598198)
Part79.Orientation = Vector3.new(0, 90, 0)
Part79.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh80.Parent = Part79
CylinderMesh80.Offset = Vector3.new(0, -0.100000001, 0)
CylinderMesh80.Scale = Vector3.new(1, 1.5, 0.949999988)
CylinderMesh80.Scale = Vector3.new(1, 1.5, 0.949999988)
Script81.Parent = Part79
table.insert(cors,sandbox(Script81,function()
b = script.Parent
c = script.Parent.Parent.Connector

	local weld = Instance.new("Weld")

	weld.Part0 = c
	weld.Part1 = b

	weld.C0 = CFrame.new(0, -1, 0)

	weld.Parent = c

script.Parent.Parent.WER.Value = weld
end))
Part82.Name = "Missile"
Part82.Parent = Model1
Part82.Material = Enum.Material.SmoothPlastic
Part82.BrickColor = BrickColor.new("Quill grey")
Part82.Transparency = 1
Part82.Rotation = Vector3.new(180, 90, 0)
Part82.FormFactor = Enum.FormFactor.Symmetric
Part82.Size = Vector3.new(2.20000005, 1, 2)
Part82.CFrame = CFrame.new(-23.0097218, 11.8003483, 38.8605461, -1.99113638e-05, -5.20105959e-06, 1, 2.55717896e-05, -1, -6.13996826e-06, 1, 1.21387684e-05, 8.00541045e-07)
Part82.BottomSurface = Enum.SurfaceType.Weld
Part82.TopSurface = Enum.SurfaceType.Weld
Part82.Color = Color3.new(0.87451, 0.87451, 0.870588)
Part82.Position = Vector3.new(-23.0097218, 11.8003483, 38.8605461)
Part82.Orientation = Vector3.new(0, 90, 180)
Part82.Color = Color3.new(0.87451, 0.87451, 0.870588)
Fire83.Parent = Part82
Fire83.Size = 30
Fire83.Color = Color3.new(0.92549, 0.545098, 0.27451)
Fire83.Enabled = false
Fire83.Heat = 0
Fire83.SecondaryColor = Color3.new(0.545098, 0.313726, 0.215686)
Fire83.Color = Color3.new(0.92549, 0.545098, 0.27451)
Smoke84.Parent = Part82
Smoke84.Size = 15
Smoke84.Enabled = false
Smoke84.Opacity = 1
Smoke84.RiseVelocity = 25
Smoke85.Name = "Smoke1"
Smoke85.Parent = Part82
Smoke85.Size = 15
Smoke85.Enabled = false
Smoke85.Opacity = 1
Smoke85.RiseVelocity = 25
Smoke86.Name = "Smoke2"
Smoke86.Parent = Part82
Smoke86.Size = 15
Smoke86.Enabled = false
Smoke86.Opacity = 1
Smoke86.RiseVelocity = 25
Smoke87.Name = "Smoke3"
Smoke87.Parent = Part82
Smoke87.Size = 15
Smoke87.Enabled = false
Smoke87.Opacity = 1
Smoke87.RiseVelocity = 25
Smoke88.Name = "Smoke4"
Smoke88.Parent = Part82
Smoke88.Size = 15
Smoke88.Enabled = false
Smoke88.Opacity = 1
Smoke88.RiseVelocity = 25
BillboardGui89.Name = "Spark"
BillboardGui89.Parent = Part82
BillboardGui89.Size = UDim2.new(35, 0, 35, 0)
BillboardGui89.Enabled = false
BillboardGui89.Active = true
ImageLabel90.Name = "Light"
ImageLabel90.Parent = BillboardGui89
ImageLabel90.Transparency = 1
ImageLabel90.Size = UDim2.new(1, 0, 1, 0)
ImageLabel90.Active = true
ImageLabel90.BackgroundColor3 = Color3.new(0.756863, 0.752941, 0.764706)
ImageLabel90.BackgroundTransparency = 1
ImageLabel90.Image = "http://www.roblox.com/asset/?id=43708803"
Script91.Parent = BillboardGui89
table.insert(cors,sandbox(Script91,function()
script.Parent.Adornee = script.Parent.Parent
end))
SpecialMesh92.Parent = Part82
SpecialMesh92.MeshId = "http://www.roblox.com/asset/?id=74333739"
SpecialMesh92.Scale = Vector3.new(24, 24, 24)
SpecialMesh92.MeshType = Enum.MeshType.FileMesh
SpecialMesh92.Scale = Vector3.new(24, 24, 24)
Script93.Name = "Sabot"
Script93.Parent = Part82
Script93.Disabled = true
table.insert(cors,sandbox(Script93,function()
wait(.1)
function onTouch(hit)
script.Parent.Anchored = true
script.Parent.Parent = Workspace
script.Parent.Transparency = 1
wait()
script.Parent.Atom.Disabled = false
end

script.Parent.Touched:connect(onTouch)
end))
Script94.Name = "Atom"
Script94.Parent = Part82
Script94.Disabled = true
table.insert(cors,sandbox(Script94,function()
print("Nuke Em' All")

local CloudID= "http://www.roblox.com/asset/?id=1095708"
local ColorTexture = "http://www.roblox.com/asset/?ID=1361097"
local RingID = "http://www.roblox.com/asset/?id=3270017"
local SphereID = "http://www.roblox.com/asset/?id=1185246"

local BasePosition = script.Parent.Position

local Size = 50

local Exp = Instance.new("Model")
Exp.Name = "ATOMICEXPLOSION"
Exp.Parent = game.Workspace

local BasePart = Instance.new("Part")
BasePart.formFactor = 0
BasePart.TopSurface = 0
BasePart.BottomSurface = 0
BasePart.Anchored = true
BasePart.Locked = true
BasePart.CanCollide = false

local BaseMesh = Instance.new("SpecialMesh")
BaseMesh.MeshType = "FileMesh"

local CloudMesh = BaseMesh:clone()
CloudMesh.MeshId = CloudID
CloudMesh.TextureId = ColorTexture
CloudMesh.VertexColor = Vector3.new(0.9,0.6,0)

local RingMesh = BaseMesh:clone()
RingMesh.MeshId = RingID

local SphereMesh = BaseMesh:clone()
SphereMesh.MeshId = SphereID

local Clouds = {}
local ShockWave = {}
local Sky = script.Sky


function Effects()
	script.Explode:Play()
	delay(0,function() 
		for i = 5, 1,-0.01 do
			wait()
			game.Lighting.Brightness = i
		end
	end)
end

function Destruction(Pos,Radius)
	local function Destroy(Model)
		for i ,v in ipairs(Model:getChildren()) do
			if v:isA("BasePart") then
				if (v.Position-Pos).magnitude < Radius then
					if v.Anchored == false then
						v:BreakJoints()
						v.Velocity = CFrame.new(v.Position,Pos):vectorToWorldSpace(Vector3.new(math.random(-5,5),5,1000))
						v.Material = "CorrodedMetal"
					end	
				end
			end
			if #v:getChildren() > 0 then
				Destroy(v)
			end
		end
	end
	Destroy(game.Workspace)
end
function Explode(Pos)

local Base = BasePart:clone()
Base.Position = Pos
	
local Mesh = CloudMesh:clone()
Mesh.Parent = Base 
Mesh.Scale = Vector3.new(2.5,1,4.5)

local PoleBase = BasePart:clone()
PoleBase.Position = Pos+Vector3.new(0,0.1,0)

local PoleBaseMesh = CloudMesh:clone()
PoleBaseMesh.Scale = Vector3.new(1.25,2,2.5)
PoleBaseMesh.Parent = PoleBase

local Cloud1 = BasePart:clone()
Cloud1.Position = Pos+Vector3.new(0,0.75,0)

local Cloud1Mesh = CloudMesh:clone()
Cloud1Mesh.Scale = Vector3.new(0.5,3,1)
Cloud1Mesh.Parent = Cloud1
	
local Cloud2 = BasePart:clone()
Cloud2.Position = Pos+Vector3.new(0,1.25,0)
	
local Cloud2Mesh = CloudMesh:clone()
Cloud2Mesh.Scale = Vector3.new(0.5,1.5,1)
Cloud2Mesh.Parent = Cloud2

local Cloud3 = BasePart:clone()
Cloud3.Position = Pos+Vector3.new(0,1.7,0)
	
local Cloud3Mesh = CloudMesh:clone()
Cloud3Mesh.Scale = Vector3.new(0.5,1.5,1)
Cloud3Mesh.Parent = Cloud3

local PoleRing = BasePart:clone()
PoleRing.Position = Pos+Vector3.new(0,1.3,0)
PoleRing.Transparency = 0.2
PoleRing.BrickColor = BrickColor.new("Dark stone grey")
PoleRing.CFrame = PoleRing.CFrame*CFrame.Angles(math.rad(90),0,0)

local Mesh = RingMesh:clone()
Mesh.Scale = Vector3.new(1.2,1.2,1.2)
Mesh.Parent = PoleRing

local MushCloud = BasePart:clone()
MushCloud.Position = Pos+Vector3.new(0,2.3,0)
	
local MushMesh = CloudMesh:clone() -- lol
MushMesh.Scale = Vector3.new(2.5,1.75,3.5)
MushMesh.Parent = MushCloud

local TopCloud = BasePart:clone()
TopCloud.Position = Pos+Vector3.new(0,2.7,0)
	
local TopMesh = CloudMesh:clone()
TopMesh.Scale = Vector3.new(7.5,1.5,1.5)
TopMesh.Parent = TopCloud

table.insert(Clouds,Base)
table.insert(Clouds,TopCloud)
table.insert(Clouds,MushCloud)
table.insert(Clouds,Cloud1)
table.insert(Clouds,Cloud2)
table.insert(Clouds,Cloud3)
table.insert(Clouds,PoleBase)
table.insert(Clouds,PoleRing)


local BigRing = BasePart:clone()
BigRing.Position = Pos
BigRing.CFrame = BigRing.CFrame*CFrame.Angles(math.rad(90),0,0)
	
local BigMesh = RingMesh:clone()
BigMesh.Scale = Vector3.new(5,5,1)
BigMesh.Parent = BigRing
	
local SmallRing = BasePart:clone()
SmallRing.Position = Pos
SmallRing.BrickColor = BrickColor.new("Dark stone grey")
SmallRing.CFrame = SmallRing.CFrame*CFrame.Angles(math.rad(90),0,0)

local SmallMesh = RingMesh:clone()
SmallMesh.Scale = Vector3.new(4.6,4.6,1.5)
SmallMesh.Parent = SmallRing

local InnerSphere = BasePart:clone()
InnerSphere.Position = Pos
InnerSphere.BrickColor = BrickColor.new("Bright orange")
InnerSphere.Transparency = 0.5

local InnerSphereMesh = SphereMesh:clone()	
InnerSphereMesh.Scale = Vector3.new(-6.5,-6.5,-6.5)
InnerSphereMesh.Parent = InnerSphere
	
local OutterSphere = BasePart:clone()
OutterSphere.Position = Pos
OutterSphere.BrickColor = BrickColor.new("Bright orange")
OutterSphere.Transparency = 0.5

local OutterSphereMesh = SphereMesh:clone()
OutterSphereMesh.Scale = Vector3.new(6.5,6.5,6.5)
OutterSphereMesh.Parent = OutterSphere

table.insert(ShockWave,BigRing)	
table.insert(ShockWave,SmallRing)
table.insert(ShockWave,OutterSphere)
table.insert(ShockWave,InnerSphere)
	Sky.Parent = game.Lighting
	for i , v in ipairs(ShockWave) do
		v.Parent = Exp
	end
	for i , v in ipairs(Clouds) do
		v.Parent = Exp
	end
	Effects()
	delay(0,function()
		for resize = Size/2.5, Size*3, 2 do
			wait()
			BigRing.Mesh.Scale = Vector3.new(5*resize,5*resize,1*resize)
			SmallRing.Mesh.Scale = Vector3.new(4.6*resize,4.6*resize,1.5*resize)
			InnerSphere.Mesh.Scale = Vector3.new(-6.5*resize,-6.5*resize,-6.5*resize)
			OutterSphere.Mesh.Scale = Vector3.new(6.5*resize,6.5*resize,6.5*resize)
			Destruction(Pos,3*resize)
		end
		for fade = 0, 1, 0.01 do
			wait()
			pcall(function()
				for i ,v in ipairs(ShockWave) do
					v.Transparency = fade
				end
			end)
		end
		for i ,v in ipairs(ShockWave) do
			v:Remove()
		end
		done1 = true
	end)
	delay(0,function()
		for resize = Size/5, Size, 1 do
			wait()
			pcall(function()
				Base.Mesh.Scale = Vector3.new(2.5*resize,1*resize,4.5*resize)
				TopCloud.Mesh.Scale = Vector3.new(0.75*resize,1.5*resize,1.5*resize)
				MushCloud.Mesh.Scale = Vector3.new(2.5*resize,1.75*resize,3.5*resize)
				Cloud1.Mesh.Scale = Vector3.new(0.5*resize,3*resize,1*resize)
				Cloud2.Mesh.Scale = Vector3.new(0.5*resize,1.5*resize,1*resize)
				Cloud3.Mesh.Scale = Vector3.new(0.5*resize,1.5*resize,1*resize)
				PoleBase.Mesh.Scale = Vector3.new(1*resize,2*resize,2.5*resize)
				PoleRing.Mesh.Scale = Vector3.new(1.2*resize,1.2*resize,1.2*resize)

				Base.Position = Pos+Vector3.new(0,0.05*resize,0)
				TopCloud.Position = Pos+Vector3.new(0,2.7*resize,0)
				MushCloud.Position = Pos+Vector3.new(0,2.3*resize,0)
				Cloud1.Position = Pos+Vector3.new(0,0.75*resize,0)
				Cloud2.Position = Pos+Vector3.new(0,1.25*resize,0)
				Cloud3.Position = Pos+Vector3.new(0,1.7*resize,0)
				PoleBase.Position = Pos+Vector3.new(0,0.1*resize,0)
				PoleRing.Position = Pos+Vector3.new(0,1.3*resize,0)
			end)
		end
		done2 = true
	end)
	wait(2)
	for y = 0.6,0,-0.0025 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(0.9,y,0)
		end
	end
	for r = 0.9,0.5,-0.01 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(r,0,0)
		end
	end
	for by = 0,0.5,0.005 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(0.5,by,by)
			v.Transparency = by*2
		end
		Base.Mesh.Scale = Base.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		TopCloud.Mesh.Scale = TopCloud.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		MushCloud.Mesh.Scale = MushCloud.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud1.Mesh.Scale = Cloud1.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud2.Mesh.Scale = Cloud2.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud3.Mesh.Scale = Cloud3.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		PoleBase.Mesh.Scale = PoleBase.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		PoleRing.Mesh.Scale = PoleRing.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
	end
	done3 = true
	while true do wait(1) if done1 and done2 and done3 then break end end
	Exp:remove()
	wait(20)
	Sky:remove()
end


	

Explode(BasePosition)

script.Parent:remove()



	
	




end))
Sound95.Name = "Explode"
Sound95.Parent = Script94
Sound95.Pitch = 0.5
Sound95.SoundId = "http://www.roblox.com/asset?id=130768997"
Sound95.Volume = 1
Sky96.Parent = Script94
Sky96.SkyboxBk = "http://www.roblox.com/asset/?version=1&id=1012890"
Sky96.SkyboxDn = "http://www.roblox.com/asset/?version=1&id=1012891"
Sky96.SkyboxFt = "http://www.roblox.com/asset/?version=1&id=1012887"
Sky96.SkyboxLf = "http://www.roblox.com/asset/?version=1&id=1012889"
Sky96.SkyboxRt = "http://www.roblox.com/asset/?version=1&id=1012888"
Sky96.SkyboxUp = "http://www.roblox.com/asset/?version=1&id=1014449"
Part97.Name = "Effect"
Part97.Parent = Model1
Part97.Material = Enum.Material.SmoothPlastic
Part97.BrickColor = BrickColor.new("Earth green")
Part97.Transparency = 1
Part97.Rotation = Vector3.new(-90, 0, 90)
Part97.FormFactor = Enum.FormFactor.Symmetric
Part97.Size = Vector3.new(2.20000005, 1, 2)
Part97.CFrame = CFrame.new(-21.5097256, 11.3003311, 38.8604736, 1.99002643e-05, -1, 6.76171112e-06, -2.55639879e-05, 7.70061979e-06, 1, -1, -7.8946141e-07, -1.21309677e-05)
Part97.BottomSurface = Enum.SurfaceType.Weld
Part97.TopSurface = Enum.SurfaceType.Weld
Part97.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part97.Position = Vector3.new(-21.5097256, 11.3003311, 38.8604736)
Part97.Orientation = Vector3.new(-90, 90, 0)
Part97.Color = Color3.new(0.152941, 0.27451, 0.176471)
Sound98.Name = "CSfire"
Sound98.Parent = Part97
Sound98.SoundId = "http://www.roblox.com/asset?id=132975999"
Sound98.Volume = 1
Sound99.Name = "Reload"
Sound99.Parent = Part97
Sound99.SoundId = "http://www.roblox.com/asset/?id=154199166"
Sound99.Volume = 1
SpecialMesh100.Parent = Part97
SpecialMesh100.Scale = Vector3.new(0.800000012, 8, 1)
SpecialMesh100.MeshType = Enum.MeshType.Sphere
SpecialMesh100.Scale = Vector3.new(0.800000012, 8, 1)
PointLight101.Parent = Part97
PointLight101.Color = Color3.new(1, 1, 0.498039)
PointLight101.Enabled = false
PointLight101.Color = Color3.new(1, 1, 0.498039)
Smoke102.Parent = Part97
Smoke102.Size = 50
Smoke102.Enabled = false
Smoke102.RiseVelocity = 10
Sound103.Name = "Fire"
Sound103.Parent = Part97
Sound103.Pitch = 0.5
Sound103.SoundId = "rbxassetid://181356975"
Sound103.Volume = 1
Model104.Name = "FakeMissile"
Model104.Parent = Model1
Part105.Name = "FakeMissile"
Part105.Parent = Model104
Part105.Material = Enum.Material.Metal
Part105.BrickColor = BrickColor.new("Quill grey")
Part105.Rotation = Vector3.new(180, 90, 0)
Part105.CanCollide = false
Part105.FormFactor = Enum.FormFactor.Custom
Part105.Size = Vector3.new(6.39999962, 1, 0.200000003)
Part105.CFrame = CFrame.new(-3.70967841, 11.0001984, 38.9599075, -1.99113711e-05, -5.20106005e-06, 1, 2.55717914e-05, -1, -6.13996781e-06, 1, 1.21387639e-05, 8.00539965e-07)
Part105.BottomSurface = Enum.SurfaceType.Weld
Part105.TopSurface = Enum.SurfaceType.Weld
Part105.Color = Color3.new(0.87451, 0.87451, 0.870588)
Part105.Position = Vector3.new(-3.70967841, 11.0001984, 38.9599075)
Part105.Orientation = Vector3.new(0, 90, 180)
Part105.Color = Color3.new(0.87451, 0.87451, 0.870588)
SpecialMesh106.Parent = Part105
SpecialMesh106.MeshId = "http://www.roblox.com/asset/?id=74333739"
SpecialMesh106.Scale = Vector3.new(25, 25, 24)
SpecialMesh106.MeshType = Enum.MeshType.FileMesh
SpecialMesh106.Scale = Vector3.new(25, 25, 24)
Part107.Name = "Warhead"
Part107.Parent = Model1
Part107.BrickColor = BrickColor.new("Institutional white")
Part107.Reflectance = 0.5
Part107.Transparency = 1
Part107.Rotation = Vector3.new(180, 0, 0)
Part107.Anchored = true
Part107.FormFactor = Enum.FormFactor.Plate
Part107.Size = Vector3.new(3.79999971, 6.59999943, 3.79999995)
Part107.CFrame = CFrame.new(-7.70991611, 33.3989334, 39.2596893, 0.999999702, -6.4844221e-06, -6.66087817e-06, -6.48497235e-06, -0.999999702, -1.0551862e-05, -6.67190989e-06, 1.05441059e-05, -1)
Part107.BottomSurface = Enum.SurfaceType.Weld
Part107.TopSurface = Enum.SurfaceType.Smooth
Part107.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part107.Position = Vector3.new(-7.70991611, 33.3989334, 39.2596893)
Part107.Orientation = Vector3.new(0, -180, -180)
Part107.Color = Color3.new(0.972549, 0.972549, 0.972549)
SpecialMesh108.Parent = Part107
SpecialMesh108.MeshId = "http://www.roblox.com/asset/?id=1778999"
SpecialMesh108.Scale = Vector3.new(3, 5, 3)
SpecialMesh108.TextureId = "http://www.roblox.com/asset/?id=2821447"
SpecialMesh108.VertexColor = Vector3.new(0.600000024, 0.600000024, 0.600000024)
SpecialMesh108.MeshType = Enum.MeshType.FileMesh
SpecialMesh108.Scale = Vector3.new(3, 5, 3)
Smoke109.Parent = Part107
Smoke109.Size = 30
Smoke109.Enabled = false
Smoke109.Opacity = 1
Smoke109.RiseVelocity = 5
BillboardGui110.Name = "Light"
BillboardGui110.Parent = Part107
BillboardGui110.Size = UDim2.new(35, 0, 35, 0)
BillboardGui110.Enabled = false
BillboardGui110.Active = true
ImageLabel111.Name = "Light"
ImageLabel111.Parent = BillboardGui110
ImageLabel111.Transparency = 1
ImageLabel111.Size = UDim2.new(1, 0, 1, 0)
ImageLabel111.Active = true
ImageLabel111.BackgroundColor3 = Color3.new(0.756863, 0.752941, 0.764706)
ImageLabel111.BackgroundTransparency = 1
ImageLabel111.Image = "http://www.roblox.com/asset/?id=43708803"
Script112.Parent = BillboardGui110
table.insert(cors,sandbox(Script112,function()
script.Parent.Adornee = script.Parent.Parent
end))
Smoke113.Name = "Smoke2"
Smoke113.Parent = Part107
Smoke113.Size = 30
Smoke113.Enabled = false
Smoke113.Opacity = 1
Smoke113.RiseVelocity = 5
Smoke114.Name = "Smoke3"
Smoke114.Parent = Part107
Smoke114.Size = 30
Smoke114.Enabled = false
Smoke114.Opacity = 1
Smoke114.RiseVelocity = 5
Smoke115.Name = "Smoke4"
Smoke115.Parent = Part107
Smoke115.Size = 30
Smoke115.Enabled = false
Smoke115.Opacity = 1
Smoke115.RiseVelocity = 5
StringValue116.Name = "INFORMATION"
StringValue116.Parent = Part107
StringValue117.Name = "Nuke_Information"
StringValue117.Parent = StringValue116
StringValue117.Value = "Conventional, long-range warhead"
StringValue118.Name = "Nuke_Base"
StringValue118.Parent = StringValue116
StringValue118.Value = "TEL/Mobile"
Script119.Name = "Touch"
Script119.Parent = Part107
Script119.Disabled = true
table.insert(cors,sandbox(Script119,function()
wait(.1)
function onTouch(hit)
script.Parent.Anchored = true
script.Parent.Parent = Workspace
script.Parent.Transparency = 1
wait()
script.Parent.Atom.Disabled = false
end

script.Parent.Touched:connect(onTouch)
end))
Script120.Name = "Atom"
Script120.Parent = Part107
Script120.Disabled = true
table.insert(cors,sandbox(Script120,function()
print("Nuke Em' All")

local CloudID= "http://www.roblox.com/asset/?id=1095708"
local ColorTexture = "http://www.roblox.com/asset/?ID=1361097"
local RingID = "http://www.roblox.com/asset/?id=3270017"
local SphereID = "http://www.roblox.com/asset/?id=1185246"

local BasePosition = script.Parent.Position

local Size = 350

local Exp = Instance.new("Model")
Exp.Name = "ATOMICEXPLOSION"
Exp.Parent = game.Workspace

local BasePart = Instance.new("Part")
BasePart.formFactor = 0
BasePart.TopSurface = 0
BasePart.BottomSurface = 0
BasePart.Anchored = true
BasePart.Locked = true
BasePart.CanCollide = false

local BaseMesh = Instance.new("SpecialMesh")
BaseMesh.MeshType = "FileMesh"

local CloudMesh = BaseMesh:clone()
CloudMesh.MeshId = CloudID
CloudMesh.TextureId = ColorTexture
CloudMesh.VertexColor = Vector3.new(0.9,0.6,0)

local RingMesh = BaseMesh:clone()
RingMesh.MeshId = RingID

local SphereMesh = BaseMesh:clone()
SphereMesh.MeshId = SphereID

local Clouds = {}
local ShockWave = {}
local Sky = script.Sky


function Effects()
	script.Explode:Play()
	delay(0,function() 
		for i = 5, 1,-0.01 do
			wait()
			game.Lighting.Brightness = i
		end
	end)
end

function Destruction(Pos,Radius)
	local function Destroy(Model)
		for i ,v in ipairs(Model:getChildren()) do
			if v:isA("BasePart") then
				if (v.Position-Pos).magnitude < Radius then
					if v.Anchored == false then
						v:BreakJoints()
						v.Velocity = CFrame.new(v.Position,Pos):vectorToWorldSpace(Vector3.new(math.random(-5,5),5,1000))
						v.Material = "CorrodedMetal"
					end	
				end
			end
			if #v:getChildren() > 0 then
				Destroy(v)
			end
		end
	end
	Destroy(game.Workspace)
end
function Explode(Pos)

local Base = BasePart:clone()
Base.Position = Pos
	
local Mesh = CloudMesh:clone()
Mesh.Parent = Base 
Mesh.Scale = Vector3.new(2.5,1,4.5)

local PoleBase = BasePart:clone()
PoleBase.Position = Pos+Vector3.new(0,0.1,0)

local PoleBaseMesh = CloudMesh:clone()
PoleBaseMesh.Scale = Vector3.new(1.25,2,2.5)
PoleBaseMesh.Parent = PoleBase

local Cloud1 = BasePart:clone()
Cloud1.Position = Pos+Vector3.new(0,0.75,0)

local Cloud1Mesh = CloudMesh:clone()
Cloud1Mesh.Scale = Vector3.new(0.5,3,1)
Cloud1Mesh.Parent = Cloud1
	
local Cloud2 = BasePart:clone()
Cloud2.Position = Pos+Vector3.new(0,1.25,0)
	
local Cloud2Mesh = CloudMesh:clone()
Cloud2Mesh.Scale = Vector3.new(0.5,1.5,1)
Cloud2Mesh.Parent = Cloud2

local Cloud3 = BasePart:clone()
Cloud3.Position = Pos+Vector3.new(0,1.7,0)
	
local Cloud3Mesh = CloudMesh:clone()
Cloud3Mesh.Scale = Vector3.new(0.5,1.5,1)
Cloud3Mesh.Parent = Cloud3

local PoleRing = BasePart:clone()
PoleRing.Position = Pos+Vector3.new(0,1.3,0)
PoleRing.Transparency = 0.2
PoleRing.BrickColor = BrickColor.new("Dark stone grey")
PoleRing.CFrame = PoleRing.CFrame*CFrame.Angles(math.rad(90),0,0)

local Mesh = RingMesh:clone()
Mesh.Scale = Vector3.new(1.2,1.2,1.2)
Mesh.Parent = PoleRing

local MushCloud = BasePart:clone()
MushCloud.Position = Pos+Vector3.new(0,2.3,0)
	
local MushMesh = CloudMesh:clone() -- lol
MushMesh.Scale = Vector3.new(2.5,1.75,3.5)
MushMesh.Parent = MushCloud

local TopCloud = BasePart:clone()
TopCloud.Position = Pos+Vector3.new(0,2.7,0)
	
local TopMesh = CloudMesh:clone()
TopMesh.Scale = Vector3.new(7.5,1.5,1.5)
TopMesh.Parent = TopCloud

table.insert(Clouds,Base)
table.insert(Clouds,TopCloud)
table.insert(Clouds,MushCloud)
table.insert(Clouds,Cloud1)
table.insert(Clouds,Cloud2)
table.insert(Clouds,Cloud3)
table.insert(Clouds,PoleBase)
table.insert(Clouds,PoleRing)


local BigRing = BasePart:clone()
BigRing.Position = Pos
BigRing.CFrame = BigRing.CFrame*CFrame.Angles(math.rad(90),0,0)
	
local BigMesh = RingMesh:clone()
BigMesh.Scale = Vector3.new(5,5,1)
BigMesh.Parent = BigRing
	
local SmallRing = BasePart:clone()
SmallRing.Position = Pos
SmallRing.BrickColor = BrickColor.new("Dark stone grey")
SmallRing.CFrame = SmallRing.CFrame*CFrame.Angles(math.rad(90),0,0)

local SmallMesh = RingMesh:clone()
SmallMesh.Scale = Vector3.new(4.6,4.6,1.5)
SmallMesh.Parent = SmallRing

local InnerSphere = BasePart:clone()
InnerSphere.Position = Pos
InnerSphere.BrickColor = BrickColor.new("Bright orange")
InnerSphere.Transparency = 0.5

local InnerSphereMesh = SphereMesh:clone()	
InnerSphereMesh.Scale = Vector3.new(-6.5,-6.5,-6.5)
InnerSphereMesh.Parent = InnerSphere
	
local OutterSphere = BasePart:clone()
OutterSphere.Position = Pos
OutterSphere.BrickColor = BrickColor.new("Bright orange")
OutterSphere.Transparency = 0.5

local OutterSphereMesh = SphereMesh:clone()
OutterSphereMesh.Scale = Vector3.new(6.5,6.5,6.5)
OutterSphereMesh.Parent = OutterSphere

table.insert(ShockWave,BigRing)	
table.insert(ShockWave,SmallRing)
table.insert(ShockWave,OutterSphere)
table.insert(ShockWave,InnerSphere)
	Sky.Parent = game.Lighting
	for i , v in ipairs(ShockWave) do
		v.Parent = Exp
	end
	for i , v in ipairs(Clouds) do
		v.Parent = Exp
	end
	Effects()
	delay(0,function()
		for resize = Size/2.5, Size*3, 2 do
			wait()
			BigRing.Mesh.Scale = Vector3.new(5*resize,5*resize,1*resize)
			SmallRing.Mesh.Scale = Vector3.new(4.6*resize,4.6*resize,1.5*resize)
			InnerSphere.Mesh.Scale = Vector3.new(-6.5*resize,-6.5*resize,-6.5*resize)
			OutterSphere.Mesh.Scale = Vector3.new(6.5*resize,6.5*resize,6.5*resize)
			Destruction(Pos,3*resize)
		end
		for fade = 0, 1, 0.01 do
			wait()
			pcall(function()
				for i ,v in ipairs(ShockWave) do
					v.Transparency = fade
				end
			end)
		end
		for i ,v in ipairs(ShockWave) do
			v:Remove()
		end
		done1 = true
	end)
	delay(0,function()
		for resize = Size/5, Size, 1 do
			wait()
			pcall(function()
				Base.Mesh.Scale = Vector3.new(2.5*resize,1*resize,4.5*resize)
				TopCloud.Mesh.Scale = Vector3.new(0.75*resize,1.5*resize,1.5*resize)
				MushCloud.Mesh.Scale = Vector3.new(2.5*resize,1.75*resize,3.5*resize)
				Cloud1.Mesh.Scale = Vector3.new(0.5*resize,3*resize,1*resize)
				Cloud2.Mesh.Scale = Vector3.new(0.5*resize,1.5*resize,1*resize)
				Cloud3.Mesh.Scale = Vector3.new(0.5*resize,1.5*resize,1*resize)
				PoleBase.Mesh.Scale = Vector3.new(1*resize,2*resize,2.5*resize)
				PoleRing.Mesh.Scale = Vector3.new(1.2*resize,1.2*resize,1.2*resize)

				Base.Position = Pos+Vector3.new(0,0.05*resize,0)
				TopCloud.Position = Pos+Vector3.new(0,2.7*resize,0)
				MushCloud.Position = Pos+Vector3.new(0,2.3*resize,0)
				Cloud1.Position = Pos+Vector3.new(0,0.75*resize,0)
				Cloud2.Position = Pos+Vector3.new(0,1.25*resize,0)
				Cloud3.Position = Pos+Vector3.new(0,1.7*resize,0)
				PoleBase.Position = Pos+Vector3.new(0,0.1*resize,0)
				PoleRing.Position = Pos+Vector3.new(0,1.3*resize,0)
			end)
		end
		done2 = true
	end)
	wait(2)
	for y = 0.6,0,-0.0025 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(0.9,y,0)
		end
	end
	for r = 0.9,0.5,-0.01 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(r,0,0)
		end
	end
	for by = 0,0.5,0.005 do
		wait()
		for i , v in ipairs(Clouds) do
			v.Mesh.VertexColor = Vector3.new(0.5,by,by)
			v.Transparency = by*2
		end
		Base.Mesh.Scale = Base.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		TopCloud.Mesh.Scale = TopCloud.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		MushCloud.Mesh.Scale = MushCloud.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud1.Mesh.Scale = Cloud1.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud2.Mesh.Scale = Cloud2.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		Cloud3.Mesh.Scale = Cloud3.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		PoleBase.Mesh.Scale = PoleBase.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
		PoleRing.Mesh.Scale = PoleRing.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
	end
	done3 = true
	while true do wait(1) if done1 and done2 and done3 then break end end
	Exp:remove()
	wait(20)
	Sky:remove()
end


	

Explode(BasePosition)

script.Parent:remove()



	
	




end))
Sound121.Name = "Explode"
Sound121.Parent = Script120
Sound121.Pitch = 0.5
Sound121.SoundId = "http://www.roblox.com/asset?id=130768997"
Sound121.Volume = 1
Sky122.Parent = Script120
Sky122.SkyboxBk = "http://www.roblox.com/asset/?version=1&id=1012890"
Sky122.SkyboxDn = "http://www.roblox.com/asset/?version=1&id=1012891"
Sky122.SkyboxFt = "http://www.roblox.com/asset/?version=1&id=1012887"
Sky122.SkyboxLf = "http://www.roblox.com/asset/?version=1&id=1012889"
Sky122.SkyboxRt = "http://www.roblox.com/asset/?version=1&id=1012888"
Sky122.SkyboxUp = "http://www.roblox.com/asset/?version=1&id=1014449"
Part123.Parent = Model0
Part123.Material = Enum.Material.Ice
Part123.BrickColor = BrickColor.new("Dark stone grey")
Part123.Transparency = 0.5
Part123.Rotation = Vector3.new(7.5999999, 0, 0)
Part123.CanCollide = false
Part123.FormFactor = Enum.FormFactor.Custom
Part123.Size = Vector3.new(3, 2.5999999, 0.200000003)
Part123.CFrame = CFrame.new(-24.2097893, 8.72938347, 31.1316738, 1, 1.75870337e-05, 6.18270788e-05, -9.95769551e-06, 0.991205812, -0.132270217, -7.78449903e-05, 0.132281274, 0.991214573)
Part123.BackSurface = Enum.SurfaceType.Weld
Part123.BottomSurface = Enum.SurfaceType.Weld
Part123.FrontSurface = Enum.SurfaceType.Weld
Part123.LeftSurface = Enum.SurfaceType.Weld
Part123.RightSurface = Enum.SurfaceType.Weld
Part123.TopSurface = Enum.SurfaceType.Weld
Part123.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part123.Position = Vector3.new(-24.2097893, 8.72938347, 31.1316738)
Part123.Orientation = Vector3.new(7.5999999, 0, 0)
Part123.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh124.Parent = Part123
BlockMesh124.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh124.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh124.Scale = Vector3.new(1, 1.14999998, 0.5)
Part125.Parent = Model0
Part125.Material = Enum.Material.Metal
Part125.BrickColor = BrickColor.new("Grime")
Part125.Rotation = Vector3.new(172.399994, 0, 180)
Part125.CanCollide = false
Part125.FormFactor = Enum.FormFactor.Custom
Part125.Size = Vector3.new(3, 0.400000006, 0.200000003)
Part125.CFrame = CFrame.new(-24.2096195, 10.2178173, 46.3855438, -1, -5.60768513e-07, -8.06703756e-05, 1.13161541e-05, 0.991207719, -0.132315725, 0.000104148734, -0.132298887, -0.991209865)
Part125.BackSurface = Enum.SurfaceType.Weld
Part125.BottomSurface = Enum.SurfaceType.Weld
Part125.FrontSurface = Enum.SurfaceType.Weld
Part125.LeftSurface = Enum.SurfaceType.Weld
Part125.RightSurface = Enum.SurfaceType.Weld
Part125.TopSurface = Enum.SurfaceType.Weld
Part125.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part125.Position = Vector3.new(-24.2096195, 10.2178173, 46.3855438)
Part125.Orientation = Vector3.new(7.5999999, -180, 0)
Part125.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh126.Parent = Part125
BlockMesh126.Offset = Vector3.new(0, 0, 0.200000003)
Part127.Parent = Model0
Part127.Material = Enum.Material.Ice
Part127.BrickColor = BrickColor.new("Dark stone grey")
Part127.Transparency = 0.5
Part127.Rotation = Vector3.new(-180, 0, -180)
Part127.CanCollide = false
Part127.FormFactor = Enum.FormFactor.Custom
Part127.Size = Vector3.new(4.4000001, 1.79999995, 0.200000003)
Part127.CFrame = CFrame.new(-23.5096817, 9.10065365, 36.3602753, -1, 9.14261545e-06, -6.24489476e-05, 9.84558574e-06, 0.99999088, 2.81994267e-06, 7.66839075e-05, 1.28775291e-05, -1.00000012)
Part127.BackSurface = Enum.SurfaceType.Weld
Part127.BottomSurface = Enum.SurfaceType.Weld
Part127.FrontSurface = Enum.SurfaceType.Weld
Part127.LeftSurface = Enum.SurfaceType.Weld
Part127.RightSurface = Enum.SurfaceType.Weld
Part127.TopSurface = Enum.SurfaceType.Weld
Part127.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part127.Position = Vector3.new(-23.5096817, 9.10065365, 36.3602753)
Part127.Orientation = Vector3.new(0, -180, 0)
Part127.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh128.Parent = Part127
BlockMesh128.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh128.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh128.Scale = Vector3.new(1, 1.14999998, 0.5)
Part129.Parent = Model0
Part129.Material = Enum.Material.Metal
Part129.BrickColor = BrickColor.new("Grime")
Part129.Rotation = Vector3.new(7.5999999, 0, 0)
Part129.CanCollide = false
Part129.FormFactor = Enum.FormFactor.Custom
Part129.Size = Vector3.new(5.80000019, 0.400000036, 0.200000003)
Part129.CFrame = CFrame.new(-19.6098289, 7.63907337, 30.9858189, 1, 1.76825579e-05, 6.23572778e-05, -9.98225096e-06, 0.991205812, -0.132270217, -7.83831638e-05, 0.132281274, 0.991214573)
Part129.BackSurface = Enum.SurfaceType.Weld
Part129.BottomSurface = Enum.SurfaceType.Weld
Part129.FrontSurface = Enum.SurfaceType.Weld
Part129.LeftSurface = Enum.SurfaceType.Weld
Part129.RightSurface = Enum.SurfaceType.Weld
Part129.TopSurface = Enum.SurfaceType.Weld
Part129.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part129.Position = Vector3.new(-19.6098289, 7.63907337, 30.9858189)
Part129.Orientation = Vector3.new(7.5999999, 0, 0)
Part129.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh130.Parent = Part129
BlockMesh130.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh130.Scale = Vector3.new(1, 1.14999998, 1)
BlockMesh130.Scale = Vector3.new(1, 1.14999998, 1)
Part131.Parent = Model0
Part131.Material = Enum.Material.Ice
Part131.BrickColor = BrickColor.new("Dark stone grey")
Part131.Transparency = 0.5
Part131.Rotation = Vector3.new(7.5999999, 0, 0)
Part131.CanCollide = false
Part131.FormFactor = Enum.FormFactor.Custom
Part131.Size = Vector3.new(5.80000019, 2, 0.200000003)
Part131.CFrame = CFrame.new(-19.8097687, 8.82844543, 31.1445694, 1, 1.76347712e-05, 6.20919236e-05, -9.96978906e-06, 0.991205275, -0.132273212, -7.81138588e-05, 0.132284284, 0.991213918)
Part131.BackSurface = Enum.SurfaceType.Weld
Part131.BottomSurface = Enum.SurfaceType.Weld
Part131.FrontSurface = Enum.SurfaceType.Weld
Part131.LeftSurface = Enum.SurfaceType.Weld
Part131.RightSurface = Enum.SurfaceType.Weld
Part131.TopSurface = Enum.SurfaceType.Weld
Part131.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part131.Position = Vector3.new(-19.8097687, 8.82844543, 31.1445694)
Part131.Orientation = Vector3.new(7.5999999, 0, 0)
Part131.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh132.Parent = Part131
BlockMesh132.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh132.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh132.Scale = Vector3.new(1, 1.14999998, 0.5)
Part133.Parent = Model0
Part133.Material = Enum.Material.Metal
Part133.BrickColor = BrickColor.new("Grime")
Part133.CanCollide = false
Part133.FormFactor = Enum.FormFactor.Custom
Part133.Size = Vector3.new(10.1999998, 0.999999881, 2.79999995)
Part133.CFrame = CFrame.new(0.190229297, 10.7005215, 34.0595284, 1, 8.29581222e-06, 4.42689707e-05, -8.66455866e-06, 0.99999088, 2.18264177e-06, -5.17070403e-05, 3.0374008e-06, 1.00000012)
Part133.BackSurface = Enum.SurfaceType.Weld
Part133.BottomSurface = Enum.SurfaceType.Weld
Part133.FrontSurface = Enum.SurfaceType.Weld
Part133.LeftSurface = Enum.SurfaceType.Weld
Part133.RightSurface = Enum.SurfaceType.Weld
Part133.TopSurface = Enum.SurfaceType.Weld
Part133.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part133.Position = Vector3.new(0.190229297, 10.7005215, 34.0595284)
Part133.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh134.Parent = Part133
Part135.Parent = Model0
Part135.Material = Enum.Material.Metal
Part135.BrickColor = BrickColor.new("Grime")
Part135.Rotation = Vector3.new(-180, 0, -180)
Part135.CanCollide = false
Part135.FormFactor = Enum.FormFactor.Custom
Part135.Size = Vector3.new(8.80000114, 0.200000003, 4.80000019)
Part135.CFrame = CFrame.new(-21.109726, 10.3005667, 33.8601379, -1, 9.14261545e-06, -6.24489476e-05, 9.84558574e-06, 0.99999088, 2.81994267e-06, 7.66839075e-05, 1.28775291e-05, -1.00000012)
Part135.BackSurface = Enum.SurfaceType.Weld
Part135.BottomSurface = Enum.SurfaceType.Weld
Part135.FrontSurface = Enum.SurfaceType.Weld
Part135.LeftSurface = Enum.SurfaceType.Weld
Part135.RightSurface = Enum.SurfaceType.Weld
Part135.TopSurface = Enum.SurfaceType.Weld
Part135.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part135.Position = Vector3.new(-21.109726, 10.3005667, 33.8601379)
Part135.Orientation = Vector3.new(0, -180, 0)
Part135.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh136.Parent = Part135
Part137.Parent = Model0
Part137.Material = Enum.Material.Metal
Part137.BrickColor = BrickColor.new("Grime")
Part137.Rotation = Vector3.new(7.5999999, 0, 0)
Part137.CanCollide = false
Part137.FormFactor = Enum.FormFactor.Custom
Part137.Size = Vector3.new(3.20000005, 0.400000006, 0.200000003)
Part137.CFrame = CFrame.new(-24.309742, 10.2161369, 31.330101, 1, 1.75873574e-05, 6.18266713e-05, -9.95750725e-06, 0.991204858, -0.132279024, -7.78446993e-05, 0.132290065, 0.991213858)
Part137.BackSurface = Enum.SurfaceType.Weld
Part137.BottomSurface = Enum.SurfaceType.Weld
Part137.FrontSurface = Enum.SurfaceType.Weld
Part137.LeftSurface = Enum.SurfaceType.Weld
Part137.RightSurface = Enum.SurfaceType.Weld
Part137.TopSurface = Enum.SurfaceType.Weld
Part137.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part137.Position = Vector3.new(-24.309742, 10.2161369, 31.330101)
Part137.Orientation = Vector3.new(7.5999999, 0, 0)
Part137.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh138.Parent = Part137
BlockMesh138.Offset = Vector3.new(0, 0, 0.200000003)
Part139.Parent = Model0
Part139.Material = Enum.Material.Metal
Part139.BrickColor = BrickColor.new("Grime")
Part139.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part139.CanCollide = false
Part139.FormFactor = Enum.FormFactor.Custom
Part139.Size = Vector3.new(8.80000114, 0.200000003, 4.80000019)
Part139.CFrame = CFrame.new(-21.1093521, 10.3008881, 43.8603363, -1, 1.11894988e-05, -0.000103796992, 1.19273136e-05, 1, 3.20989275e-05, 0.000118718235, 4.26027473e-05, -1)
Part139.BackSurface = Enum.SurfaceType.Weld
Part139.BottomSurface = Enum.SurfaceType.Weld
Part139.FrontSurface = Enum.SurfaceType.Weld
Part139.LeftSurface = Enum.SurfaceType.Weld
Part139.RightSurface = Enum.SurfaceType.Weld
Part139.TopSurface = Enum.SurfaceType.Weld
Part139.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part139.Position = Vector3.new(-21.1093521, 10.3008881, 43.8603363)
Part139.Orientation = Vector3.new(0, -179.98999, 0)
Part139.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh140.Parent = Part139
Part141.Parent = Model0
Part141.Material = Enum.Material.Metal
Part141.BrickColor = BrickColor.new("Grime")
Part141.Rotation = Vector3.new(7.5999999, 0, 0)
Part141.CanCollide = false
Part141.FormFactor = Enum.FormFactor.Custom
Part141.Size = Vector3.new(5.5999999, 0.600000083, 0.200000003)
Part141.CFrame = CFrame.new(-19.7097855, 10.1169653, 31.3165245, 1, 1.75877558e-05, 6.18268677e-05, -9.95769642e-06, 0.991204143, -0.132281795, -7.78449903e-05, 0.132292852, 0.991212904)
Part141.BackSurface = Enum.SurfaceType.Weld
Part141.BottomSurface = Enum.SurfaceType.Weld
Part141.FrontSurface = Enum.SurfaceType.Weld
Part141.LeftSurface = Enum.SurfaceType.Weld
Part141.RightSurface = Enum.SurfaceType.Weld
Part141.TopSurface = Enum.SurfaceType.Weld
Part141.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part141.Position = Vector3.new(-19.7097855, 10.1169653, 31.3165245)
Part141.Orientation = Vector3.new(7.5999999, 0, 0)
Part141.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh142.Parent = Part141
BlockMesh142.Offset = Vector3.new(0, 0, 0.200000003)
Part143.Parent = Model0
Part143.Material = Enum.Material.Metal
Part143.BrickColor = BrickColor.new("Grime")
Part143.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part143.CanCollide = false
Part143.FormFactor = Enum.FormFactor.Custom
Part143.Size = Vector3.new(4, 0.200000048, 0.400000006)
Part143.CFrame = CFrame.new(-23.5095596, 10.1009521, 41.6606407, -1, 1.09616185e-05, -9.92156856e-05, 1.215679e-05, 1, 2.88735409e-05, 0.000123329461, 4.58503346e-05, -1)
Part143.BackSurface = Enum.SurfaceType.Weld
Part143.BottomSurface = Enum.SurfaceType.Weld
Part143.FrontSurface = Enum.SurfaceType.Weld
Part143.LeftSurface = Enum.SurfaceType.Weld
Part143.RightSurface = Enum.SurfaceType.Weld
Part143.TopSurface = Enum.SurfaceType.Weld
Part143.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part143.Position = Vector3.new(-23.5095596, 10.1009521, 41.6606407)
Part143.Orientation = Vector3.new(0, -179.98999, 0)
Part143.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh144.Parent = Part143
Part145.Parent = Model0
Part145.Material = Enum.Material.Metal
Part145.BrickColor = BrickColor.new("Grime")
Part145.Rotation = Vector3.new(-180, 0, -180)
Part145.CanCollide = false
Part145.FormFactor = Enum.FormFactor.Custom
Part145.Size = Vector3.new(4, 0.200000048, 0.400000006)
Part145.CFrame = CFrame.new(-23.5096741, 10.1006269, 36.060318, -1, 9.1545362e-06, -6.27174304e-05, 9.85749102e-06, 0.99999088, 3.03555453e-06, 7.69523976e-05, 1.30931385e-05, -1.00000012)
Part145.BackSurface = Enum.SurfaceType.Weld
Part145.BottomSurface = Enum.SurfaceType.Weld
Part145.FrontSurface = Enum.SurfaceType.Weld
Part145.LeftSurface = Enum.SurfaceType.Weld
Part145.RightSurface = Enum.SurfaceType.Weld
Part145.TopSurface = Enum.SurfaceType.Weld
Part145.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part145.Position = Vector3.new(-23.5096741, 10.1006269, 36.060318)
Part145.Orientation = Vector3.new(0, -180, 0)
Part145.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh146.Parent = Part145
Part147.Parent = Model0
Part147.Material = Enum.Material.Ice
Part147.BrickColor = BrickColor.new("Dark stone grey")
Part147.Transparency = 0.5
Part147.Rotation = Vector3.new(0, 0.00999999978, 0)
Part147.CanCollide = false
Part147.FormFactor = Enum.FormFactor.Custom
Part147.Size = Vector3.new(4.4000001, 1.79999995, 0.200000003)
Part147.CFrame = CFrame.new(-23.5096359, 9.10095882, 41.3607674, 1, 1.08327658e-05, 9.66105945e-05, -1.1122107e-05, 1, -2.70385699e-05, -0.000102494581, 3.11788244e-05, 1)
Part147.BackSurface = Enum.SurfaceType.Weld
Part147.BottomSurface = Enum.SurfaceType.Weld
Part147.FrontSurface = Enum.SurfaceType.Weld
Part147.LeftSurface = Enum.SurfaceType.Weld
Part147.RightSurface = Enum.SurfaceType.Weld
Part147.TopSurface = Enum.SurfaceType.Weld
Part147.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part147.Position = Vector3.new(-23.5096359, 9.10095882, 41.3607674)
Part147.Orientation = Vector3.new(0, 0.00999999978, 0)
Part147.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh148.Parent = Part147
BlockMesh148.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh148.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh148.Scale = Vector3.new(1, 1.14999998, 0.5)
Part149.Parent = Model0
Part149.Material = Enum.Material.Metal
Part149.BrickColor = BrickColor.new("Grime")
Part149.Rotation = Vector3.new(172.399994, -0.00999999978, 180)
Part149.CanCollide = false
Part149.FormFactor = Enum.FormFactor.Custom
Part149.Size = Vector3.new(6.20000029, 0.600000083, 0.200000003)
Part149.CFrame = CFrame.new(-19.8094444, 10.1184397, 46.3984222, -1, -9.0132653e-06, -0.000181728246, 1.62895012e-05, 0.991222322, -0.132206291, 0.00020543822, -0.132189453, -0.991224468)
Part149.BackSurface = Enum.SurfaceType.Weld
Part149.BottomSurface = Enum.SurfaceType.Weld
Part149.FrontSurface = Enum.SurfaceType.Weld
Part149.LeftSurface = Enum.SurfaceType.Weld
Part149.RightSurface = Enum.SurfaceType.Weld
Part149.TopSurface = Enum.SurfaceType.Weld
Part149.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part149.Position = Vector3.new(-19.8094444, 10.1184397, 46.3984222)
Part149.Orientation = Vector3.new(7.5999999, -179.98999, 0)
Part149.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh150.Parent = Part149
BlockMesh150.Offset = Vector3.new(0, 0, 0.200000003)
Part151.Parent = Model0
Part151.Material = Enum.Material.Metal
Part151.BrickColor = BrickColor.new("Grime")
Part151.Rotation = Vector3.new(-180, 0, -180)
Part151.CanCollide = false
Part151.FormFactor = Enum.FormFactor.Custom
Part151.Size = Vector3.new(0.400000125, 0.400000095, 4.80000019)
Part151.CFrame = CFrame.new(-25.7096767, 10.2006121, 33.8604965, -1, 9.1545362e-06, -6.27174304e-05, 9.85749102e-06, 0.99999088, 3.03555453e-06, 7.69523976e-05, 1.30931385e-05, -1.00000012)
Part151.BackSurface = Enum.SurfaceType.Weld
Part151.BottomSurface = Enum.SurfaceType.Weld
Part151.FrontSurface = Enum.SurfaceType.Weld
Part151.LeftSurface = Enum.SurfaceType.Weld
Part151.RightSurface = Enum.SurfaceType.Weld
Part151.TopSurface = Enum.SurfaceType.Weld
Part151.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part151.Position = Vector3.new(-25.7096767, 10.2006121, 33.8604965)
Part151.Orientation = Vector3.new(0, -180, 0)
Part151.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh152.Parent = Part151
Part153.Parent = Model0
Part153.Material = Enum.Material.Ice
Part153.BrickColor = BrickColor.new("Dark stone grey")
Part153.Transparency = 0.5
Part153.Rotation = Vector3.new(0, 90, 0)
Part153.CanCollide = false
Part153.FormFactor = Enum.FormFactor.Custom
Part153.Size = Vector3.new(4.4000001, 2.5999999, 0.200000003)
Part153.CFrame = CFrame.new(-26.0095062, 8.70113087, 44.0608444, -6.27532063e-05, 9.1800166e-06, 1, 6.16025354e-05, 1, -9.47351418e-06, -1, 6.58212812e-05, -6.87484062e-05)
Part153.BackSurface = Enum.SurfaceType.Weld
Part153.BottomSurface = Enum.SurfaceType.Weld
Part153.FrontSurface = Enum.SurfaceType.Weld
Part153.LeftSurface = Enum.SurfaceType.Weld
Part153.RightSurface = Enum.SurfaceType.Weld
Part153.TopSurface = Enum.SurfaceType.Weld
Part153.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part153.Position = Vector3.new(-26.0095062, 8.70113087, 44.0608444)
Part153.Orientation = Vector3.new(0, 90, 0)
Part153.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh154.Parent = Part153
BlockMesh154.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh154.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh154.Scale = Vector3.new(1, 1.14999998, 0.5)
Part155.Parent = Model0
Part155.Material = Enum.Material.Metal
Part155.BrickColor = BrickColor.new("Grime")
Part155.Rotation = Vector3.new(180, 0, -180)
Part155.CanCollide = false
Part155.FormFactor = Enum.FormFactor.Custom
Part155.Size = Vector3.new(0.400000125, 2.60000014, 0.399999619)
Part155.CFrame = CFrame.new(-25.7094059, 8.70073032, 36.0606499, -1, 8.09867561e-06, -4.05344908e-05, 8.86677481e-06, 1, -1.35534392e-05, 5.598793e-05, -2.67428459e-06, -1)
Part155.BackSurface = Enum.SurfaceType.Weld
Part155.BottomSurface = Enum.SurfaceType.Weld
Part155.FrontSurface = Enum.SurfaceType.Weld
Part155.LeftSurface = Enum.SurfaceType.Weld
Part155.RightSurface = Enum.SurfaceType.Weld
Part155.TopSurface = Enum.SurfaceType.Weld
Part155.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part155.Position = Vector3.new(-25.7094059, 8.70073032, 36.0606499)
Part155.Orientation = Vector3.new(0, -180, 0)
Part155.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh156.Parent = Part155
Part157.Parent = Model0
Part157.Material = Enum.Material.Metal
Part157.BrickColor = BrickColor.new("Grime")
Part157.Rotation = Vector3.new(180, 0, -180)
Part157.CanCollide = false
Part157.FormFactor = Enum.FormFactor.Custom
Part157.Size = Vector3.new(0.400000125, 2.60000014, 0.399999619)
Part157.CFrame = CFrame.new(-25.7093887, 8.70087433, 41.6606712, -1, 8.28512475e-06, -4.41889606e-05, 8.58297699e-06, 1, -1.10809588e-05, 5.01835166e-05, -6.86198973e-06, -1)
Part157.BackSurface = Enum.SurfaceType.Weld
Part157.BottomSurface = Enum.SurfaceType.Weld
Part157.FrontSurface = Enum.SurfaceType.Weld
Part157.LeftSurface = Enum.SurfaceType.Weld
Part157.RightSurface = Enum.SurfaceType.Weld
Part157.TopSurface = Enum.SurfaceType.Weld
Part157.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part157.Position = Vector3.new(-25.7093887, 8.70087433, 41.6606712)
Part157.Orientation = Vector3.new(0, -180, 0)
Part157.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh158.Parent = Part157
Part159.Parent = Model0
Part159.Material = Enum.Material.Metal
Part159.BrickColor = BrickColor.new("Grime")
Part159.Transparency = 1
Part159.Rotation = Vector3.new(0, 0, -90)
Part159.CanCollide = false
Part159.FormFactor = Enum.FormFactor.Custom
Part159.Size = Vector3.new(0.600000024, 33.4000015, 1.20000005)
Part159.CFrame = CFrame.new(-4.310009, 11.8002071, 39.1599884, -6.21251684e-06, 1, 6.75599949e-07, -1, -6.68983739e-06, 1.11012896e-05, 4.27564555e-06, -1.03863886e-05, 1)
Part159.BackSurface = Enum.SurfaceType.Weld
Part159.BottomSurface = Enum.SurfaceType.Weld
Part159.FrontSurface = Enum.SurfaceType.Weld
Part159.LeftSurface = Enum.SurfaceType.Weld
Part159.RightSurface = Enum.SurfaceType.Weld
Part159.TopSurface = Enum.SurfaceType.Weld
Part159.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part159.Position = Vector3.new(-4.310009, 11.8002071, 39.1599884)
Part159.Orientation = Vector3.new(0, 0, -90)
Part159.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh160.Parent = Part159
CylinderMesh160.Offset = Vector3.new(6.5, 0, 0)
CylinderMesh160.Scale = Vector3.new(2, 1.5, 1.60000002)
CylinderMesh160.Scale = Vector3.new(2, 1.5, 1.60000002)
Part161.Parent = Model0
Part161.Material = Enum.Material.Metal
Part161.BrickColor = BrickColor.new("Grime")
Part161.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part161.CanCollide = false
Part161.FormFactor = Enum.FormFactor.Custom
Part161.Size = Vector3.new(0.400000125, 0.400000095, 4.80000019)
Part161.CFrame = CFrame.new(-25.7093048, 10.200943, 43.8608704, -1, 1.09616185e-05, -9.92156856e-05, 1.215679e-05, 1, 2.88735409e-05, 0.000123329461, 4.58503346e-05, -1)
Part161.BackSurface = Enum.SurfaceType.Weld
Part161.BottomSurface = Enum.SurfaceType.Weld
Part161.FrontSurface = Enum.SurfaceType.Weld
Part161.LeftSurface = Enum.SurfaceType.Weld
Part161.RightSurface = Enum.SurfaceType.Weld
Part161.TopSurface = Enum.SurfaceType.Weld
Part161.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part161.Position = Vector3.new(-25.7093048, 10.200943, 43.8608704)
Part161.Orientation = Vector3.new(0, -179.98999, 0)
Part161.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh162.Parent = Part161
Part163.Name = "Brick"
Part163.Parent = Model0
Part163.Material = Enum.Material.Metal
Part163.BrickColor = BrickColor.new("Grime")
Part163.Transparency = 1
Part163.Rotation = Vector3.new(-81.8699951, 0, 0)
Part163.CanCollide = false
Part163.FormFactor = Enum.FormFactor.Custom
Part163.Size = Vector3.new(2, 0.200000003, 1.19999993)
Part163.CFrame = CFrame.new(-15.1100616, 9.22443581, 31.4195766, 1, -1.95444609e-05, 1.00356256e-05, -7.23307085e-06, 0.141354978, 0.989949763, -2.19993763e-05, -0.989958763, 0.141357139)
Part163.BackSurface = Enum.SurfaceType.Weld
Part163.BottomSurface = Enum.SurfaceType.Weld
Part163.FrontSurface = Enum.SurfaceType.Weld
Part163.LeftSurface = Enum.SurfaceType.Weld
Part163.RightSurface = Enum.SurfaceType.Weld
Part163.TopSurface = Enum.SurfaceType.Weld
Part163.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part163.Position = Vector3.new(-15.1100616, 9.22443581, 31.4195766)
Part163.Orientation = Vector3.new(-81.8699951, 0, 0)
Part163.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh164.Parent = Part163
BlockMesh164.Offset = Vector3.new(0, -0.189999998, 0)
Part165.Parent = Model0
Part165.Material = Enum.Material.Ice
Part165.BrickColor = BrickColor.new("Dark stone grey")
Part165.Transparency = 0.5
Part165.Rotation = Vector3.new(-0.00999999978, 90, 0)
Part165.CanCollide = false
Part165.FormFactor = Enum.FormFactor.Custom
Part165.Size = Vector3.new(4.4000001, 2.5999999, 0.200000003)
Part165.CFrame = CFrame.new(-26.0100727, 8.70062733, 33.660717, 1.50852629e-05, 8.59109969e-06, 1, -0.000113904629, 0.999991715, -9.33180672e-06, -1.00000143, -0.000103434344, 5.23921777e-08)
Part165.BackSurface = Enum.SurfaceType.Weld
Part165.BottomSurface = Enum.SurfaceType.Weld
Part165.FrontSurface = Enum.SurfaceType.Weld
Part165.LeftSurface = Enum.SurfaceType.Weld
Part165.RightSurface = Enum.SurfaceType.Weld
Part165.TopSurface = Enum.SurfaceType.Weld
Part165.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part165.Position = Vector3.new(-26.0100727, 8.70062733, 33.660717)
Part165.Orientation = Vector3.new(0, 90, -0.00999999978)
Part165.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh166.Parent = Part165
BlockMesh166.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh166.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh166.Scale = Vector3.new(1, 1.14999998, 0.5)
WedgePart167.Parent = Model0
WedgePart167.Material = Enum.Material.Metal
WedgePart167.BrickColor = BrickColor.new("Grime")
WedgePart167.Rotation = Vector3.new(90, 0, 180)
WedgePart167.FormFactor = Enum.FormFactor.Custom
WedgePart167.Size = Vector3.new(10.1999998, 1.60000014, 1.00000012)
WedgePart167.CFrame = CFrame.new(0.190155506, 10.7001343, 31.8595524, -1, -6.39187638e-05, -9.26415669e-06, 9.63382809e-06, -1.61062781e-05, -0.99999088, 7.13567133e-05, -1.00000012, 1.08866034e-05)
WedgePart167.BackSurface = Enum.SurfaceType.Weld
WedgePart167.BottomSurface = Enum.SurfaceType.Weld
WedgePart167.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart167.Position = Vector3.new(0.190155506, 10.7001343, 31.8595524)
WedgePart167.Orientation = Vector3.new(89.7599945, -40.3999977, 149.110001)
WedgePart167.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh168.Parent = WedgePart167
SpecialMesh168.MeshType = Enum.MeshType.Wedge
WedgePart169.Parent = Model0
WedgePart169.Material = Enum.Material.Metal
WedgePart169.BrickColor = BrickColor.new("Grime")
WedgePart169.Rotation = Vector3.new(90, 0, 179.98999)
WedgePart169.CanCollide = false
WedgePart169.FormFactor = Enum.FormFactor.Custom
WedgePart169.Size = Vector3.new(0.400000006, 0.400000006, 3)
WedgePart169.CFrame = CFrame.new(-25.7095623, 8.90049076, 31.2609272, -1, -0.00011542545, -1.16997289e-05, 1.24401122e-05, 1.74538945e-05, -0.999991715, 0.000130459724, -1.00000143, -2.79238375e-05)
WedgePart169.BackSurface = Enum.SurfaceType.Weld
WedgePart169.BottomSurface = Enum.SurfaceType.Weld
WedgePart169.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart169.Position = Vector3.new(-25.7095623, 8.90049076, 31.2609272)
WedgePart169.Orientation = Vector3.new(89.7699966, -157.269989, 35.4799995)
WedgePart169.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh170.Parent = WedgePart169
SpecialMesh170.MeshType = Enum.MeshType.Wedge
WedgePart171.Parent = Model0
WedgePart171.Material = Enum.Material.Metal
WedgePart171.BrickColor = BrickColor.new("Grime")
WedgePart171.Rotation = Vector3.new(90, 0, 180)
WedgePart171.CanCollide = false
WedgePart171.FormFactor = Enum.FormFactor.Custom
WedgePart171.Size = Vector3.new(0.400000006, 1.20000005, 0.999999821)
WedgePart171.CFrame = CFrame.new(-25.7096157, 7.90141249, 35.2606316, -1, -4.28536587e-05, -1.1318748e-05, 1.20651166e-05, -9.25489076e-05, -0.999991715, 5.78865729e-05, -1.00000143, 8.20791174e-05)
WedgePart171.BackSurface = Enum.SurfaceType.Weld
WedgePart171.BottomSurface = Enum.SurfaceType.Weld
WedgePart171.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart171.Position = Vector3.new(-25.7096157, 7.90141249, 35.2606316)
WedgePart171.Orientation = Vector3.new(89.7699966, -7.8499999, 172.569992)
WedgePart171.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh172.Parent = WedgePart171
SpecialMesh172.MeshType = Enum.MeshType.Wedge
WedgePart173.Parent = Model0
WedgePart173.Material = Enum.Material.Metal
WedgePart173.BrickColor = BrickColor.new("Grime")
WedgePart173.Rotation = Vector3.new(-90, 0, -180)
WedgePart173.CanCollide = false
WedgePart173.FormFactor = Enum.FormFactor.Custom
WedgePart173.Size = Vector3.new(0.400000006, 0.200000003, 2.60000014)
WedgePart173.CFrame = CFrame.new(-25.7096691, 8.70045567, 31.560833, -1, 8.70646472e-05, 1.34475977e-05, 1.41952787e-05, 6.08148293e-05, 0.999991715, 0.000102097867, 1.00000143, -5.03454758e-05)
WedgePart173.BackSurface = Enum.SurfaceType.Weld
WedgePart173.BottomSurface = Enum.SurfaceType.Weld
WedgePart173.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart173.Position = Vector3.new(-25.7096691, 8.70045567, 31.560833)
WedgePart173.Orientation = Vector3.new(-89.7699966, 165.050003, 13.1399994)
WedgePart173.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh174.Parent = WedgePart173
SpecialMesh174.MeshType = Enum.MeshType.Wedge
WedgePart175.Parent = Model0
WedgePart175.Material = Enum.Material.Metal
WedgePart175.BrickColor = BrickColor.new("Grime")
WedgePart175.Rotation = Vector3.new(90, 0, -0.00999999978)
WedgePart175.CanCollide = false
WedgePart175.FormFactor = Enum.FormFactor.Custom
WedgePart175.Size = Vector3.new(0.400000006, 0.400000006, 3)
WedgePart175.CFrame = CFrame.new(-25.7104053, 8.90147972, 46.4605446, 1, 9.32686453e-05, -1.07004098e-05, -1.14709874e-05, 3.40783699e-05, -1, -0.000108721877, 1, 2.31999766e-05)
WedgePart175.BackSurface = Enum.SurfaceType.Weld
WedgePart175.BottomSurface = Enum.SurfaceType.Weld
WedgePart175.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart175.Position = Vector3.new(-25.7104053, 8.90147972, 46.4605446)
WedgePart175.Orientation = Vector3.new(90, 0.00999999978, 0)
WedgePart175.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh176.Parent = WedgePart175
SpecialMesh176.MeshType = Enum.MeshType.Wedge
WedgePart177.Parent = Model0
WedgePart177.Material = Enum.Material.Metal
WedgePart177.BrickColor = BrickColor.new("Grime")
WedgePart177.Rotation = Vector3.new(90, 0, 180)
WedgePart177.CanCollide = false
WedgePart177.FormFactor = Enum.FormFactor.Custom
WedgePart177.Size = Vector3.new(11.8000002, 0.400000006, 2.79999995)
WedgePart177.CFrame = CFrame.new(-10.8100128, 8.80036926, 31.4599285, -1, -1.98704856e-05, -7.10724089e-06, 7.16815839e-06, 1.53286351e-06, -0.99999088, 2.11030638e-05, -1.00000012, -2.38569896e-06)
WedgePart177.BackSurface = Enum.SurfaceType.Weld
WedgePart177.BottomSurface = Enum.SurfaceType.Weld
WedgePart177.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart177.Position = Vector3.new(-10.8100128, 8.80036926, 31.4599285)
WedgePart177.Orientation = Vector3.new(89.7599945, -108.559998, 77.9300003)
WedgePart177.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh178.Parent = WedgePart177
SpecialMesh178.MeshType = Enum.MeshType.Wedge
WedgePart179.Parent = Model0
WedgePart179.Material = Enum.Material.Metal
WedgePart179.BrickColor = BrickColor.new("Grime")
WedgePart179.Rotation = Vector3.new(-90, 0, -180)
WedgePart179.CanCollide = false
WedgePart179.FormFactor = Enum.FormFactor.Custom
WedgePart179.Size = Vector3.new(0.200000003, 0.200000003, 2.60000014)
WedgePart179.CFrame = CFrame.new(-16.8098984, 8.70064831, 31.5546684, -1, 3.86261199e-05, 8.03524836e-06, 8.7385406e-06, 3.54923986e-06, 0.999991119, 5.28609926e-05, 1.00000048, 6.47919069e-06)
WedgePart179.BackSurface = Enum.SurfaceType.Weld
WedgePart179.BottomSurface = Enum.SurfaceType.Weld
WedgePart179.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart179.Position = Vector3.new(-16.8098984, 8.70064831, 31.5546684)
WedgePart179.Orientation = Vector3.new(-89.7599945, 51.1199989, 67.9000015)
WedgePart179.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh180.Parent = WedgePart179
SpecialMesh180.MeshType = Enum.MeshType.Wedge
WedgePart181.Parent = Model0
WedgePart181.Material = Enum.Material.Metal
WedgePart181.BrickColor = BrickColor.new("Grime")
WedgePart181.Rotation = Vector3.new(90, 0, 180)
WedgePart181.CanCollide = false
WedgePart181.FormFactor = Enum.FormFactor.Custom
WedgePart181.Size = Vector3.new(0.200000003, 0.400000006, 3)
WedgePart181.CFrame = CFrame.new(-19.6100655, 8.90089989, 31.2546997, -1, -6.24609311e-05, -9.12487758e-06, 9.82918027e-06, -1.84945038e-05, -0.99999088, 7.66956946e-05, -1.00000012, 8.43711314e-06)
WedgePart181.BackSurface = Enum.SurfaceType.Weld
WedgePart181.BottomSurface = Enum.SurfaceType.Weld
WedgePart181.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart181.Position = Vector3.new(-19.6100655, 8.90089989, 31.2546997)
WedgePart181.Orientation = Vector3.new(89.7599945, -47.2399979, 152.009995)
WedgePart181.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh182.Parent = WedgePart181
SpecialMesh182.MeshType = Enum.MeshType.Wedge
WedgePart183.Parent = Model0
WedgePart183.Material = Enum.Material.Metal
WedgePart183.BrickColor = BrickColor.new("Grime")
WedgePart183.Rotation = Vector3.new(90, 0, 180)
WedgePart183.CanCollide = false
WedgePart183.FormFactor = Enum.FormFactor.Custom
WedgePart183.Size = Vector3.new(0.400000006, 0.400000006, 3)
WedgePart183.CFrame = CFrame.new(-22.7099266, 8.90095329, 31.255022, -1, -6.28153575e-05, -9.15679993e-06, 9.860717e-06, -1.23528207e-05, -0.999991715, 7.70501429e-05, -1.00000143, 2.44396688e-06)
WedgePart183.BackSurface = Enum.SurfaceType.Weld
WedgePart183.BottomSurface = Enum.SurfaceType.Weld
WedgePart183.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart183.Position = Vector3.new(-22.7099266, 8.90095329, 31.255022)
WedgePart183.Orientation = Vector3.new(89.7699966, -75.0599976, 141.399994)
WedgePart183.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh184.Parent = WedgePart183
SpecialMesh184.MeshType = Enum.MeshType.Wedge
WedgePart185.Parent = Model0
WedgePart185.Material = Enum.Material.Metal
WedgePart185.BrickColor = BrickColor.new("Grime")
WedgePart185.Rotation = Vector3.new(-90, 0, 0)
WedgePart185.CanCollide = false
WedgePart185.FormFactor = Enum.FormFactor.Custom
WedgePart185.Size = Vector3.new(0.400000006, 0.200000003, 2.60000014)
WedgePart185.CFrame = CFrame.new(-25.7090588, 8.70090199, 46.1605759, 1, -7.75331137e-05, 9.84157032e-06, -1.01347641e-05, 5.37735141e-05, 1, -8.35282772e-05, -1, 5.7992067e-05)
WedgePart185.BackSurface = Enum.SurfaceType.Weld
WedgePart185.BottomSurface = Enum.SurfaceType.Weld
WedgePart185.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart185.Position = Vector3.new(-25.7090588, 8.70090199, 46.1605759)
WedgePart185.Orientation = Vector3.new(-90, 0, 0)
WedgePart185.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh186.Parent = WedgePart185
SpecialMesh186.MeshType = Enum.MeshType.Wedge
WedgePart187.Parent = Model0
WedgePart187.Material = Enum.Material.Metal
WedgePart187.BrickColor = BrickColor.new("Grime")
WedgePart187.Rotation = Vector3.new(-90, 0, -180)
WedgePart187.CanCollide = false
WedgePart187.FormFactor = Enum.FormFactor.Custom
WedgePart187.Size = Vector3.new(0.200000003, 0.200000003, 2.60000014)
WedgePart187.CFrame = CFrame.new(-19.6096992, 8.70069408, 31.5548515, -1, 2.96698472e-05, 7.61610727e-06, 8.31959642e-06, 1.10488836e-05, 0.99999088, 4.39046744e-05, 1.00000012, -9.91035904e-07)
WedgePart187.BackSurface = Enum.SurfaceType.Weld
WedgePart187.BottomSurface = Enum.SurfaceType.Weld
WedgePart187.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart187.Position = Vector3.new(-19.6096992, 8.70069408, 31.5548515)
WedgePart187.Orientation = Vector3.new(-89.7599945, 97.409996, 36.9799995)
WedgePart187.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh188.Parent = WedgePart187
SpecialMesh188.MeshType = Enum.MeshType.Wedge
WedgePart189.Parent = Model0
WedgePart189.Material = Enum.Material.Metal
WedgePart189.BrickColor = BrickColor.new("Grime")
WedgePart189.Rotation = Vector3.new(-90, 0, -180)
WedgePart189.CanCollide = false
WedgePart189.FormFactor = Enum.FormFactor.Custom
WedgePart189.Size = Vector3.new(0.400000006, 0.200000003, 2.60000014)
WedgePart189.CFrame = CFrame.new(-22.7095509, 8.70071697, 31.5549793, -1, 2.9757899e-05, 7.61660112e-06, 8.32005298e-06, 1.00073721e-05, 0.999991715, 4.39926589e-05, 1.00000143, -9.81024186e-08)
WedgePart189.BackSurface = Enum.SurfaceType.Weld
WedgePart189.BottomSurface = Enum.SurfaceType.Weld
WedgePart189.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart189.Position = Vector3.new(-22.7095509, 8.70071697, 31.5549793)
WedgePart189.Orientation = Vector3.new(-89.7699966, 90.7399979, 39.7399979)
WedgePart189.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh190.Parent = WedgePart189
SpecialMesh190.MeshType = Enum.MeshType.Wedge
WedgePart191.Parent = Model0
WedgePart191.Material = Enum.Material.Metal
WedgePart191.BrickColor = BrickColor.new("Grime")
WedgePart191.Rotation = Vector3.new(90, 0, 180)
WedgePart191.CanCollide = false
WedgePart191.FormFactor = Enum.FormFactor.Custom
WedgePart191.Size = Vector3.new(0.200000003, 0.400000006, 3)
WedgePart191.CFrame = CFrame.new(-16.810257, 8.90075588, 31.25453, -1, -6.24630338e-05, -9.1277625e-06, 9.83149221e-06, -9.34280797e-06, -0.999991119, 7.66978701e-05, -1.00000048, -6.85276063e-07)
WedgePart191.BackSurface = Enum.SurfaceType.Weld
WedgePart191.BottomSurface = Enum.SurfaceType.Weld
WedgePart191.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart191.Position = Vector3.new(-16.810257, 8.90075588, 31.25453)
WedgePart191.Orientation = Vector3.new(89.7599945, -94.2900009, 133.539993)
WedgePart191.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh192.Parent = WedgePart191
SpecialMesh192.MeshType = Enum.MeshType.Wedge
Model193.Name = "Braces"
Model193.Parent = Model0
Part194.Name = "SideSupporters"
Part194.Parent = Model193
Part194.Material = Enum.Material.DiamondPlate
Part194.BrickColor = BrickColor.new("Dark stone grey")
Part194.Rotation = Vector3.new(-0.00999999978, -0.00999999978, -90)
Part194.CanCollide = false
Part194.FormFactor = Enum.FormFactor.Custom
Part194.Size = Vector3.new(0.800000012, 38.6000023, 0.599999905)
Part194.CFrame = CFrame.new(4.88875008, 11.701334, 42.4607582, -1.26398409e-05, 1, -0.000139337557, -1, -1.35639984e-05, 0.000109516797, 9.60821344e-05, 0.000120227873, 1)
Part194.BackSurface = Enum.SurfaceType.Weld
Part194.BottomSurface = Enum.SurfaceType.Weld
Part194.FrontSurface = Enum.SurfaceType.Weld
Part194.LeftSurface = Enum.SurfaceType.Weld
Part194.RightSurface = Enum.SurfaceType.Weld
Part194.TopSurface = Enum.SurfaceType.Weld
Part194.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part194.Position = Vector3.new(4.88875008, 11.701334, 42.4607582)
Part194.Orientation = Vector3.new(-0.00999999978, -0.00999999978, -90)
Part194.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh195.Parent = Part194
CylinderMesh195.Offset = Vector3.new(0.699999988, 0, -0.5)
Part196.Name = "SideSupporters"
Part196.Parent = Model193
Part196.Material = Enum.Material.DiamondPlate
Part196.BrickColor = BrickColor.new("Dark stone grey")
Part196.Rotation = Vector3.new(0, 0, -90)
Part196.CanCollide = false
Part196.FormFactor = Enum.FormFactor.Custom
Part196.Size = Vector3.new(0.800000012, 38.6000023, 0.599999905)
Part196.CFrame = CFrame.new(4.89028549, 11.7001047, 35.459919, -3.96238374e-06, 1, -1.33412796e-05, -1, -4.90152115e-06, 2.09537357e-05, 7.52074175e-06, -5.76958473e-06, 1)
Part196.BackSurface = Enum.SurfaceType.Weld
Part196.BottomSurface = Enum.SurfaceType.Weld
Part196.FrontSurface = Enum.SurfaceType.Weld
Part196.LeftSurface = Enum.SurfaceType.Weld
Part196.RightSurface = Enum.SurfaceType.Weld
Part196.TopSurface = Enum.SurfaceType.Weld
Part196.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part196.Position = Vector3.new(4.89028549, 11.7001047, 35.459919)
Part196.Orientation = Vector3.new(0, 0, -90)
Part196.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh197.Parent = Part196
CylinderMesh197.Offset = Vector3.new(0.699999988, 0, 0.5)
Part198.Name = "SideSupporters"
Part198.Parent = Model193
Part198.Material = Enum.Material.DiamondPlate
Part198.BrickColor = BrickColor.new("Dark stone grey")
Part198.Transparency = 1
Part198.Rotation = Vector3.new(-90, 90, 0)
Part198.CanCollide = false
Part198.FormFactor = Enum.FormFactor.Custom
Part198.Size = Vector3.new(0.399999976, 3.200001, 0.599999905)
Part198.CFrame = CFrame.new(12.6886978, 12.3010302, 41.0611801, -1.00123516e-05, 0.000133011898, 1, -1, -8.2736733e-05, -1.09407647e-05, 6.93024485e-05, -1, 0.000113901697)
Part198.BackSurface = Enum.SurfaceType.Weld
Part198.BottomSurface = Enum.SurfaceType.Weld
Part198.FrontSurface = Enum.SurfaceType.Weld
Part198.LeftSurface = Enum.SurfaceType.Weld
Part198.RightSurface = Enum.SurfaceType.Weld
Part198.TopSurface = Enum.SurfaceType.Weld
Part198.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part198.Position = Vector3.new(12.6886978, 12.3010302, 41.0611801)
Part198.Orientation = Vector3.new(0, 89.9899979, -90)
Part198.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh199.Parent = Part198
CylinderMesh199.Offset = Vector3.new(0.699999988, 0, 0.5)
Part200.Name = "SideSupporters"
Part200.Parent = Model193
Part200.Material = Enum.Material.DiamondPlate
Part200.BrickColor = BrickColor.new("Dark stone grey")
Part200.Transparency = 1
Part200.Rotation = Vector3.new(-90, 90, 0)
Part200.CanCollide = false
Part200.FormFactor = Enum.FormFactor.Custom
Part200.Size = Vector3.new(0.399999976, 3.200001, 0.599999905)
Part200.CFrame = CFrame.new(12.6900082, 12.3000383, 36.8591309, -2.95247196e-06, -2.58682812e-05, 1, -1, 2.89400232e-05, -3.89114075e-06, -4.23728707e-05, -1, -4.49793006e-05)
Part200.BackSurface = Enum.SurfaceType.Weld
Part200.BottomSurface = Enum.SurfaceType.Weld
Part200.FrontSurface = Enum.SurfaceType.Weld
Part200.LeftSurface = Enum.SurfaceType.Weld
Part200.RightSurface = Enum.SurfaceType.Weld
Part200.TopSurface = Enum.SurfaceType.Weld
Part200.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part200.Position = Vector3.new(12.6900082, 12.3000383, 36.8591309)
Part200.Orientation = Vector3.new(0, 90, -90)
Part200.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh201.Parent = Part200
CylinderMesh201.Offset = Vector3.new(0.699999988, 0, 0.5)
Part202.Name = "Emblem"
Part202.Parent = Model0
Part202.Material = Enum.Material.Metal
Part202.BrickColor = BrickColor.new("Grime")
Part202.CanCollide = false
Part202.FormFactor = Enum.FormFactor.Custom
Part202.Size = Vector3.new(3.60000014, 3.39999962, 0.200000003)
Part202.CFrame = CFrame.new(-20.5100327, 5.70076609, 30.9600067, 1, 7.46798696e-06, 2.7385162e-05, -7.62826676e-06, 0.999991715, -1.72890504e-05, -3.06962465e-05, 1.95087814e-05, 1.00000143)
Part202.BackSurface = Enum.SurfaceType.Weld
Part202.BottomSurface = Enum.SurfaceType.Weld
Part202.FrontSurface = Enum.SurfaceType.Weld
Part202.LeftSurface = Enum.SurfaceType.Weld
Part202.RightSurface = Enum.SurfaceType.Weld
Part202.TopSurface = Enum.SurfaceType.Weld
Part202.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part202.Position = Vector3.new(-20.5100327, 5.70076609, 30.9600067)
Part202.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh203.Parent = Part202
BlockMesh203.Offset = Vector3.new(0, 0, 0.200000003)
Part204.Parent = Model0
Part204.Material = Enum.Material.Metal
Part204.BrickColor = BrickColor.new("Grime")
Part204.Rotation = Vector3.new(-180, 0, -180)
Part204.FormFactor = Enum.FormFactor.Custom
Part204.Size = Vector3.new(6.19999933, 2.20000005, 2.60000038)
Part204.CFrame = CFrame.new(14.9899111, 9.90013885, 32.9597321, -1, 8.86935595e-06, -5.40786423e-05, 8.96597521e-06, 1, 8.80265179e-06, 5.60541885e-05, 1.01906853e-05, -1)
Part204.BackSurface = Enum.SurfaceType.Weld
Part204.BottomSurface = Enum.SurfaceType.Weld
Part204.FrontSurface = Enum.SurfaceType.Weld
Part204.LeftSurface = Enum.SurfaceType.Weld
Part204.RightSurface = Enum.SurfaceType.Weld
Part204.TopSurface = Enum.SurfaceType.Weld
Part204.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part204.Position = Vector3.new(14.9899111, 9.90013885, 32.9597321)
Part204.Orientation = Vector3.new(0, -180, 0)
Part204.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh205.Parent = Part204
Part206.Parent = Model0
Part206.Material = Enum.Material.Metal
Part206.BrickColor = BrickColor.new("Grime")
Part206.Rotation = Vector3.new(180, 0, -180)
Part206.FormFactor = Enum.FormFactor.Custom
Part206.Size = Vector3.new(5.19999933, 1.19999993, 4.00000048)
Part206.CFrame = CFrame.new(8.89008808, 8.60011578, 33.6598549, -1, 6.99085149e-06, -1.63561654e-05, 7.1075865e-06, 1, -6.3724741e-08, 1.87311598e-05, 1.60550485e-06, -1)
Part206.BackSurface = Enum.SurfaceType.Weld
Part206.BottomSurface = Enum.SurfaceType.Weld
Part206.FrontSurface = Enum.SurfaceType.Weld
Part206.LeftSurface = Enum.SurfaceType.Weld
Part206.RightSurface = Enum.SurfaceType.Weld
Part206.TopSurface = Enum.SurfaceType.Weld
Part206.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part206.Position = Vector3.new(8.89008808, 8.60011578, 33.6598549)
Part206.Orientation = Vector3.new(0, -180, 0)
Part206.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh207.Parent = Part206
Part208.Parent = Model0
Part208.Material = Enum.Material.Metal
Part208.BrickColor = BrickColor.new("Grime")
Part208.Rotation = Vector3.new(-180, 0, -180)
Part208.CanCollide = false
Part208.FormFactor = Enum.FormFactor.Custom
Part208.Size = Vector3.new(11.8000002, 4.19999981, 4.60000038)
Part208.CFrame = CFrame.new(-10.8099661, 8.10049725, 33.9599152, -1, 7.14305224e-06, -2.03425952e-05, 7.16210434e-06, 1, 1.88869399e-06, 2.07310459e-05, 2.16157287e-06, -1)
Part208.BackSurface = Enum.SurfaceType.Weld
Part208.BottomSurface = Enum.SurfaceType.Weld
Part208.FrontSurface = Enum.SurfaceType.Weld
Part208.LeftSurface = Enum.SurfaceType.Weld
Part208.RightSurface = Enum.SurfaceType.Weld
Part208.TopSurface = Enum.SurfaceType.Weld
Part208.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part208.Position = Vector3.new(-10.8099661, 8.10049725, 33.9599152)
Part208.Orientation = Vector3.new(0, -180, 0)
Part208.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh209.Parent = Part208
Part210.Name = "Emblem"
Part210.Parent = Model0
Part210.Material = Enum.Material.Metal
Part210.BrickColor = BrickColor.new("Grime")
Part210.Rotation = Vector3.new(-180, 0, -180)
Part210.CanCollide = false
Part210.FormFactor = Enum.FormFactor.Custom
Part210.Size = Vector3.new(3.60000014, 3.39999962, 0.200000003)
Part210.CFrame = CFrame.new(-20.5099678, 5.70037603, 46.760025, -1, 6.35870629e-06, -2.10810867e-06, 6.65713014e-06, 1, 1.4320929e-05, 8.12503458e-06, 1.85558729e-05, -1)
Part210.BackSurface = Enum.SurfaceType.Weld
Part210.BottomSurface = Enum.SurfaceType.Weld
Part210.FrontSurface = Enum.SurfaceType.Weld
Part210.LeftSurface = Enum.SurfaceType.Weld
Part210.RightSurface = Enum.SurfaceType.Weld
Part210.TopSurface = Enum.SurfaceType.Weld
Part210.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part210.Position = Vector3.new(-20.5099678, 5.70037603, 46.760025)
Part210.Orientation = Vector3.new(0, -180, 0)
Part210.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh211.Parent = Part210
BlockMesh211.Offset = Vector3.new(0, 0, 0.200000003)
Part212.Parent = Model0
Part212.Material = Enum.Material.Metal
Part212.BrickColor = BrickColor.new("Grime")
Part212.Rotation = Vector3.new(180, 0, -180)
Part212.CanCollide = false
Part212.FormFactor = Enum.FormFactor.Custom
Part212.Size = Vector3.new(3, 3, 5.19999981)
Part212.CFrame = CFrame.new(3.79019642, 8.70022011, 44.0599136, -1, 6.32772435e-06, -3.98295379e-06, 6.47945944e-06, 1, -8.76483864e-06, 7.04126296e-06, -6.61228023e-06, -1)
Part212.BackSurface = Enum.SurfaceType.Weld
Part212.BottomSurface = Enum.SurfaceType.Weld
Part212.FrontSurface = Enum.SurfaceType.Weld
Part212.LeftSurface = Enum.SurfaceType.Weld
Part212.RightSurface = Enum.SurfaceType.Weld
Part212.TopSurface = Enum.SurfaceType.Weld
Part212.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part212.Position = Vector3.new(3.79019642, 8.70022011, 44.0599136)
Part212.Orientation = Vector3.new(0, -180, 0)
Part212.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh213.Parent = Part212
Part214.Parent = Model0
Part214.Material = Enum.Material.Metal
Part214.BrickColor = BrickColor.new("Grime")
Part214.Rotation = Vector3.new(-180, 0, -180)
Part214.CanCollide = false
Part214.FormFactor = Enum.FormFactor.Custom
Part214.Size = Vector3.new(10.1999998, 0.999999881, 2.79999995)
Part214.CFrame = CFrame.new(0.190334558, 10.7001324, 43.6596947, -1, 8.83405392e-06, -5.33534985e-05, 9.60729267e-06, 0.99999088, 3.31501396e-05, 6.89792505e-05, 4.41338598e-05, -1.00000012)
Part214.BackSurface = Enum.SurfaceType.Weld
Part214.BottomSurface = Enum.SurfaceType.Weld
Part214.FrontSurface = Enum.SurfaceType.Weld
Part214.LeftSurface = Enum.SurfaceType.Weld
Part214.RightSurface = Enum.SurfaceType.Weld
Part214.TopSurface = Enum.SurfaceType.Weld
Part214.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part214.Position = Vector3.new(0.190334558, 10.7001324, 43.6596947)
Part214.Orientation = Vector3.new(0, -180, 0)
Part214.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh215.Parent = Part214
Part216.Parent = Model0
Part216.Material = Enum.Material.Metal
Part216.BrickColor = BrickColor.new("Grime")
Part216.Rotation = Vector3.new(180, 0, -180)
Part216.CanCollide = false
Part216.FormFactor = Enum.FormFactor.Custom
Part216.Size = Vector3.new(11.8000002, 0.399999976, 0.200000003)
Part216.CFrame = CFrame.new(-10.8095398, 6.20018864, 31.1600113, -1, 6.19986486e-06, -4.70125087e-07, 6.56853854e-06, 0.99999088, -1.11185163e-05, 7.90813283e-06, -5.89815954e-06, -1.00000012)
Part216.BackSurface = Enum.SurfaceType.Weld
Part216.BottomSurface = Enum.SurfaceType.Weld
Part216.FrontSurface = Enum.SurfaceType.Weld
Part216.LeftSurface = Enum.SurfaceType.Weld
Part216.RightSurface = Enum.SurfaceType.Weld
Part216.TopSurface = Enum.SurfaceType.Weld
Part216.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part216.Position = Vector3.new(-10.8095398, 6.20018864, 31.1600113)
Part216.Orientation = Vector3.new(0, -180, 0)
Part216.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh217.Parent = Part216
Part218.Parent = Model0
Part218.Material = Enum.Material.Metal
Part218.BrickColor = BrickColor.new("Grime")
Part218.Rotation = Vector3.new(-180, 0, -180)
Part218.CanCollide = false
Part218.FormFactor = Enum.FormFactor.Custom
Part218.Size = Vector3.new(11.8000002, 4.19999981, 4.60000038)
Part218.CFrame = CFrame.new(-10.8097363, 8.10028648, 43.7601395, -1, 7.16859677e-06, -2.04153348e-05, 7.45285433e-06, 1, 2.7828346e-06, 2.61436471e-05, 6.81482152e-06, -1)
Part218.BackSurface = Enum.SurfaceType.Weld
Part218.BottomSurface = Enum.SurfaceType.Weld
Part218.FrontSurface = Enum.SurfaceType.Weld
Part218.LeftSurface = Enum.SurfaceType.Weld
Part218.RightSurface = Enum.SurfaceType.Weld
Part218.TopSurface = Enum.SurfaceType.Weld
Part218.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part218.Position = Vector3.new(-10.8097363, 8.10028648, 43.7601395)
Part218.Orientation = Vector3.new(0, -180, 0)
Part218.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh219.Parent = Part218
Part220.Parent = Model0
Part220.Material = Enum.Material.Metal
Part220.BrickColor = BrickColor.new("Grime")
Part220.Rotation = Vector3.new(-180, 0, -180)
Part220.CanCollide = false
Part220.FormFactor = Enum.FormFactor.Custom
Part220.Size = Vector3.new(3, 3, 5.19999981)
Part220.CFrame = CFrame.new(3.79002571, 8.70051765, 33.6592712, -1, 8.50772994e-06, -4.85191158e-05, 8.51756067e-06, 1, 1.09945977e-05, 4.87300749e-05, 1.11423969e-05, -1)
Part220.BackSurface = Enum.SurfaceType.Weld
Part220.BottomSurface = Enum.SurfaceType.Weld
Part220.FrontSurface = Enum.SurfaceType.Weld
Part220.LeftSurface = Enum.SurfaceType.Weld
Part220.RightSurface = Enum.SurfaceType.Weld
Part220.TopSurface = Enum.SurfaceType.Weld
Part220.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part220.Position = Vector3.new(3.79002571, 8.70051765, 33.6592712)
Part220.Orientation = Vector3.new(0, -180, 0)
Part220.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh221.Parent = Part220
Part222.Parent = Model0
Part222.Material = Enum.Material.Metal
Part222.BrickColor = BrickColor.new("Grime")
Part222.Rotation = Vector3.new(180, 0, -180)
Part222.CanCollide = false
Part222.FormFactor = Enum.FormFactor.Custom
Part222.Size = Vector3.new(22, 0.799999714, 0.600000441)
Part222.CFrame = CFrame.new(-5.70979691, 8.60026169, 36.5600357, -1, 6.81412985e-06, -1.27640888e-05, 7.56088548e-06, 0.999981761, -9.83839709e-06, 2.78288353e-05, 7.34849891e-07, -1.00000024)
Part222.BackSurface = Enum.SurfaceType.Weld
Part222.BottomSurface = Enum.SurfaceType.Weld
Part222.FrontSurface = Enum.SurfaceType.Weld
Part222.LeftSurface = Enum.SurfaceType.Weld
Part222.RightSurface = Enum.SurfaceType.Weld
Part222.TopSurface = Enum.SurfaceType.Weld
Part222.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part222.Position = Vector3.new(-5.70979691, 8.60026169, 36.5600357)
Part222.Orientation = Vector3.new(0, -180, 0)
Part222.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh223.Parent = Part222
Part224.Parent = Model0
Part224.Material = Enum.Material.Metal
Part224.BrickColor = BrickColor.new("Grime")
Part224.Rotation = Vector3.new(180, 0, -180)
Part224.CanCollide = false
Part224.FormFactor = Enum.FormFactor.Custom
Part224.Size = Vector3.new(11.8000002, 1.39999998, 0.400000006)
Part224.CFrame = CFrame.new(-10.8097229, 6.70026398, 46.2599983, -1, 6.7584383e-06, -1.16997562e-05, 7.04279182e-06, 1, -3.34411698e-06, 1.74280249e-05, 6.87942702e-07, -1)
Part224.BackSurface = Enum.SurfaceType.Weld
Part224.BottomSurface = Enum.SurfaceType.Weld
Part224.FrontSurface = Enum.SurfaceType.Weld
Part224.LeftSurface = Enum.SurfaceType.Weld
Part224.RightSurface = Enum.SurfaceType.Weld
Part224.TopSurface = Enum.SurfaceType.Weld
Part224.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part224.Position = Vector3.new(-10.8097229, 6.70026398, 46.2599983)
Part224.Orientation = Vector3.new(0, -180, 0)
Part224.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh225.Parent = Part224
Part226.Parent = Model0
Part226.Material = Enum.Material.Metal
Part226.BrickColor = BrickColor.new("Grime")
Part226.Rotation = Vector3.new(-180, 0, -180)
Part226.CanCollide = false
Part226.FormFactor = Enum.FormFactor.Custom
Part226.Size = Vector3.new(7.19999981, 5, 5.19999981)
Part226.CFrame = CFrame.new(-1.30967951, 7.70056057, 33.659565, -1, 7.81613926e-06, -3.46217457e-05, 8.18463377e-06, 0.99999088, 4.60983938e-06, 4.20598662e-05, 9.83004793e-06, -1.00000012)
Part226.BackSurface = Enum.SurfaceType.Weld
Part226.BottomSurface = Enum.SurfaceType.Weld
Part226.FrontSurface = Enum.SurfaceType.Weld
Part226.LeftSurface = Enum.SurfaceType.Weld
Part226.RightSurface = Enum.SurfaceType.Weld
Part226.TopSurface = Enum.SurfaceType.Weld
Part226.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part226.Position = Vector3.new(-1.30967951, 7.70056057, 33.659565)
Part226.Orientation = Vector3.new(0, -180, 0)
Part226.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh227.Parent = Part226
Part228.Parent = Model0
Part228.Material = Enum.Material.Metal
Part228.BrickColor = BrickColor.new("Grime")
Part228.Rotation = Vector3.new(-180, 0, -180)
Part228.CanCollide = false
Part228.FormFactor = Enum.FormFactor.Custom
Part228.Size = Vector3.new(11.8000002, 1.39999998, 0.400000006)
Part228.CFrame = CFrame.new(-10.8100386, 6.70071936, 31.4599133, -1, 7.03509431e-06, -1.81622581e-05, 7.05417779e-06, 1, 3.9548047e-07, 1.85506979e-05, 6.6837697e-07, -1)
Part228.BackSurface = Enum.SurfaceType.Weld
Part228.BottomSurface = Enum.SurfaceType.Weld
Part228.FrontSurface = Enum.SurfaceType.Weld
Part228.LeftSurface = Enum.SurfaceType.Weld
Part228.RightSurface = Enum.SurfaceType.Weld
Part228.TopSurface = Enum.SurfaceType.Weld
Part228.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part228.Position = Vector3.new(-10.8100386, 6.70071936, 31.4599133)
Part228.Orientation = Vector3.new(0, -180, 0)
Part228.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh229.Parent = Part228
Part230.Parent = Model0
Part230.Material = Enum.Material.Metal
Part230.BrickColor = BrickColor.new("Grime")
Part230.Rotation = Vector3.new(-180, 0, -180)
Part230.CanCollide = false
Part230.FormFactor = Enum.FormFactor.Custom
Part230.Size = Vector3.new(7.19999981, 5, 5.19999981)
Part230.CFrame = CFrame.new(-1.30968046, 7.70014811, 44.0596848, -1, 9.28767258e-06, -6.2477724e-05, 9.65974232e-06, 0.99999088, 3.24114408e-05, 7.00270903e-05, 3.77095821e-05, -1.00000012)
Part230.BackSurface = Enum.SurfaceType.Weld
Part230.BottomSurface = Enum.SurfaceType.Weld
Part230.FrontSurface = Enum.SurfaceType.Weld
Part230.LeftSurface = Enum.SurfaceType.Weld
Part230.RightSurface = Enum.SurfaceType.Weld
Part230.TopSurface = Enum.SurfaceType.Weld
Part230.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part230.Position = Vector3.new(-1.30968046, 7.70014811, 44.0596848)
Part230.Orientation = Vector3.new(0, -180, 0)
Part230.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh231.Parent = Part230
Part232.Parent = Model0
Part232.Material = Enum.Material.Metal
Part232.BrickColor = BrickColor.new("Grime")
Part232.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part232.CanCollide = false
Part232.FormFactor = Enum.FormFactor.Custom
Part232.Size = Vector3.new(4, 3.60000014, 0.400000006)
Part232.CFrame = CFrame.new(-23.5095253, 6.40087748, 41.6604347, -1, 1.09171879e-05, -9.79027827e-05, 1.12118551e-05, 1, 2.75443344e-05, 0.000103897743, 3.17625672e-05, -1)
Part232.BackSurface = Enum.SurfaceType.Weld
Part232.BottomSurface = Enum.SurfaceType.Weld
Part232.FrontSurface = Enum.SurfaceType.Weld
Part232.LeftSurface = Enum.SurfaceType.Weld
Part232.RightSurface = Enum.SurfaceType.Weld
Part232.TopSurface = Enum.SurfaceType.Weld
Part232.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part232.Position = Vector3.new(-23.5095253, 6.40087748, 41.6604347)
Part232.Orientation = Vector3.new(0, -179.98999, 0)
Part232.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh233.Parent = Part232
Part234.Parent = Model0
Part234.Material = Enum.Material.Metal
Part234.BrickColor = BrickColor.new("Grime")
Part234.Rotation = Vector3.new(180, 0, -180)
Part234.CanCollide = false
Part234.FormFactor = Enum.FormFactor.Custom
Part234.Size = Vector3.new(0.200000003, 4.19999981, 4.4000001)
Part234.CFrame = CFrame.new(-16.8097973, 8.10076141, 33.6598473, -1, 8.92862408e-06, -5.77830069e-05, 8.94776349e-06, 1, -8.51531922e-07, 5.81714412e-05, -5.790248e-07, -1)
Part234.BackSurface = Enum.SurfaceType.Weld
Part234.BottomSurface = Enum.SurfaceType.Weld
Part234.FrontSurface = Enum.SurfaceType.Weld
Part234.LeftSurface = Enum.SurfaceType.Weld
Part234.RightSurface = Enum.SurfaceType.Weld
Part234.TopSurface = Enum.SurfaceType.Weld
Part234.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part234.Position = Vector3.new(-16.8097973, 8.10076141, 33.6598473)
Part234.Orientation = Vector3.new(0, -180, 0)
Part234.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh235.Parent = Part234
Part236.Parent = Model0
Part236.Material = Enum.Material.Ice
Part236.BrickColor = BrickColor.new("Dark stone grey")
Part236.Transparency = 0.5
Part236.Rotation = Vector3.new(172.399994, 0, -180)
Part236.CanCollide = false
Part236.FormFactor = Enum.FormFactor.Custom
Part236.Size = Vector3.new(3, 2.5999999, 0.200000003)
Part236.CFrame = CFrame.new(-24.2096062, 8.73111153, 46.5839996, -1, 1.03770833e-06, -6.15868048e-05, 1.03748134e-05, 0.991209269, -0.132304236, 8.50215365e-05, -0.132287398, -0.991211414)
Part236.BackSurface = Enum.SurfaceType.Weld
Part236.BottomSurface = Enum.SurfaceType.Weld
Part236.FrontSurface = Enum.SurfaceType.Weld
Part236.LeftSurface = Enum.SurfaceType.Weld
Part236.RightSurface = Enum.SurfaceType.Weld
Part236.TopSurface = Enum.SurfaceType.Weld
Part236.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part236.Position = Vector3.new(-24.2096062, 8.73111153, 46.5839996)
Part236.Orientation = Vector3.new(7.5999999, -180, 0)
Part236.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh237.Parent = Part236
BlockMesh237.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh237.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh237.Scale = Vector3.new(1, 1.14999998, 0.5)
Part238.Parent = Model0
Part238.Material = Enum.Material.Metal
Part238.BrickColor = BrickColor.new("Grime")
Part238.Rotation = Vector3.new(180, 0, -180)
Part238.CanCollide = false
Part238.FormFactor = Enum.FormFactor.Custom
Part238.Size = Vector3.new(22, 0.799999714, 0.600000441)
Part238.CFrame = CFrame.new(-5.70983505, 8.60029507, 41.1600647, -1, 6.14293958e-06, -2.86971044e-07, 6.52252311e-06, 0.99999088, -2.05128945e-05, 7.94687185e-06, -1.51366112e-05, -1.00000012)
Part238.BackSurface = Enum.SurfaceType.Weld
Part238.BottomSurface = Enum.SurfaceType.Weld
Part238.FrontSurface = Enum.SurfaceType.Weld
Part238.LeftSurface = Enum.SurfaceType.Weld
Part238.RightSurface = Enum.SurfaceType.Weld
Part238.TopSurface = Enum.SurfaceType.Weld
Part238.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part238.Position = Vector3.new(-5.70983505, 8.60029507, 41.1600647)
Part238.Orientation = Vector3.new(0, -180, 0)
Part238.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh239.Parent = Part238
Part240.Parent = Model0
Part240.Material = Enum.Material.Metal
Part240.BrickColor = BrickColor.new("Grime")
Part240.Rotation = Vector3.new(-180, 0, -180)
Part240.CanCollide = false
Part240.FormFactor = Enum.FormFactor.Custom
Part240.Size = Vector3.new(1.59999919, 0.799999952, 5.19999981)
Part240.CFrame = CFrame.new(3.09039879, 6.80017376, 33.6598129, -1, 7.68635618e-06, -3.03721881e-05, 7.69642338e-06, 1, 9.77274976e-06, 3.05831309e-05, 9.92072819e-06, -1)
Part240.BackSurface = Enum.SurfaceType.Weld
Part240.BottomSurface = Enum.SurfaceType.Weld
Part240.FrontSurface = Enum.SurfaceType.Weld
Part240.LeftSurface = Enum.SurfaceType.Weld
Part240.RightSurface = Enum.SurfaceType.Weld
Part240.TopSurface = Enum.SurfaceType.Weld
Part240.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part240.Position = Vector3.new(3.09039879, 6.80017376, 33.6598129)
Part240.Orientation = Vector3.new(0, -180, 0)
Part240.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh241.Parent = Part240
Part242.Parent = Model0
Part242.Material = Enum.Material.Ice
Part242.BrickColor = BrickColor.new("Dark stone grey")
Part242.Transparency = 0.5
Part242.Rotation = Vector3.new(172.399994, -0.00999999978, 180)
Part242.CanCollide = false
Part242.FormFactor = Enum.FormFactor.Custom
Part242.Size = Vector3.new(6, 2, 0.200000003)
Part242.CFrame = CFrame.new(-19.709465, 8.82992744, 46.5701866, -1, -7.48528237e-06, -0.000163338729, 1.53728633e-05, 0.991222322, -0.132206306, 0.000187008089, -0.132189468, -0.991224468)
Part242.BackSurface = Enum.SurfaceType.Weld
Part242.BottomSurface = Enum.SurfaceType.Weld
Part242.FrontSurface = Enum.SurfaceType.Weld
Part242.LeftSurface = Enum.SurfaceType.Weld
Part242.RightSurface = Enum.SurfaceType.Weld
Part242.TopSurface = Enum.SurfaceType.Weld
Part242.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part242.Position = Vector3.new(-19.709465, 8.82992744, 46.5701866)
Part242.Orientation = Vector3.new(7.5999999, -179.98999, 0)
Part242.Color = Color3.new(0.388235, 0.372549, 0.384314)
BlockMesh243.Parent = Part242
BlockMesh243.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh243.Scale = Vector3.new(1, 1.14999998, 0.5)
BlockMesh243.Scale = Vector3.new(1, 1.14999998, 0.5)
Part244.Parent = Model0
Part244.Material = Enum.Material.Metal
Part244.BrickColor = BrickColor.new("Grime")
Part244.Rotation = Vector3.new(-180, 0, -180)
Part244.CanCollide = false
Part244.FormFactor = Enum.FormFactor.Custom
Part244.Size = Vector3.new(22, 0.200000003, 5.20000029)
Part244.CFrame = CFrame.new(-5.70976353, 8.10029221, 38.8601913, -1, 7.18417186e-06, -2.02370084e-05, 7.56368945e-06, 0.99999088, 2.50288394e-06, 2.78970601e-05, 7.87922181e-06, -1.00000012)
Part244.BackSurface = Enum.SurfaceType.Weld
Part244.BottomSurface = Enum.SurfaceType.Weld
Part244.FrontSurface = Enum.SurfaceType.Weld
Part244.LeftSurface = Enum.SurfaceType.Weld
Part244.RightSurface = Enum.SurfaceType.Weld
Part244.TopSurface = Enum.SurfaceType.Weld
Part244.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part244.Position = Vector3.new(-5.70976353, 8.10029221, 38.8601913)
Part244.Orientation = Vector3.new(0, -180, 0)
Part244.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh245.Parent = Part244
Part246.Parent = Model0
Part246.Material = Enum.Material.Metal
Part246.BrickColor = BrickColor.new("Grime")
Part246.Rotation = Vector3.new(180, 0, -180)
Part246.CanCollide = false
Part246.FormFactor = Enum.FormFactor.Custom
Part246.Size = Vector3.new(0.799999237, 4.20000029, 0.400000006)
Part246.CFrame = CFrame.new(-17.109623, 8.10075474, 36.0598869, -1, 8.79787513e-06, -5.50586119e-05, 8.82257518e-06, 1, -2.83478767e-06, 5.55580045e-05, -2.48424249e-06, -1)
Part246.BackSurface = Enum.SurfaceType.Weld
Part246.BottomSurface = Enum.SurfaceType.Weld
Part246.FrontSurface = Enum.SurfaceType.Weld
Part246.LeftSurface = Enum.SurfaceType.Weld
Part246.RightSurface = Enum.SurfaceType.Weld
Part246.TopSurface = Enum.SurfaceType.Weld
Part246.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part246.Position = Vector3.new(-17.109623, 8.10075474, 36.0598869)
Part246.Orientation = Vector3.new(0, -180, 0)
Part246.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh247.Parent = Part246
Part248.Name = "wheel"
Part248.Parent = Model0
Part248.Material = Enum.Material.Metal
Part248.BrickColor = BrickColor.new("Grime")
Part248.Transparency = 1
Part248.Rotation = Vector3.new(90, 90, 0)
Part248.FormFactor = Enum.FormFactor.Symmetric
Part248.Friction = 1
Part248.Shape = Enum.PartType.Ball
Part248.Size = Vector3.new(5, 5, 5)
Part248.CFrame = CFrame.new(-22.5099754, 2.99934292, 28.5597458, 1.68583483e-05, 9.94351055e-08, 1, 1, 4.67716745e-08, -1.68586612e-05, -3.92897164e-08, 1, -1.10534181e-07)
Part248.BottomSurface = Enum.SurfaceType.Smooth
Part248.TopSurface = Enum.SurfaceType.Hinge
Part248.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part248.Position = Vector3.new(-22.5099754, 2.99934292, 28.5597458)
Part248.Orientation = Vector3.new(0, 90, 90)
Part248.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh249.Parent = Part248
CylinderMesh249.Offset = Vector3.new(0, -1.10000002, 0)
CylinderMesh249.Scale = Vector3.new(1, 0.600000024, 1)
CylinderMesh249.Scale = Vector3.new(1, 0.600000024, 1)
Part250.Parent = Model0
Part250.Material = Enum.Material.Metal
Part250.BrickColor = BrickColor.new("Grime")
Part250.Rotation = Vector3.new(180, 0, -180)
Part250.FormFactor = Enum.FormFactor.Custom
Part250.Size = Vector3.new(22.7999992, 3.99999976, 5.20000029)
Part250.CFrame = CFrame.new(-6.10987282, 6.00021553, 38.8599777, -1, 6.44594638e-06, -5.42557655e-06, 6.45635237e-06, 1, -7.76254092e-06, 5.63639105e-06, -7.6143624e-06, -1)
Part250.BottomSurface = Enum.SurfaceType.Weld
Part250.LeftSurface = Enum.SurfaceType.Weld
Part250.RightSurface = Enum.SurfaceType.Weld
Part250.TopSurface = Enum.SurfaceType.Weld
Part250.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part250.Position = Vector3.new(-6.10987282, 6.00021553, 38.8599777)
Part250.Orientation = Vector3.new(0, -180, 0)
Part250.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh251.Parent = Part250
Part252.Parent = Model0
Part252.Material = Enum.Material.Metal
Part252.BrickColor = BrickColor.new("Grime")
Part252.Rotation = Vector3.new(-180, 0, -180)
Part252.FormFactor = Enum.FormFactor.Custom
Part252.Size = Vector3.new(9.00000095, 0.800000072, 5.20000029)
Part252.CFrame = CFrame.new(-22.0095825, 4.40028095, 38.8602219, -1, 7.54429402e-06, -2.79332871e-05, 7.55442079e-06, 1, 8.47021511e-06, 2.81442171e-05, 8.61821627e-06, -1)
Part252.BackSurface = Enum.SurfaceType.Weld
Part252.BottomSurface = Enum.SurfaceType.Weld
Part252.FrontSurface = Enum.SurfaceType.Weld
Part252.LeftSurface = Enum.SurfaceType.Weld
Part252.RightSurface = Enum.SurfaceType.Weld
Part252.TopSurface = Enum.SurfaceType.Weld
Part252.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part252.Position = Vector3.new(-22.0095825, 4.40028095, 38.8602219)
Part252.Orientation = Vector3.new(0, -180, 0)
Part252.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh253.Parent = Part252
Part254.Parent = Model0
Part254.Material = Enum.Material.Metal
Part254.BrickColor = BrickColor.new("Grime")
Part254.Rotation = Vector3.new(-180, 0, -180)
Part254.CanCollide = false
Part254.FormFactor = Enum.FormFactor.Custom
Part254.Size = Vector3.new(8, 2.79999995, 0.400000006)
Part254.CFrame = CFrame.new(-21.5101471, 6.00087833, 31.2600803, -1, 6.5851641e-06, -8.26637188e-06, 6.74582452e-06, 0.999991715, 1.20076311e-05, 1.15773773e-05, 1.42274675e-05, -1.00000143)
Part254.BottomSurface = Enum.SurfaceType.Weld
Part254.FrontSurface = Enum.SurfaceType.Weld
Part254.LeftSurface = Enum.SurfaceType.Weld
Part254.RightSurface = Enum.SurfaceType.Weld
Part254.TopSurface = Enum.SurfaceType.Weld
Part254.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part254.Position = Vector3.new(-21.5101471, 6.00087833, 31.2600803)
Part254.Orientation = Vector3.new(0, -180, 0)
Part254.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh255.Parent = Part254
Part256.Parent = Model0
Part256.Material = Enum.Material.Metal
Part256.BrickColor = BrickColor.new("Grime")
Part256.Rotation = Vector3.new(180, 0, -180)
Part256.FormFactor = Enum.FormFactor.Custom
Part256.Size = Vector3.new(8, 1.20000005, 5.19999981)
Part256.CFrame = CFrame.new(-21.5099373, 3.40028739, 33.6600609, -1, 6.41632732e-06, -4.81871075e-06, 6.4790911e-06, 1, -8.07724973e-06, 6.09494327e-06, -7.18019601e-06, -1)
Part256.BottomSurface = Enum.SurfaceType.Weld
Part256.LeftSurface = Enum.SurfaceType.Weld
Part256.RightSurface = Enum.SurfaceType.Weld
Part256.TopSurface = Enum.SurfaceType.Weld
Part256.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part256.Position = Vector3.new(-21.5099373, 3.40028739, 33.6600609)
Part256.Orientation = Vector3.new(0, -180, 0)
Part256.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh257.Parent = Part256
Part258.Parent = Model0
Part258.Material = Enum.Material.Metal
Part258.BrickColor = BrickColor.new("Grime")
Part258.Rotation = Vector3.new(180, 0, -180)
Part258.CanCollide = false
Part258.FormFactor = Enum.FormFactor.Custom
Part258.Size = Vector3.new(8, 2.79999995, 0.400000006)
Part258.CFrame = CFrame.new(-21.509985, 6.00044394, 46.4600868, -1, 8.28853172e-06, -4.09939275e-05, 8.58829844e-06, 1, -3.20226973e-05, 4.70105078e-05, -2.77881045e-05, -1)
Part258.BackSurface = Enum.SurfaceType.Weld
Part258.BottomSurface = Enum.SurfaceType.Weld
Part258.LeftSurface = Enum.SurfaceType.Weld
Part258.RightSurface = Enum.SurfaceType.Weld
Part258.TopSurface = Enum.SurfaceType.Weld
Part258.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part258.Position = Vector3.new(-21.509985, 6.00044394, 46.4600868)
Part258.Orientation = Vector3.new(0, -180, 0)
Part258.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh259.Parent = Part258
Part260.Parent = Model0
Part260.Material = Enum.Material.Metal
Part260.BrickColor = BrickColor.new("Grime")
Part260.Rotation = Vector3.new(-180, 0, -180)
Part260.FormFactor = Enum.FormFactor.Custom
Part260.Size = Vector3.new(8, 0.600000083, 5.19999981)
Part260.CFrame = CFrame.new(-21.509903, 4.3003602, 44.0600548, -1, 5.38951872e-06, 1.67202743e-05, 5.68799487e-06, 1, 1.31562274e-06, -1.07034357e-05, 5.55068073e-06, -1)
Part260.BackSurface = Enum.SurfaceType.Weld
Part260.BottomSurface = Enum.SurfaceType.Weld
Part260.LeftSurface = Enum.SurfaceType.Weld
Part260.RightSurface = Enum.SurfaceType.Weld
Part260.TopSurface = Enum.SurfaceType.Weld
Part260.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part260.Position = Vector3.new(-21.509903, 4.3003602, 44.0600548)
Part260.Orientation = Vector3.new(0, 180, 0)
Part260.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh261.Parent = Part260
Part262.Parent = Model0
Part262.Material = Enum.Material.Metal
Part262.BrickColor = BrickColor.new("Grime")
Part262.Rotation = Vector3.new(172.399994, 0, -180)
Part262.CanCollide = false
Part262.FormFactor = Enum.FormFactor.Custom
Part262.Size = Vector3.new(6, 0.400000036, 0.200000003)
Part262.CFrame = CFrame.new(-19.7101326, 7.64007092, 46.7289124, -1, 7.62399668e-06, 1.59960618e-05, 6.63972241e-06, 0.991217554, -0.132242054, 7.24958954e-06, -0.132225215, -0.991219759)
Part262.BackSurface = Enum.SurfaceType.Weld
Part262.BottomSurface = Enum.SurfaceType.Weld
Part262.FrontSurface = Enum.SurfaceType.Weld
Part262.LeftSurface = Enum.SurfaceType.Weld
Part262.RightSurface = Enum.SurfaceType.Weld
Part262.TopSurface = Enum.SurfaceType.Weld
Part262.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part262.Position = Vector3.new(-19.7101326, 7.64007092, 46.7289124)
Part262.Orientation = Vector3.new(7.5999999, 180, 0)
Part262.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh263.Parent = Part262
BlockMesh263.Offset = Vector3.new(0, 0, 0.200000003)
BlockMesh263.Scale = Vector3.new(1, 1.14999998, 1)
BlockMesh263.Scale = Vector3.new(1, 1.14999998, 1)
Part264.Parent = Model0
Part264.Material = Enum.Material.Metal
Part264.BrickColor = BrickColor.new("Grime")
Part264.Rotation = Vector3.new(-180, 0, -180)
Part264.CanCollide = false
Part264.FormFactor = Enum.FormFactor.Custom
Part264.Size = Vector3.new(4.79999924, 4.20000029, 0.400000006)
Part264.CFrame = CFrame.new(-19.1095543, 8.10087967, 41.6602554, -1, 1.00066009e-05, -7.96175955e-05, 1.02973845e-05, 1, 1.46885304e-05, 8.55014368e-05, 1.88290433e-05, -1)
Part264.BackSurface = Enum.SurfaceType.Weld
Part264.BottomSurface = Enum.SurfaceType.Weld
Part264.FrontSurface = Enum.SurfaceType.Weld
Part264.LeftSurface = Enum.SurfaceType.Weld
Part264.RightSurface = Enum.SurfaceType.Weld
Part264.TopSurface = Enum.SurfaceType.Weld
Part264.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part264.Position = Vector3.new(-19.1095543, 8.10087967, 41.6602554)
Part264.Orientation = Vector3.new(0, -180, 0)
Part264.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh265.Parent = Part264
Part266.Parent = Model0
Part266.Material = Enum.Material.Metal
Part266.BrickColor = BrickColor.new("Grime")
Part266.Rotation = Vector3.new(-180, 0, -180)
Part266.CanCollide = false
Part266.FormFactor = Enum.FormFactor.Custom
Part266.Size = Vector3.new(3.99999928, 5.60000038, 0.400000006)
Part266.CFrame = CFrame.new(-19.5095768, 7.40064335, 36.0599785, -1, 9.13069925e-06, -6.21806248e-05, 9.83368318e-06, 0.99999088, 2.60451998e-06, 7.64155848e-05, 1.2662108e-05, -1.00000012)
Part266.BackSurface = Enum.SurfaceType.Weld
Part266.BottomSurface = Enum.SurfaceType.Weld
Part266.FrontSurface = Enum.SurfaceType.Weld
Part266.LeftSurface = Enum.SurfaceType.Weld
Part266.RightSurface = Enum.SurfaceType.Weld
Part266.TopSurface = Enum.SurfaceType.Weld
Part266.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part266.Position = Vector3.new(-19.5095768, 7.40064335, 36.0599785)
Part266.Orientation = Vector3.new(0, -180, 0)
Part266.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh267.Parent = Part266
Part268.Parent = Model0
Part268.Material = Enum.Material.Metal
Part268.BrickColor = BrickColor.new("Grime")
Part268.Rotation = Vector3.new(-180, 0, -180)
Part268.CanCollide = false
Part268.FormFactor = Enum.FormFactor.Custom
Part268.Size = Vector3.new(3.99999928, 1.40000033, 0.400000006)
Part268.CFrame = CFrame.new(-19.5098534, 5.30032063, 41.6600571, -1, 7.29569683e-06, -2.24659452e-05, 7.88762736e-06, 1, 4.21738878e-06, 3.43997672e-05, 1.26169134e-05, -1)
Part268.BackSurface = Enum.SurfaceType.Weld
Part268.BottomSurface = Enum.SurfaceType.Weld
Part268.FrontSurface = Enum.SurfaceType.Weld
Part268.LeftSurface = Enum.SurfaceType.Weld
Part268.RightSurface = Enum.SurfaceType.Weld
Part268.TopSurface = Enum.SurfaceType.Weld
Part268.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part268.Position = Vector3.new(-19.5098534, 5.30032063, 41.6600571)
Part268.Orientation = Vector3.new(0, -180, 0)
Part268.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh269.Parent = Part268
Part270.Parent = Model0
Part270.Material = Enum.Material.Metal
Part270.BrickColor = BrickColor.new("Grime")
Part270.Rotation = Vector3.new(-180, 0, -180)
Part270.FormFactor = Enum.FormFactor.Custom
Part270.Size = Vector3.new(8, 0.600000083, 5.19999981)
Part270.CFrame = CFrame.new(-21.5100098, 4.30057859, 33.6601372, -1, 6.76650234e-06, -2.10475282e-05, 6.92721051e-06, 0.999991715, 2.39840938e-06, 2.43584891e-05, 4.61806076e-06, -1.00000143)
Part270.BottomSurface = Enum.SurfaceType.Weld
Part270.FrontSurface = Enum.SurfaceType.Weld
Part270.LeftSurface = Enum.SurfaceType.Weld
Part270.RightSurface = Enum.SurfaceType.Weld
Part270.TopSurface = Enum.SurfaceType.Weld
Part270.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part270.Position = Vector3.new(-21.5100098, 4.30057859, 33.6601372)
Part270.Orientation = Vector3.new(0, -180, 0)
Part270.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh271.Parent = Part270
Part272.Parent = Model0
Part272.Material = Enum.Material.Metal
Part272.BrickColor = BrickColor.new("Grime")
Part272.Rotation = Vector3.new(180, 0, -180)
Part272.FormFactor = Enum.FormFactor.Custom
Part272.Size = Vector3.new(9.40000057, 3.19999981, 5.20000029)
Part272.CFrame = CFrame.new(-22.2094765, 6.40075827, 38.8604355, -1, 7.93084837e-06, -3.66540953e-05, 8.22882612e-06, 1, -1.67581202e-05, 4.26486076e-05, -1.25390716e-05, -1)
Part272.BackSurface = Enum.SurfaceType.Weld
Part272.BottomSurface = Enum.SurfaceType.Weld
Part272.FrontSurface = Enum.SurfaceType.Weld
Part272.LeftSurface = Enum.SurfaceType.Weld
Part272.RightSurface = Enum.SurfaceType.Weld
Part272.TopSurface = Enum.SurfaceType.Weld
Part272.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part272.Position = Vector3.new(-22.2094765, 6.40075827, 38.8604355)
Part272.Orientation = Vector3.new(0, -180, 0)
Part272.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh273.Parent = Part272
Part274.Parent = Model0
Part274.Material = Enum.Material.Metal
Part274.BrickColor = BrickColor.new("Grime")
Part274.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part274.CanCollide = false
Part274.FormFactor = Enum.FormFactor.Custom
Part274.Size = Vector3.new(0.200000003, 4.19999981, 4.4000001)
Part274.CFrame = CFrame.new(-16.8093033, 8.10082817, 44.0597496, -1, 1.14173636e-05, -0.000108378299, 1.16978508e-05, 1, 3.53243195e-05, 0.00011410701, 3.93551636e-05, -1)
Part274.BackSurface = Enum.SurfaceType.Weld
Part274.BottomSurface = Enum.SurfaceType.Weld
Part274.FrontSurface = Enum.SurfaceType.Weld
Part274.LeftSurface = Enum.SurfaceType.Weld
Part274.RightSurface = Enum.SurfaceType.Weld
Part274.TopSurface = Enum.SurfaceType.Weld
Part274.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part274.Position = Vector3.new(-16.8093033, 8.10082817, 44.0597496)
Part274.Orientation = Vector3.new(0, -179.98999, 0)
Part274.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh275.Parent = Part274
Part276.Parent = Model0
Part276.Material = Enum.Material.Metal
Part276.BrickColor = BrickColor.new("Grime")
Part276.Rotation = Vector3.new(-180, 0, -180)
Part276.CanCollide = false
Part276.FormFactor = Enum.FormFactor.Custom
Part276.Size = Vector3.new(0.799999237, 1.40000033, 0.400000006)
Part276.CFrame = CFrame.new(-17.1096954, 6.70062399, 31.2602272, -1, 7.63167918e-06, -3.04036766e-05, 7.79194579e-06, 0.999991715, 1.59272313e-05, 3.37147576e-05, 1.81469222e-05, -1.00000143)
Part276.BackSurface = Enum.SurfaceType.Weld
Part276.BottomSurface = Enum.SurfaceType.Weld
Part276.FrontSurface = Enum.SurfaceType.Weld
Part276.LeftSurface = Enum.SurfaceType.Weld
Part276.RightSurface = Enum.SurfaceType.Weld
Part276.TopSurface = Enum.SurfaceType.Weld
Part276.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part276.Position = Vector3.new(-17.1096954, 6.70062399, 31.2602272)
Part276.Orientation = Vector3.new(0, -180, 0)
Part276.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh277.Parent = Part276
Part278.Parent = Model0
Part278.Material = Enum.Material.Metal
Part278.BrickColor = BrickColor.new("Grime")
Part278.Rotation = Vector3.new(180, 0, -180)
Part278.CanCollide = false
Part278.FormFactor = Enum.FormFactor.Custom
Part278.Size = Vector3.new(0.799999714, 1.39999998, 0.400000006)
Part278.CFrame = CFrame.new(-17.1098671, 6.70034742, 46.4597092, -1, 9.67943106e-06, -6.97521682e-05, 9.97899224e-06, 1, -1.5873462e-05, 7.57688613e-05, -1.16392221e-05, -1)
Part278.BackSurface = Enum.SurfaceType.Weld
Part278.BottomSurface = Enum.SurfaceType.Weld
Part278.FrontSurface = Enum.SurfaceType.Weld
Part278.LeftSurface = Enum.SurfaceType.Weld
Part278.RightSurface = Enum.SurfaceType.Weld
Part278.TopSurface = Enum.SurfaceType.Weld
Part278.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part278.Position = Vector3.new(-17.1098671, 6.70034742, 46.4597092)
Part278.Orientation = Vector3.new(0, -180, 0)
Part278.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh279.Parent = Part278
Part280.Parent = Model0
Part280.Material = Enum.Material.Metal
Part280.BrickColor = BrickColor.new("Grime")
Part280.Rotation = Vector3.new(180, 0, -180)
Part280.CanCollide = false
Part280.FormFactor = Enum.FormFactor.Custom
Part280.Size = Vector3.new(4, 3.60000014, 0.400000006)
Part280.CFrame = CFrame.new(-23.5096321, 6.40070248, 36.0604095, -1, 7.78029607e-06, -3.33969365e-05, 8.37296375e-06, 1, -1.92508596e-05, 4.53305838e-05, -1.08514441e-05, -1)
Part280.BackSurface = Enum.SurfaceType.Weld
Part280.BottomSurface = Enum.SurfaceType.Weld
Part280.FrontSurface = Enum.SurfaceType.Weld
Part280.LeftSurface = Enum.SurfaceType.Weld
Part280.RightSurface = Enum.SurfaceType.Weld
Part280.TopSurface = Enum.SurfaceType.Weld
Part280.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part280.Position = Vector3.new(-23.5096321, 6.40070248, 36.0604095)
Part280.Orientation = Vector3.new(0, -180, 0)
Part280.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh281.Parent = Part280
Part282.Parent = Model0
Part282.Material = Enum.Material.Metal
Part282.BrickColor = BrickColor.new("Grime")
Part282.Rotation = Vector3.new(-180, 0, -180)
Part282.CanCollide = false
Part282.FormFactor = Enum.FormFactor.Custom
Part282.Size = Vector3.new(1.00000012, 2.20000005, 5.19999981)
Part282.CFrame = CFrame.new(-26.0093632, 6.30065203, 33.6606827, -1, 9.146097e-06, -6.23015076e-05, 9.88777356e-06, 0.999991715, 1.19247252e-05, 7.7335586e-05, 2.23954721e-05, -1.00000143)
Part282.BackSurface = Enum.SurfaceType.Weld
Part282.BottomSurface = Enum.SurfaceType.Weld
Part282.FrontSurface = Enum.SurfaceType.Weld
Part282.LeftSurface = Enum.SurfaceType.Weld
Part282.RightSurface = Enum.SurfaceType.Weld
Part282.TopSurface = Enum.SurfaceType.Weld
Part282.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part282.Position = Vector3.new(-26.0093632, 6.30065203, 33.6606827)
Part282.Orientation = Vector3.new(0, -180, 0)
Part282.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh283.Parent = Part282
Part284.Parent = Model0
Part284.Material = Enum.Material.Metal
Part284.BrickColor = BrickColor.new("Grime")
Part284.Rotation = Vector3.new(-180, 0, -180)
Part284.FormFactor = Enum.FormFactor.Custom
Part284.Size = Vector3.new(0.400000095, 0.800000072, 5.19999981)
Part284.CFrame = CFrame.new(-26.7099648, 4.40034389, 38.8601379, -1, 6.28535236e-06, -2.60919842e-06, 6.58271165e-06, 1, 1.62551987e-06, 8.60384898e-06, 5.84486224e-06, -1)
Part284.BackSurface = Enum.SurfaceType.Weld
Part284.BottomSurface = Enum.SurfaceType.Weld
Part284.FrontSurface = Enum.SurfaceType.Weld
Part284.LeftSurface = Enum.SurfaceType.Weld
Part284.RightSurface = Enum.SurfaceType.Weld
Part284.TopSurface = Enum.SurfaceType.Weld
Part284.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part284.Position = Vector3.new(-26.7099648, 4.40034389, 38.8601379)
Part284.Orientation = Vector3.new(0, -180, 0)
Part284.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh285.Parent = Part284
Part286.Parent = Model0
Part286.Material = Enum.Material.Metal
Part286.BrickColor = BrickColor.new("Grime")
Part286.Rotation = Vector3.new(-180, -0.00999999978, -180)
Part286.CanCollide = false
Part286.FormFactor = Enum.FormFactor.Custom
Part286.Size = Vector3.new(1.00000012, 2.20000005, 5.19999981)
Part286.CFrame = CFrame.new(-26.0095215, 6.30111074, 44.0606766, -1, 9.61294518e-06, -0.000103726969, 9.90486296e-06, 1, 5.2497966e-05, 0.000109722117, 5.67162788e-05, -1)
Part286.BackSurface = Enum.SurfaceType.Weld
Part286.BottomSurface = Enum.SurfaceType.Weld
Part286.FrontSurface = Enum.SurfaceType.Weld
Part286.LeftSurface = Enum.SurfaceType.Weld
Part286.RightSurface = Enum.SurfaceType.Weld
Part286.TopSurface = Enum.SurfaceType.Weld
Part286.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part286.Position = Vector3.new(-26.0095215, 6.30111074, 44.0606766)
Part286.Orientation = Vector3.new(0, -179.98999, 0)
Part286.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh287.Parent = Part286
Part288.Name = "Brick"
Part288.Parent = Model0
Part288.Material = Enum.Material.Metal
Part288.BrickColor = BrickColor.new("Grime")
Part288.Transparency = 1
Part288.Rotation = Vector3.new(-98.1199951, 0, -180)
Part288.CanCollide = false
Part288.FormFactor = Enum.FormFactor.Custom
Part288.Size = Vector3.new(2, 0.200000003, 1.19999993)
Part288.CFrame = CFrame.new(-15.1093197, 9.22394657, 46.3002548, -1, 2.23412426e-05, -2.27283726e-06, 1.46798811e-06, 0.141308457, 0.989965618, 3.3739394e-05, 0.98996681, -0.141300574)
Part288.BackSurface = Enum.SurfaceType.Weld
Part288.BottomSurface = Enum.SurfaceType.Weld
Part288.FrontSurface = Enum.SurfaceType.Weld
Part288.LeftSurface = Enum.SurfaceType.Weld
Part288.RightSurface = Enum.SurfaceType.Weld
Part288.TopSurface = Enum.SurfaceType.Weld
Part288.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part288.Position = Vector3.new(-15.1093197, 9.22394657, 46.3002548)
Part288.Orientation = Vector3.new(-81.8799973, -180, 0)
Part288.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh289.Parent = Part288
BlockMesh289.Offset = Vector3.new(0, -0.189999998, 0)
Part290.Parent = Model0
Part290.Material = Enum.Material.Metal
Part290.BrickColor = BrickColor.new("Grime")
Part290.Rotation = Vector3.new(180, 0, -180)
Part290.FormFactor = Enum.FormFactor.Custom
Part290.Size = Vector3.new(0.400000095, 1.20000005, 5.19999981)
Part290.CFrame = CFrame.new(-26.709795, 4.60025549, 33.6601105, -1, 6.28825137e-06, -2.67255018e-06, 6.58563977e-06, 1, -9.30688202e-06, 8.66713162e-06, -5.08754056e-06, -1)
Part290.BackSurface = Enum.SurfaceType.Weld
Part290.BottomSurface = Enum.SurfaceType.Weld
Part290.FrontSurface = Enum.SurfaceType.Weld
Part290.LeftSurface = Enum.SurfaceType.Weld
Part290.RightSurface = Enum.SurfaceType.Weld
Part290.TopSurface = Enum.SurfaceType.Weld
Part290.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part290.Position = Vector3.new(-26.709795, 4.60025549, 33.6601105)
Part290.Orientation = Vector3.new(0, -180, 0)
Part290.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh291.Parent = Part290
Part292.Parent = Model0
Part292.Material = Enum.Material.Metal
Part292.BrickColor = BrickColor.new("Grime")
Part292.Rotation = Vector3.new(180, 0, -180)
Part292.FormFactor = Enum.FormFactor.Custom
Part292.Size = Vector3.new(0.400000095, 1.20000005, 5.19999981)
Part292.CFrame = CFrame.new(-26.7098675, 4.60042572, 44.0601082, -1, 6.28825137e-06, -2.67255018e-06, 6.58563977e-06, 1, -9.30688202e-06, 8.66713162e-06, -5.08754056e-06, -1)
Part292.BackSurface = Enum.SurfaceType.Weld
Part292.BottomSurface = Enum.SurfaceType.Weld
Part292.FrontSurface = Enum.SurfaceType.Weld
Part292.LeftSurface = Enum.SurfaceType.Weld
Part292.RightSurface = Enum.SurfaceType.Weld
Part292.TopSurface = Enum.SurfaceType.Weld
Part292.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part292.Position = Vector3.new(-26.7098675, 4.60042572, 44.0601082)
Part292.Orientation = Vector3.new(0, -180, 0)
Part292.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh293.Parent = Part292
WedgePart294.Parent = Model0
WedgePart294.Material = Enum.Material.Metal
WedgePart294.BrickColor = BrickColor.new("Grime")
WedgePart294.Rotation = Vector3.new(90, 0, -180)
WedgePart294.FormFactor = Enum.FormFactor.Custom
WedgePart294.Size = Vector3.new(22, 1.80000019, 0.800000131)
WedgePart294.CFrame = CFrame.new(-5.71021032, 8.60006523, 39.9598465, -1, 1.67611997e-05, -5.35971367e-06, 5.73934039e-06, 2.4999847e-06, -0.99999088, -9.10116614e-06, -1.00000012, -7.8765861e-06)
WedgePart294.BackSurface = Enum.SurfaceType.Weld
WedgePart294.BottomSurface = Enum.SurfaceType.Weld
WedgePart294.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart294.Position = Vector3.new(-5.71021032, 8.60006523, 39.9598465)
WedgePart294.Orientation = Vector3.new(89.7599945, -145.770004, 66.4599991)
WedgePart294.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh295.Parent = WedgePart294
SpecialMesh295.MeshType = Enum.MeshType.Wedge
WedgePart296.Parent = Model0
WedgePart296.Material = Enum.Material.Metal
WedgePart296.BrickColor = BrickColor.new("Grime")
WedgePart296.Rotation = Vector3.new(90, 0, 0)
WedgePart296.CanCollide = false
WedgePart296.FormFactor = Enum.FormFactor.Custom
WedgePart296.Size = Vector3.new(11.8000002, 0.400000006, 2.79999995)
WedgePart296.CFrame = CFrame.new(-10.8102522, 8.80012226, 46.259758, 1, 6.12342228e-06, -6.47552679e-06, -7.03663818e-06, 1.60052878e-05, -1, -1.74245251e-05, 1, 8.05025593e-06)
WedgePart296.BackSurface = Enum.SurfaceType.Weld
WedgePart296.BottomSurface = Enum.SurfaceType.Weld
WedgePart296.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart296.Position = Vector3.new(-10.8102522, 8.80012226, 46.259758)
WedgePart296.Orientation = Vector3.new(90, 0, 0)
WedgePart296.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh297.Parent = WedgePart296
SpecialMesh297.MeshType = Enum.MeshType.Wedge
WedgePart298.Parent = Model0
WedgePart298.Material = Enum.Material.Metal
WedgePart298.BrickColor = BrickColor.new("Grime")
WedgePart298.Rotation = Vector3.new(90, 0, 180)
WedgePart298.FormFactor = Enum.FormFactor.Custom
WedgePart298.Size = Vector3.new(10.1999998, 0.800000131, 1.00000012)
WedgePart298.CFrame = CFrame.new(0.190846562, 10.6997681, 41.8599472, -1, -1.71460924e-05, -7.07122672e-06, 7.44470481e-06, 3.71252099e-05, -0.99999088, 2.46954078e-05, -1.00000012, -4.24238897e-05)
WedgePart298.BackSurface = Enum.SurfaceType.Weld
WedgePart298.BottomSurface = Enum.SurfaceType.Weld
WedgePart298.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart298.Position = Vector3.new(0.190846562, 10.6997681, 41.8599472)
WedgePart298.Orientation = Vector3.new(89.7599945, -170.539993, 11.3400002)
WedgePart298.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh299.Parent = WedgePart298
SpecialMesh299.MeshType = Enum.MeshType.Wedge
WedgePart300.Parent = Model0
WedgePart300.Material = Enum.Material.Metal
WedgePart300.BrickColor = BrickColor.new("Grime")
WedgePart300.Rotation = Vector3.new(90, 0, 0)
WedgePart300.FormFactor = Enum.FormFactor.Custom
WedgePart300.Size = Vector3.new(22, 1.80000019, 0.800000131)
WedgePart300.CFrame = CFrame.new(-5.70992708, 8.6002655, 37.7604523, 1, -1.69808973e-05, -5.3198155e-06, -5.6994445e-06, -2.58807654e-06, -0.99999088, 9.32086368e-06, 1.00000012, -7.96467884e-06)
WedgePart300.BackSurface = Enum.SurfaceType.Weld
WedgePart300.BottomSurface = Enum.SurfaceType.Weld
WedgePart300.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart300.Position = Vector3.new(-5.70992708, 8.6002655, 37.7604523)
WedgePart300.Orientation = Vector3.new(89.7599945, -146.259995, -114.419998)
WedgePart300.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh301.Parent = WedgePart300
SpecialMesh301.MeshType = Enum.MeshType.Wedge
VehicleSeat302.Parent = Model0
VehicleSeat302.Material = Enum.Material.Metal
VehicleSeat302.BrickColor = BrickColor.new("Grime")
VehicleSeat302.Rotation = Vector3.new(0, 90, 0)
VehicleSeat302.Size = Vector3.new(2, 0.400000006, 2)
VehicleSeat302.CFrame = CFrame.new(-23.1098289, 4.8003788, 44.0599022, 1.1589701e-05, 5.60266608e-06, 1, -1.12916023e-05, 1, -6.19946923e-06, -1, -2.82160863e-06, -4.43901627e-07)
VehicleSeat302.TopSurface = Enum.SurfaceType.Weld
VehicleSeat302.HeadsUpDisplay = false
VehicleSeat302.MaxSpeed = 35
VehicleSeat302.Torque = 150
VehicleSeat302.Color = Color3.new(0.498039, 0.556863, 0.392157)
VehicleSeat302.Position = Vector3.new(-23.1098289, 4.8003788, 44.0599022)
VehicleSeat302.Orientation = Vector3.new(0, 90, 0)
VehicleSeat302.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart303.Parent = Model0
WedgePart303.Material = Enum.Material.Metal
WedgePart303.BrickColor = BrickColor.new("Grime")
WedgePart303.Rotation = Vector3.new(90, 0, -90)
WedgePart303.FormFactor = Enum.FormFactor.Custom
WedgePart303.Size = Vector3.new(5.19999933, 1, 1.20000005)
WedgePart303.CFrame = CFrame.new(-26.0089417, 4.60056925, 33.6610794, 1.45538397e-05, 1, -7.47078047e-06, -2.20777802e-05, -7.76782235e-06, -1, -1, 8.55936014e-06, 1.78583141e-05)
WedgePart303.BackSurface = Enum.SurfaceType.Weld
WedgePart303.BottomSurface = Enum.SurfaceType.Weld
WedgePart303.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart303.Position = Vector3.new(-26.0089417, 4.60056925, 33.6610794)
WedgePart303.Orientation = Vector3.new(90, 90, 0)
WedgePart303.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh304.Parent = WedgePart303
SpecialMesh304.MeshType = Enum.MeshType.Wedge
WedgePart305.Parent = Model0
WedgePart305.Material = Enum.Material.Metal
WedgePart305.BrickColor = BrickColor.new("Grime")
WedgePart305.Rotation = Vector3.new(90, 0, -180)
WedgePart305.FormFactor = Enum.FormFactor.Custom
WedgePart305.Size = Vector3.new(22, 0.600000143, 1.20000017)
WedgePart305.CFrame = CFrame.new(-5.71064138, 9.599576, 41.1605301, -1, 1.17034815e-05, -5.56241639e-06, 5.84649752e-06, -1.99384122e-05, -1, -5.97530743e-06, -1, 1.59061947e-05)
WedgePart305.BackSurface = Enum.SurfaceType.Weld
WedgePart305.BottomSurface = Enum.SurfaceType.Weld
WedgePart305.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart305.Position = Vector3.new(-5.71064138, 9.599576, 41.1605301)
WedgePart305.Orientation = Vector3.new(90, 180, 0)
WedgePart305.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh306.Parent = WedgePart305
SpecialMesh306.MeshType = Enum.MeshType.Wedge
WedgePart307.Parent = Model0
WedgePart307.Material = Enum.Material.Metal
WedgePart307.BrickColor = BrickColor.new("Grime")
WedgePart307.Rotation = Vector3.new(90, 0, 0)
WedgePart307.FormFactor = Enum.FormFactor.Custom
WedgePart307.Size = Vector3.new(22, 0.600000143, 1.20000017)
WedgePart307.CFrame = CFrame.new(-5.70935583, 9.60018349, 36.559742, 1, 5.02686817e-06, -6.43432486e-06, -6.48410469e-06, 8.01372698e-06, -1, -6.03618901e-06, 1, 7.30400461e-06)
WedgePart307.BackSurface = Enum.SurfaceType.Weld
WedgePart307.BottomSurface = Enum.SurfaceType.Weld
WedgePart307.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart307.Position = Vector3.new(-5.70935583, 9.60018349, 36.559742)
WedgePart307.Orientation = Vector3.new(90, 0, 0)
WedgePart307.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh308.Parent = WedgePart307
SpecialMesh308.MeshType = Enum.MeshType.Wedge
WedgePart309.Parent = Model0
WedgePart309.Material = Enum.Material.Metal
WedgePart309.BrickColor = BrickColor.new("Grime")
WedgePart309.Rotation = Vector3.new(90, 0, 0)
WedgePart309.FormFactor = Enum.FormFactor.Custom
WedgePart309.Size = Vector3.new(10.1999998, 0.800000131, 1.00000012)
WedgePart309.CFrame = CFrame.new(0.190338731, 10.7001028, 35.8596039, 1, 1.73247045e-05, -6.91621926e-06, -7.28482382e-06, -3.32206264e-06, -0.99999088, -2.47628068e-05, 1.00000012, -8.54242353e-06)
WedgePart309.BackSurface = Enum.SurfaceType.Weld
WedgePart309.BottomSurface = Enum.SurfaceType.Weld
WedgePart309.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart309.Position = Vector3.new(0.190338731, 10.7001028, 35.8596039)
WedgePart309.Orientation = Vector3.new(89.7599945, -141.009995, -114.509995)
WedgePart309.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh310.Parent = WedgePart309
SpecialMesh310.MeshType = Enum.MeshType.Wedge
WedgePart311.Parent = Model0
WedgePart311.Material = Enum.Material.Metal
WedgePart311.BrickColor = BrickColor.new("Grime")
WedgePart311.Rotation = Vector3.new(-90, 0, 90)
WedgePart311.FormFactor = Enum.FormFactor.Custom
WedgePart311.Size = Vector3.new(5.19999981, 1.39999998, 1.19999993)
WedgePart311.CFrame = CFrame.new(-26.2100182, 3.40037513, 33.6596451, -3.40397423e-06, -1, 6.33939817e-06, -9.03184537e-06, 6.52432982e-06, 1, -1, 7.16618433e-06, -6.38741267e-06)
WedgePart311.BackSurface = Enum.SurfaceType.Weld
WedgePart311.BottomSurface = Enum.SurfaceType.Weld
WedgePart311.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart311.Position = Vector3.new(-26.2100182, 3.40037513, 33.6596451)
WedgePart311.Orientation = Vector3.new(-90, 90, 0)
WedgePart311.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh312.Parent = WedgePart311
SpecialMesh312.MeshType = Enum.MeshType.Wedge
WedgePart313.Parent = Model0
WedgePart313.Material = Enum.Material.Metal
WedgePart313.BrickColor = BrickColor.new("Grime")
WedgePart313.Rotation = Vector3.new(90, 0, 0)
WedgePart313.FormFactor = Enum.FormFactor.Custom
WedgePart313.Size = Vector3.new(10.1999998, 1.60000014, 1.00000012)
WedgePart313.CFrame = CFrame.new(0.190321803, 10.6997337, 45.8596458, 1, 1.71271968e-05, -7.04050763e-06, -7.41398344e-06, -3.73043003e-05, -0.99999088, -2.46765048e-05, 1.00000012, -4.26029837e-05)
WedgePart313.BackSurface = Enum.SurfaceType.Weld
WedgePart313.BottomSurface = Enum.SurfaceType.Weld
WedgePart313.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart313.Position = Vector3.new(0.190321803, 10.6997337, 45.8596458)
WedgePart313.Orientation = Vector3.new(89.7599945, -170.619995, -168.759995)
WedgePart313.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh314.Parent = WedgePart313
SpecialMesh314.MeshType = Enum.MeshType.Wedge
WedgePart315.Parent = Model0
WedgePart315.Material = Enum.Material.Metal
WedgePart315.BrickColor = BrickColor.new("Grime")
WedgePart315.Rotation = Vector3.new(-90, 0, 90)
WedgePart315.FormFactor = Enum.FormFactor.Custom
WedgePart315.Size = Vector3.new(5.19999981, 1.39999998, 1.19999993)
WedgePart315.CFrame = CFrame.new(-26.2097702, 3.40055323, 44.0597954, 3.44685832e-05, -1, 5.8018918e-06, -6.04491834e-06, 5.80168262e-06, 1, -1, -3.44686086e-05, -6.04471643e-06)
WedgePart315.BackSurface = Enum.SurfaceType.Weld
WedgePart315.BottomSurface = Enum.SurfaceType.Weld
WedgePart315.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart315.Position = Vector3.new(-26.2097702, 3.40055323, 44.0597954)
WedgePart315.Orientation = Vector3.new(-90, 90, 0)
WedgePart315.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh316.Parent = WedgePart315
SpecialMesh316.MeshType = Enum.MeshType.Wedge
WedgePart317.Parent = Model0
WedgePart317.Material = Enum.Material.Metal
WedgePart317.BrickColor = BrickColor.new("Grime")
WedgePart317.Rotation = Vector3.new(180, 90, 0)
WedgePart317.FormFactor = Enum.FormFactor.Custom
WedgePart317.Size = Vector3.new(5.19999933, 1.20000005, 1)
WedgePart317.CFrame = CFrame.new(-26.0099239, 4.60073233, 33.6602364, -1.36232084e-05, -5.66421386e-06, 1, 2.05360793e-05, -1, -5.96129712e-06, 1, 1.63166333e-05, 7.62868513e-06)
WedgePart317.BottomSurface = Enum.SurfaceType.Weld
WedgePart317.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart317.Position = Vector3.new(-26.0099239, 4.60073233, 33.6602364)
WedgePart317.Orientation = Vector3.new(0, 90, 180)
WedgePart317.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh318.Parent = WedgePart317
SpecialMesh318.MeshType = Enum.MeshType.Wedge
WedgePart319.Parent = Model0
WedgePart319.Material = Enum.Material.Metal
WedgePart319.BrickColor = BrickColor.new("Grime")
WedgePart319.Rotation = Vector3.new(90, 0, -0.00999999978)
WedgePart319.CanCollide = false
WedgePart319.FormFactor = Enum.FormFactor.Custom
WedgePart319.Size = Vector3.new(0.400000006, 0.400000006, 3)
WedgePart319.CFrame = CFrame.new(-22.7094574, 8.90267277, 46.4604378, 1, 0.000103821971, -1.11975369e-05, -1.19384558e-05, -2.19714639e-06, -1, -0.000118742879, 1, -1.27009662e-05)
WedgePart319.BackSurface = Enum.SurfaceType.Weld
WedgePart319.BottomSurface = Enum.SurfaceType.Weld
WedgePart319.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart319.Position = Vector3.new(-22.7094574, 8.90267277, 46.4604378)
WedgePart319.Orientation = Vector3.new(90, 0.00999999978, 0)
WedgePart319.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh320.Parent = WedgePart319
SpecialMesh320.MeshType = Enum.MeshType.Wedge
WedgePart321.Parent = Model0
WedgePart321.Material = Enum.Material.Metal
WedgePart321.BrickColor = BrickColor.new("Grime")
WedgePart321.Rotation = Vector3.new(90, 0, 0)
WedgePart321.CanCollide = false
WedgePart321.FormFactor = Enum.FormFactor.Custom
WedgePart321.Size = Vector3.new(0.400000006, 1.20000005, 0.999999821)
WedgePart321.CFrame = CFrame.new(-25.7095184, 7.90136623, 42.4608383, 1, 7.70654951e-05, -9.90780518e-06, -1.02004242e-05, -6.15640529e-05, -1, -8.3060746e-05, 1, -6.57826022e-05)
WedgePart321.BackSurface = Enum.SurfaceType.Weld
WedgePart321.BottomSurface = Enum.SurfaceType.Weld
WedgePart321.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart321.Position = Vector3.new(-25.7095184, 7.90136623, 42.4608383)
WedgePart321.Orientation = Vector3.new(90, 0, 0)
WedgePart321.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh322.Parent = WedgePart321
SpecialMesh322.MeshType = Enum.MeshType.Wedge
WedgePart323.Parent = Model0
WedgePart323.Material = Enum.Material.Metal
WedgePart323.BrickColor = BrickColor.new("Grime")
WedgePart323.Rotation = Vector3.new(90, 0, -90)
WedgePart323.FormFactor = Enum.FormFactor.Custom
WedgePart323.Size = Vector3.new(5.19999933, 1, 1.20000005)
WedgePart323.CFrame = CFrame.new(-26.0092163, 4.60065508, 44.0591469, 1.43750112e-05, 1, -7.43051987e-06, -2.22713134e-05, -7.72756266e-06, -1, -1, 8.38053529e-06, 1.80518491e-05)
WedgePart323.BackSurface = Enum.SurfaceType.Weld
WedgePart323.BottomSurface = Enum.SurfaceType.Weld
WedgePart323.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart323.Position = Vector3.new(-26.0092163, 4.60065508, 44.0591469)
WedgePart323.Orientation = Vector3.new(90, 90, 0)
WedgePart323.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh324.Parent = WedgePart323
SpecialMesh324.MeshType = Enum.MeshType.Wedge
WedgePart325.Parent = Model0
WedgePart325.Material = Enum.Material.Metal
WedgePart325.BrickColor = BrickColor.new("Grime")
WedgePart325.Rotation = Vector3.new(-90, 0, 0)
WedgePart325.CanCollide = false
WedgePart325.FormFactor = Enum.FormFactor.Custom
WedgePart325.Size = Vector3.new(0.200000003, 0.200000003, 2.60000014)
WedgePart325.CFrame = CFrame.new(-16.8097363, 8.70052814, 46.1599655, 1, -2.12305386e-05, 7.18997535e-06, -8.38811684e-06, -4.9342907e-06, 1, -4.53438988e-05, -1, 1.20436125e-05)
WedgePart325.BackSurface = Enum.SurfaceType.Weld
WedgePart325.BottomSurface = Enum.SurfaceType.Weld
WedgePart325.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart325.Position = Vector3.new(-16.8097363, 8.70052814, 46.1599655)
WedgePart325.Orientation = Vector3.new(-90, 0, 0)
WedgePart325.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh326.Parent = WedgePart325
SpecialMesh326.MeshType = Enum.MeshType.Wedge
WedgePart327.Parent = Model0
WedgePart327.Material = Enum.Material.Metal
WedgePart327.BrickColor = BrickColor.new("Grime")
WedgePart327.Rotation = Vector3.new(-90, 0, 0)
WedgePart327.CanCollide = false
WedgePart327.FormFactor = Enum.FormFactor.Custom
WedgePart327.Size = Vector3.new(0.200000003, 0.200000003, 2.60000014)
WedgePart327.CFrame = CFrame.new(-19.6100292, 8.70045471, 46.1600151, 1, -2.11709685e-05, 7.23711082e-06, -8.43528869e-06, -6.71051566e-06, 1, -4.52843196e-05, -1, 1.02673966e-05)
WedgePart327.BackSurface = Enum.SurfaceType.Weld
WedgePart327.BottomSurface = Enum.SurfaceType.Weld
WedgePart327.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart327.Position = Vector3.new(-19.6100292, 8.70045471, 46.1600151)
WedgePart327.Orientation = Vector3.new(-90, 0, 0)
WedgePart327.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh328.Parent = WedgePart327
SpecialMesh328.MeshType = Enum.MeshType.Wedge
WedgePart329.Parent = Model0
WedgePart329.Material = Enum.Material.Metal
WedgePart329.BrickColor = BrickColor.new("Grime")
WedgePart329.Rotation = Vector3.new(90, 0, -0.00999999978)
WedgePart329.CanCollide = false
WedgePart329.FormFactor = Enum.FormFactor.Custom
WedgePart329.Size = Vector3.new(0.200000003, 0.400000006, 3)
WedgePart329.CFrame = CFrame.new(-16.8093224, 8.90175629, 46.4594421, 1, 9.91064226e-05, -1.10202109e-05, -1.22203146e-05, 2.08557285e-05, -1, -0.000123219652, 1, 3.87895125e-06)
WedgePart329.BackSurface = Enum.SurfaceType.Weld
WedgePart329.BottomSurface = Enum.SurfaceType.Weld
WedgePart329.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart329.Position = Vector3.new(-16.8093224, 8.90175629, 46.4594421)
WedgePart329.Orientation = Vector3.new(90, 0.00999999978, 0)
WedgePart329.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh330.Parent = WedgePart329
SpecialMesh330.MeshType = Enum.MeshType.Wedge
WedgePart331.Parent = Model0
WedgePart331.Material = Enum.Material.Metal
WedgePart331.BrickColor = BrickColor.new("Grime")
WedgePart331.Rotation = Vector3.new(180, -90, 0)
WedgePart331.FormFactor = Enum.FormFactor.Custom
WedgePart331.Size = Vector3.new(5.19999886, 2, 1.79999995)
WedgePart331.CFrame = CFrame.new(-16.609787, 5.0004549, 33.6600304, -4.89594822e-06, -6.62594812e-06, -1, -8.07483866e-06, -0.999996543, 6.68015446e-06, -1, 7.30284228e-06, 5.9940694e-06)
WedgePart331.BottomSurface = Enum.SurfaceType.Smooth
WedgePart331.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart331.Position = Vector3.new(-16.609787, 5.0004549, 33.6600304)
WedgePart331.Orientation = Vector3.new(0, -90, -180)
WedgePart331.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh332.Parent = WedgePart331
SpecialMesh332.MeshType = Enum.MeshType.Wedge
WedgePart333.Parent = Model0
WedgePart333.Material = Enum.Material.Metal
WedgePart333.BrickColor = BrickColor.new("Grime")
WedgePart333.Rotation = Vector3.new(180, 90, 0)
WedgePart333.FormFactor = Enum.FormFactor.Custom
WedgePart333.Size = Vector3.new(5.19999933, 1.20000005, 1)
WedgePart333.CFrame = CFrame.new(-26.00951, 4.60169315, 44.0594978, -7.2284929e-06, -6.09822428e-06, 1, 1.73822391e-05, -1, -6.69012343e-06, 1, 8.98247345e-06, -4.70518717e-06)
WedgePart333.BottomSurface = Enum.SurfaceType.Weld
WedgePart333.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart333.Position = Vector3.new(-26.00951, 4.60169315, 44.0594978)
WedgePart333.Orientation = Vector3.new(0, 90, 180)
WedgePart333.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh334.Parent = WedgePart333
SpecialMesh334.MeshType = Enum.MeshType.Wedge
WedgePart335.Parent = Model0
WedgePart335.Material = Enum.Material.Metal
WedgePart335.BrickColor = BrickColor.new("Grime")
WedgePart335.Rotation = Vector3.new(-90, 0, 0)
WedgePart335.CanCollide = false
WedgePart335.FormFactor = Enum.FormFactor.Custom
WedgePart335.Size = Vector3.new(0.400000006, 0.200000003, 2.60000014)
WedgePart335.CFrame = CFrame.new(-22.7096386, 8.70049095, 46.1598549, 1, 1.37711768e-05, 5.43959368e-06, -6.180333e-06, -2.95906248e-05, 1, -1.14948455e-06, -1, -1.90853934e-05)
WedgePart335.BackSurface = Enum.SurfaceType.Weld
WedgePart335.BottomSurface = Enum.SurfaceType.Weld
WedgePart335.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart335.Position = Vector3.new(-22.7096386, 8.70049095, 46.1598549)
WedgePart335.Orientation = Vector3.new(-90, 0, 0)
WedgePart335.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh336.Parent = WedgePart335
SpecialMesh336.MeshType = Enum.MeshType.Wedge
WedgePart337.Parent = Model0
WedgePart337.Material = Enum.Material.Metal
WedgePart337.BrickColor = BrickColor.new("Grime")
WedgePart337.Rotation = Vector3.new(90, 0, -0.00999999978)
WedgePart337.CanCollide = false
WedgePart337.FormFactor = Enum.FormFactor.Custom
WedgePart337.Size = Vector3.new(0.200000003, 0.400000006, 3)
WedgePart337.CFrame = CFrame.new(-19.6093693, 8.90126038, 46.4600639, 1, 9.91061097e-05, -1.10227156e-05, -1.22186893e-05, -2.08033562e-05, -1, -0.000123219797, 1, -3.77801443e-05)
WedgePart337.BackSurface = Enum.SurfaceType.Weld
WedgePart337.BottomSurface = Enum.SurfaceType.Weld
WedgePart337.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart337.Position = Vector3.new(-19.6093693, 8.90126038, 46.4600639)
WedgePart337.Orientation = Vector3.new(90, 0.00999999978, 0)
WedgePart337.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh338.Parent = WedgePart337
SpecialMesh338.MeshType = Enum.MeshType.Wedge
Part339.Parent = Model0
Part339.Material = Enum.Material.Metal
Part339.BrickColor = BrickColor.new("Grime")
Part339.Rotation = Vector3.new(-180, 0, -180)
Part339.FormFactor = Enum.FormFactor.Custom
Part339.Size = Vector3.new(5.59999943, 0.799999952, 1.80000031)
Part339.CFrame = CFrame.new(14.889924, 8.40013981, 32.9597015, -1, 8.84130441e-06, -5.35144209e-05, 8.93794913e-06, 1, 8.40500434e-06, 5.54899634e-05, 9.79304605e-06, -1)
Part339.BackSurface = Enum.SurfaceType.Weld
Part339.BottomSurface = Enum.SurfaceType.Weld
Part339.FrontSurface = Enum.SurfaceType.Weld
Part339.LeftSurface = Enum.SurfaceType.Weld
Part339.RightSurface = Enum.SurfaceType.Weld
Part339.TopSurface = Enum.SurfaceType.Weld
Part339.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part339.Position = Vector3.new(14.889924, 8.40013981, 32.9597015)
Part339.Orientation = Vector3.new(0, -180, 0)
Part339.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh340.Parent = Part339
Part341.Parent = Model0
Part341.Material = Enum.Material.Metal
Part341.BrickColor = BrickColor.new("Grime")
Part341.Rotation = Vector3.new(-180, 0, -180)
Part341.CanCollide = false
Part341.FormFactor = Enum.FormFactor.Custom
Part341.Size = Vector3.new(0.399999231, 0.799999893, 5.19999981)
Part341.CFrame = CFrame.new(-4.109828, 4.80027628, 44.0599098, -1, 6.43371504e-06, -5.15642932e-06, 6.81323763e-06, 0.99999088, 1.01975102e-05, 1.28165175e-05, 1.5574049e-05, -1.00000012)
Part341.BackSurface = Enum.SurfaceType.Weld
Part341.BottomSurface = Enum.SurfaceType.Weld
Part341.FrontSurface = Enum.SurfaceType.Weld
Part341.LeftSurface = Enum.SurfaceType.Weld
Part341.RightSurface = Enum.SurfaceType.Weld
Part341.TopSurface = Enum.SurfaceType.Weld
Part341.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part341.Position = Vector3.new(-4.109828, 4.80027628, 44.0599098)
Part341.Orientation = Vector3.new(0, -180, 0)
Part341.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh342.Parent = Part341
Part343.Parent = Model0
Part343.Material = Enum.Material.Metal
Part343.BrickColor = BrickColor.new("Grime")
Part343.Rotation = Vector3.new(180, 0, -180)
Part343.CanCollide = false
Part343.FormFactor = Enum.FormFactor.Custom
Part343.Size = Vector3.new(11.8000002, 0.799999952, 5.20000029)
Part343.CFrame = CFrame.new(11.190012, 7.60010147, 33.6598129, -1, 6.97483983e-06, -1.60322234e-05, 7.09157848e-06, 1, -2.91726792e-07, 1.8407216e-05, 1.37750521e-06, -1)
Part343.BackSurface = Enum.SurfaceType.Weld
Part343.BottomSurface = Enum.SurfaceType.Weld
Part343.FrontSurface = Enum.SurfaceType.Weld
Part343.LeftSurface = Enum.SurfaceType.Weld
Part343.RightSurface = Enum.SurfaceType.Weld
Part343.TopSurface = Enum.SurfaceType.Weld
Part343.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part343.Position = Vector3.new(11.190012, 7.60010147, 33.6598129)
Part343.Orientation = Vector3.new(0, -180, 0)
Part343.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh344.Parent = Part343
Part345.Parent = Model0
Part345.Material = Enum.Material.Metal
Part345.BrickColor = BrickColor.new("Grime")
Part345.Rotation = Vector3.new(180, 0, -180)
Part345.CanCollide = false
Part345.FormFactor = Enum.FormFactor.Custom
Part345.Size = Vector3.new(1.79999959, 0.799999952, 5.20000029)
Part345.CFrame = CFrame.new(16.189827, 7.60006905, 38.8596954, -1, 6.02205955e-06, 3.12409975e-06, 6.11911082e-06, 1, -1.37809102e-05, -1.14872091e-06, -1.23923655e-05, -1)
Part345.BackSurface = Enum.SurfaceType.Weld
Part345.BottomSurface = Enum.SurfaceType.Weld
Part345.FrontSurface = Enum.SurfaceType.Weld
Part345.LeftSurface = Enum.SurfaceType.Weld
Part345.RightSurface = Enum.SurfaceType.Weld
Part345.TopSurface = Enum.SurfaceType.Weld
Part345.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part345.Position = Vector3.new(16.189827, 7.60006905, 38.8596954)
Part345.Orientation = Vector3.new(0, 180, 0)
Part345.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh346.Parent = Part345
Part347.Parent = Model0
Part347.Material = Enum.Material.Metal
Part347.BrickColor = BrickColor.new("Grime")
Part347.Rotation = Vector3.new(180, 0, -180)
Part347.FormFactor = Enum.FormFactor.Custom
Part347.Size = Vector3.new(13.1999998, 1.59999967, 3.60000038)
Part347.CFrame = CFrame.new(-10.9098253, 3.60021257, 34.460022, -1, 6.43994736e-06, -5.3034978e-06, 6.4623523e-06, 1, -7.84834992e-06, 5.75847071e-06, -7.52855431e-06, -1)
Part347.BackSurface = Enum.SurfaceType.Weld
Part347.BottomSurface = Enum.SurfaceType.Weld
Part347.FrontSurface = Enum.SurfaceType.Weld
Part347.LeftSurface = Enum.SurfaceType.Weld
Part347.RightSurface = Enum.SurfaceType.Weld
Part347.TopSurface = Enum.SurfaceType.Weld
Part347.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part347.Position = Vector3.new(-10.9098253, 3.60021257, 34.460022)
Part347.Orientation = Vector3.new(0, -180, 0)
Part347.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh348.Parent = Part347
BlockMesh348.Offset = Vector3.new(0, 0.800000012, 0)
BlockMesh348.Scale = Vector3.new(1.10000002, 2, 1)
BlockMesh348.Scale = Vector3.new(1.10000002, 2, 1)
Part349.Parent = Model0
Part349.Material = Enum.Material.Metal
Part349.BrickColor = BrickColor.new("Grime")
Part349.Rotation = Vector3.new(-180, 0, -180)
Part349.CanCollide = false
Part349.FormFactor = Enum.FormFactor.Custom
Part349.Size = Vector3.new(0.800000191, 1.40000021, 5.19999981)
Part349.CFrame = CFrame.new(16.6903687, 6.50005674, 33.6597786, -1, 7.3178353e-06, -2.29274719e-05, 7.57607449e-06, 1, 1.38828382e-05, 2.81880748e-05, 1.75801961e-05, -1)
Part349.BackSurface = Enum.SurfaceType.Weld
Part349.BottomSurface = Enum.SurfaceType.Weld
Part349.FrontSurface = Enum.SurfaceType.Weld
Part349.LeftSurface = Enum.SurfaceType.Weld
Part349.RightSurface = Enum.SurfaceType.Weld
Part349.TopSurface = Enum.SurfaceType.Weld
Part349.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part349.Position = Vector3.new(16.6903687, 6.50005674, 33.6597786)
Part349.Orientation = Vector3.new(0, -180, 0)
Part349.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh350.Parent = Part349
Part351.Parent = Model0
Part351.Material = Enum.Material.Metal
Part351.BrickColor = BrickColor.new("Grime")
Part351.Rotation = Vector3.new(180, 0, -180)
Part351.FormFactor = Enum.FormFactor.Custom
Part351.Size = Vector3.new(11.8000002, 3.20000005, 5.20000029)
Part351.CFrame = CFrame.new(11.1901808, 5.60010195, 38.8599014, -1, 6.43885596e-06, -5.28130158e-06, 6.4634437e-06, 1, -7.86395231e-06, 5.78066692e-06, -7.51295283e-06, -1)
Part351.BottomSurface = Enum.SurfaceType.Weld
Part351.LeftSurface = Enum.SurfaceType.Weld
Part351.RightSurface = Enum.SurfaceType.Weld
Part351.TopSurface = Enum.SurfaceType.Weld
Part351.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part351.Position = Vector3.new(11.1901808, 5.60010195, 38.8599014)
Part351.Orientation = Vector3.new(0, -180, 0)
Part351.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh352.Parent = Part351
Part353.Parent = Model0
Part353.Material = Enum.Material.Metal
Part353.BrickColor = BrickColor.new("Grime")
Part353.Rotation = Vector3.new(-180, 0, -180)
Part353.FormFactor = Enum.FormFactor.Custom
Part353.Size = Vector3.new(13.1999998, 1.59999967, 3.60000038)
Part353.CFrame = CFrame.new(-10.909873, 3.60028696, 43.2598724, -1, 6.40441704e-06, -4.601201e-06, 6.40441613e-06, 1, 1.49602386e-07, 4.60120282e-06, 1.49572926e-07, -1)
Part353.BottomSurface = Enum.SurfaceType.Weld
Part353.LeftSurface = Enum.SurfaceType.Weld
Part353.RightSurface = Enum.SurfaceType.Weld
Part353.TopSurface = Enum.SurfaceType.Weld
Part353.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part353.Position = Vector3.new(-10.909873, 3.60028696, 43.2598724)
Part353.Orientation = Vector3.new(0, -180, 0)
Part353.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh354.Parent = Part353
BlockMesh354.Offset = Vector3.new(0, 0.800000012, 0)
BlockMesh354.Scale = Vector3.new(1.10000002, 2, 1)
BlockMesh354.Scale = Vector3.new(1.10000002, 2, 1)
Part355.Parent = Model0
Part355.Material = Enum.Material.Metal
Part355.BrickColor = BrickColor.new("Grime")
Part355.Rotation = Vector3.new(-180, 0, -180)
Part355.CanCollide = false
Part355.FormFactor = Enum.FormFactor.Custom
Part355.Size = Vector3.new(11.8000002, 0.399999976, 0.200000003)
Part355.CFrame = CFrame.new(-10.8097591, 6.2003026, 46.5602341, -1, 7.40343285e-06, -2.46297823e-05, 7.77740297e-06, 0.99999088, 5.76178718e-06, 3.21788757e-05, 1.10601068e-05, -1.00000012)
Part355.BackSurface = Enum.SurfaceType.Weld
Part355.BottomSurface = Enum.SurfaceType.Weld
Part355.FrontSurface = Enum.SurfaceType.Weld
Part355.LeftSurface = Enum.SurfaceType.Weld
Part355.RightSurface = Enum.SurfaceType.Weld
Part355.TopSurface = Enum.SurfaceType.Weld
Part355.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part355.Position = Vector3.new(-10.8097591, 6.2003026, 46.5602341)
Part355.Orientation = Vector3.new(0, -180, 0)
Part355.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh356.Parent = Part355
Part357.Parent = Model0
Part357.Material = Enum.Material.Metal
Part357.BrickColor = BrickColor.new("Grime")
Part357.Rotation = Vector3.new(180, 0, -180)
Part357.FormFactor = Enum.FormFactor.Custom
Part357.Size = Vector3.new(5.59999943, 0.799999952, 1.80000031)
Part357.CFrame = CFrame.new(14.8900795, 8.40018654, 44.7598724, -1, 6.8830459e-06, -1.4202913e-05, 7.07082381e-06, 1, -9.31228442e-06, 1.80205971e-05, -6.62894672e-06, -1)
Part357.BackSurface = Enum.SurfaceType.Weld
Part357.BottomSurface = Enum.SurfaceType.Weld
Part357.FrontSurface = Enum.SurfaceType.Weld
Part357.LeftSurface = Enum.SurfaceType.Weld
Part357.RightSurface = Enum.SurfaceType.Weld
Part357.TopSurface = Enum.SurfaceType.Weld
Part357.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part357.Position = Vector3.new(14.8900795, 8.40018654, 44.7598724)
Part357.Orientation = Vector3.new(0, -180, 0)
Part357.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh358.Parent = Part357
Part359.Parent = Model0
Part359.Material = Enum.Material.Metal
Part359.BrickColor = BrickColor.new("Grime")
Part359.Rotation = Vector3.new(-180, 0, -180)
Part359.CanCollide = false
Part359.FormFactor = Enum.FormFactor.Custom
Part359.Size = Vector3.new(0.799999356, 1.19999981, 5.19999981)
Part359.CFrame = CFrame.new(2.69019699, 5.80022383, 44.0595703, -1, 7.91060938e-06, -3.4820343e-05, 8.28971952e-06, 0.99999088, 1.29368718e-05, 4.24804894e-05, 1.83131688e-05, -1.00000012)
Part359.BackSurface = Enum.SurfaceType.Weld
Part359.BottomSurface = Enum.SurfaceType.Weld
Part359.FrontSurface = Enum.SurfaceType.Weld
Part359.LeftSurface = Enum.SurfaceType.Weld
Part359.RightSurface = Enum.SurfaceType.Weld
Part359.TopSurface = Enum.SurfaceType.Weld
Part359.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part359.Position = Vector3.new(2.69019699, 5.80022383, 44.0595703)
Part359.Orientation = Vector3.new(0, -180, 0)
Part359.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh360.Parent = Part359
Part361.Parent = Model0
Part361.Material = Enum.Material.Metal
Part361.BrickColor = BrickColor.new("Grime")
Part361.Rotation = Vector3.new(180, 0, -180)
Part361.CanCollide = false
Part361.FormFactor = Enum.FormFactor.Custom
Part361.Size = Vector3.new(0.799999356, 1.19999981, 5.19999981)
Part361.CFrame = CFrame.new(2.69034576, 5.80008698, 33.6597061, -1, 6.692429e-06, -1.03765615e-05, 7.06659148e-06, 0.99999088, -4.27647774e-06, 1.79255858e-05, 1.02187551e-06, -1.00000012)
Part361.BackSurface = Enum.SurfaceType.Weld
Part361.BottomSurface = Enum.SurfaceType.Weld
Part361.FrontSurface = Enum.SurfaceType.Weld
Part361.LeftSurface = Enum.SurfaceType.Weld
Part361.RightSurface = Enum.SurfaceType.Weld
Part361.TopSurface = Enum.SurfaceType.Weld
Part361.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part361.Position = Vector3.new(2.69034576, 5.80008698, 33.6597061)
Part361.Orientation = Vector3.new(0, -180, 0)
Part361.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh362.Parent = Part361
Part363.Parent = Model0
Part363.Material = Enum.Material.Metal
Part363.BrickColor = BrickColor.new("Grime")
Part363.Rotation = Vector3.new(180, 0, -180)
Part363.FormFactor = Enum.FormFactor.Custom
Part363.Size = Vector3.new(5.19999933, 1.19999993, 4.00000048)
Part363.CFrame = CFrame.new(8.89022923, 8.60020256, 44.0598717, -1, 6.46254784e-06, -5.67977986e-06, 7.01250519e-06, 1, -1.47377223e-05, 1.68665701e-05, -6.87466036e-06, -1)
Part363.BackSurface = Enum.SurfaceType.Weld
Part363.BottomSurface = Enum.SurfaceType.Weld
Part363.FrontSurface = Enum.SurfaceType.Weld
Part363.LeftSurface = Enum.SurfaceType.Weld
Part363.RightSurface = Enum.SurfaceType.Weld
Part363.TopSurface = Enum.SurfaceType.Weld
Part363.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part363.Position = Vector3.new(8.89022923, 8.60020256, 44.0598717)
Part363.Orientation = Vector3.new(0, -180, 0)
Part363.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh364.Parent = Part363
Part365.Parent = Model0
Part365.Material = Enum.Material.Metal
Part365.BrickColor = BrickColor.new("Grime")
Part365.Rotation = Vector3.new(180, 0, -180)
Part365.FormFactor = Enum.FormFactor.Custom
Part365.Size = Vector3.new(6.19999933, 2.20000005, 2.60000038)
Part365.CFrame = CFrame.new(14.9901371, 9.90013123, 44.7598419, -1, 6.21868867e-06, -8.11329301e-07, 6.58744511e-06, 1, -2.47506978e-06, 8.31362831e-06, 2.79819596e-06, -1)
Part365.BackSurface = Enum.SurfaceType.Weld
Part365.BottomSurface = Enum.SurfaceType.Weld
Part365.FrontSurface = Enum.SurfaceType.Weld
Part365.LeftSurface = Enum.SurfaceType.Weld
Part365.RightSurface = Enum.SurfaceType.Weld
Part365.TopSurface = Enum.SurfaceType.Weld
Part365.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part365.Position = Vector3.new(14.9901371, 9.90013123, 44.7598419)
Part365.Orientation = Vector3.new(0, -180, 0)
Part365.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh366.Parent = Part365
Part367.Parent = Model0
Part367.Material = Enum.Material.Metal
Part367.BrickColor = BrickColor.new("Grime")
Part367.Rotation = Vector3.new(180, 0, -180)
Part367.FormFactor = Enum.FormFactor.Custom
Part367.Size = Vector3.new(11.8000002, 0.799999952, 5.20000029)
Part367.CFrame = CFrame.new(11.190093, 7.60022306, 44.059761, -1, 4.3787395e-06, 3.62749852e-05, 4.74697981e-06, 1, -1.41841037e-05, -2.87727416e-05, -8.91064337e-06, -1)
Part367.BackSurface = Enum.SurfaceType.Weld
Part367.BottomSurface = Enum.SurfaceType.Weld
Part367.FrontSurface = Enum.SurfaceType.Weld
Part367.LeftSurface = Enum.SurfaceType.Weld
Part367.RightSurface = Enum.SurfaceType.Weld
Part367.TopSurface = Enum.SurfaceType.Weld
Part367.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part367.Position = Vector3.new(11.190093, 7.60022306, 44.059761)
Part367.Orientation = Vector3.new(0, 180, 0)
Part367.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh368.Parent = Part367
Part369.Parent = Model0
Part369.Material = Enum.Material.Metal
Part369.BrickColor = BrickColor.new("Grime")
Part369.Rotation = Vector3.new(180, 0, -180)
Part369.CanCollide = false
Part369.FormFactor = Enum.FormFactor.Custom
Part369.Size = Vector3.new(3.39999962, 0.799999893, 5.20000029)
Part369.CFrame = CFrame.new(6.99010181, 7.6001296, 38.8598747, -1, 6.44049305e-06, -5.31459591e-06, 6.46180661e-06, 1, -7.84054919e-06, 5.74737214e-06, -7.53635504e-06, -1)
Part369.BackSurface = Enum.SurfaceType.Weld
Part369.BottomSurface = Enum.SurfaceType.Weld
Part369.FrontSurface = Enum.SurfaceType.Weld
Part369.LeftSurface = Enum.SurfaceType.Weld
Part369.RightSurface = Enum.SurfaceType.Weld
Part369.TopSurface = Enum.SurfaceType.Weld
Part369.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part369.Position = Vector3.new(6.99010181, 7.6001296, 38.8598747)
Part369.Orientation = Vector3.new(0, -180, 0)
Part369.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh370.Parent = Part369
Part371.Parent = Model0
Part371.Material = Enum.Material.Metal
Part371.BrickColor = BrickColor.new("Really black")
Part371.Rotation = Vector3.new(-90, 90, 0)
Part371.CanCollide = false
Part371.FormFactor = Enum.FormFactor.Custom
Part371.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part371.CFrame = CFrame.new(-7.3100009, 2.80016303, 31.7599716, -6.42304258e-06, -4.95945733e-06, 1, -1, -8.09017456e-06, -6.47926254e-06, 7.28673149e-06, -1, -6.10251254e-06)
Part371.BottomSurface = Enum.SurfaceType.Weld
Part371.FrontSurface = Enum.SurfaceType.Weld
Part371.LeftSurface = Enum.SurfaceType.Weld
Part371.RightSurface = Enum.SurfaceType.Weld
Part371.TopSurface = Enum.SurfaceType.Weld
Part371.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part371.Position = Vector3.new(-7.3100009, 2.80016303, 31.7599716)
Part371.Orientation = Vector3.new(0, 90, -90)
Part371.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh372.Parent = Part371
Part373.Parent = Model0
Part373.Material = Enum.Material.Metal
Part373.BrickColor = BrickColor.new("Grime")
Part373.Rotation = Vector3.new(-180, 0, -180)
Part373.CanCollide = false
Part373.FormFactor = Enum.FormFactor.Custom
Part373.Size = Vector3.new(1.59999919, 0.799999952, 5.19999981)
Part373.CFrame = CFrame.new(3.09007359, 6.80019569, 44.0596123, -1, 6.8204281e-06, -1.29195741e-05, 7.19992431e-06, 0.99999088, 5.89834963e-06, 2.05796405e-05, 1.12747821e-05, -1.00000012)
Part373.BackSurface = Enum.SurfaceType.Weld
Part373.BottomSurface = Enum.SurfaceType.Weld
Part373.FrontSurface = Enum.SurfaceType.Weld
Part373.LeftSurface = Enum.SurfaceType.Weld
Part373.RightSurface = Enum.SurfaceType.Weld
Part373.TopSurface = Enum.SurfaceType.Weld
Part373.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part373.Position = Vector3.new(3.09007359, 6.80019569, 44.0596123)
Part373.Orientation = Vector3.new(0, -180, 0)
Part373.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh374.Parent = Part373
Part375.Parent = Model0
Part375.Material = Enum.Material.Metal
Part375.BrickColor = BrickColor.new("Grime")
Part375.Rotation = Vector3.new(-180, 0, -180)
Part375.FormFactor = Enum.FormFactor.Custom
Part375.Size = Vector3.new(8, 1.20000005, 5.19999981)
Part375.CFrame = CFrame.new(-21.5098934, 3.4003644, 44.0600357, -1, 7.54534176e-06, -2.77179206e-05, 7.54488246e-06, 1, 1.65513575e-05, 2.77180479e-05, 1.65511501e-05, -1)
Part375.BackSurface = Enum.SurfaceType.Weld
Part375.BottomSurface = Enum.SurfaceType.Weld
Part375.LeftSurface = Enum.SurfaceType.Weld
Part375.RightSurface = Enum.SurfaceType.Weld
Part375.TopSurface = Enum.SurfaceType.Weld
Part375.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part375.Position = Vector3.new(-21.5098934, 3.4003644, 44.0600357)
Part375.Orientation = Vector3.new(0, -180, 0)
Part375.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh376.Parent = Part375
Part377.Parent = Model0
Part377.Material = Enum.Material.Metal
Part377.BrickColor = BrickColor.new("Grime")
Part377.Rotation = Vector3.new(180, 0, -180)
Part377.CanCollide = false
Part377.FormFactor = Enum.FormFactor.Custom
Part377.Size = Vector3.new(6.19999981, 2.39999986, 5.19999981)
Part377.CFrame = CFrame.new(-0.809634686, 4.00016212, 33.659977, -1, 5.6025101e-06, 1.15597104e-05, 5.61264596e-06, 1, -1.9705436e-05, -1.1348955e-05, -1.95571592e-05, -1)
Part377.BackSurface = Enum.SurfaceType.Weld
Part377.BottomSurface = Enum.SurfaceType.Weld
Part377.FrontSurface = Enum.SurfaceType.Weld
Part377.LeftSurface = Enum.SurfaceType.Weld
Part377.RightSurface = Enum.SurfaceType.Weld
Part377.TopSurface = Enum.SurfaceType.Weld
Part377.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part377.Position = Vector3.new(-0.809634686, 4.00016212, 33.659977)
Part377.Orientation = Vector3.new(0, 180, 0)
Part377.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh378.Parent = Part377
Part379.Parent = Model0
Part379.Material = Enum.Material.Metal
Part379.BrickColor = BrickColor.new("Grime")
Part379.Rotation = Vector3.new(180, 0, -180)
Part379.CanCollide = false
Part379.FormFactor = Enum.FormFactor.Custom
Part379.Size = Vector3.new(0.399999231, 0.799999893, 5.19999981)
Part379.CFrame = CFrame.new(-4.10968304, 4.80014801, 33.6599922, -1, 5.95867459e-06, 4.37692006e-06, 5.96897416e-06, 1, -1.46642387e-05, -4.16614375e-06, -1.45159993e-05, -1)
Part379.BackSurface = Enum.SurfaceType.Weld
Part379.BottomSurface = Enum.SurfaceType.Weld
Part379.FrontSurface = Enum.SurfaceType.Weld
Part379.LeftSurface = Enum.SurfaceType.Weld
Part379.RightSurface = Enum.SurfaceType.Weld
Part379.TopSurface = Enum.SurfaceType.Weld
Part379.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part379.Position = Vector3.new(-4.10968304, 4.80014801, 33.6599922)
Part379.Orientation = Vector3.new(0, 180, 0)
Part379.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh380.Parent = Part379
Part381.Name = "wheel"
Part381.Parent = Model0
Part381.Material = Enum.Material.Metal
Part381.BrickColor = BrickColor.new("Grime")
Part381.Transparency = 1
Part381.Rotation = Vector3.new(-90, -90, 0)
Part381.FormFactor = Enum.FormFactor.Symmetric
Part381.Friction = 1
Part381.Shape = Enum.PartType.Ball
Part381.Size = Vector3.new(5, 5, 5)
Part381.CFrame = CFrame.new(-22.5099869, 2.99934506, 49.1596909, -1.68524257e-05, -5.57238771e-08, -1, 1, -4.68407961e-08, -1.6852111e-05, -3.93574737e-08, -1, 6.68240361e-08)
Part381.BottomSurface = Enum.SurfaceType.Smooth
Part381.TopSurface = Enum.SurfaceType.Hinge
Part381.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part381.Position = Vector3.new(-22.5099869, 2.99934506, 49.1596909)
Part381.Orientation = Vector3.new(0, -90, 90)
Part381.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh382.Parent = Part381
CylinderMesh382.Offset = Vector3.new(0, -1.10000002, 0)
CylinderMesh382.Scale = Vector3.new(1, 0.600000024, 1)
CylinderMesh382.Scale = Vector3.new(1, 0.600000024, 1)
Part383.Parent = Model0
Part383.Material = Enum.Material.Metal
Part383.BrickColor = BrickColor.new("Really black")
Part383.Rotation = Vector3.new(-90, 90, 0)
Part383.CanCollide = false
Part383.FormFactor = Enum.FormFactor.Custom
Part383.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part383.CFrame = CFrame.new(-13.909976, 2.80021191, 31.7600212, -6.42304258e-06, -4.95945733e-06, 1, -1, -8.09017456e-06, -6.47926254e-06, 7.28673149e-06, -1, -6.10251254e-06)
Part383.BottomSurface = Enum.SurfaceType.Weld
Part383.FrontSurface = Enum.SurfaceType.Weld
Part383.LeftSurface = Enum.SurfaceType.Weld
Part383.RightSurface = Enum.SurfaceType.Weld
Part383.TopSurface = Enum.SurfaceType.Weld
Part383.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part383.Position = Vector3.new(-13.909976, 2.80021191, 31.7600212)
Part383.Orientation = Vector3.new(0, 90, -90)
Part383.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh384.Parent = Part383
Part385.Parent = Model0
Part385.Material = Enum.Material.Metal
Part385.BrickColor = BrickColor.new("Really black")
Part385.Rotation = Vector3.new(90, -90, 0)
Part385.CanCollide = false
Part385.FormFactor = Enum.FormFactor.Custom
Part385.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part385.CFrame = CFrame.new(-13.9099016, 2.80034089, 45.9599915, -5.31013347e-06, -1.75913701e-05, -1, -1, 8.41797737e-06, 5.30998523e-06, 8.4178846e-06, 1, -1.75914138e-05)
Part385.BottomSurface = Enum.SurfaceType.Weld
Part385.FrontSurface = Enum.SurfaceType.Weld
Part385.LeftSurface = Enum.SurfaceType.Weld
Part385.RightSurface = Enum.SurfaceType.Weld
Part385.TopSurface = Enum.SurfaceType.Weld
Part385.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part385.Position = Vector3.new(-13.9099016, 2.80034089, 45.9599915)
Part385.Orientation = Vector3.new(0, -90, -90)
Part385.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh386.Parent = Part385
WedgePart387.Parent = Model0
WedgePart387.Material = Enum.Material.Metal
WedgePart387.BrickColor = BrickColor.new("Grime")
WedgePart387.Rotation = Vector3.new(-180, -90, 0)
WedgePart387.FormFactor = Enum.FormFactor.Custom
WedgePart387.Size = Vector3.new(5.19999981, 1.20000005, 0.800000072)
WedgePart387.CFrame = CFrame.new(3.49014544, 5.80042076, 33.6599541, -5.22691334e-06, -6.46520948e-06, -1, 5.58827878e-06, -1, 6.48099831e-06, -1, -5.81446511e-06, 5.54879989e-06)
WedgePart387.BottomSurface = Enum.SurfaceType.Weld
WedgePart387.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart387.Position = Vector3.new(3.49014544, 5.80042076, 33.6599541)
WedgePart387.Orientation = Vector3.new(0, -90, 180)
WedgePart387.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh388.Parent = WedgePart387
SpecialMesh388.MeshType = Enum.MeshType.Wedge
WedgePart389.Parent = Model0
WedgePart389.Material = Enum.Material.Metal
WedgePart389.BrickColor = BrickColor.new("Grime")
WedgePart389.Rotation = Vector3.new(180, 90, 0)
WedgePart389.CanCollide = false
WedgePart389.FormFactor = Enum.FormFactor.Custom
WedgePart389.Size = Vector3.new(5.19999981, 1.60000014, 0.400000006)
WedgePart389.CFrame = CFrame.new(-4.10981941, 3.60051203, 33.6600952, 5.08384437e-06, -6.67719132e-06, 1, 8.03388048e-06, -0.999993205, -6.73167688e-06, 1, 7.2622679e-06, -6.18094418e-06)
WedgePart389.BottomSurface = Enum.SurfaceType.Weld
WedgePart389.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart389.Position = Vector3.new(-4.10981941, 3.60051203, 33.6600952)
WedgePart389.Orientation = Vector3.new(0, 90, 180)
WedgePart389.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh390.Parent = WedgePart389
SpecialMesh390.MeshType = Enum.MeshType.Wedge
WedgePart391.Parent = Model0
WedgePart391.Material = Enum.Material.Metal
WedgePart391.BrickColor = BrickColor.new("Grime")
WedgePart391.Rotation = Vector3.new(-180, 90, 0)
WedgePart391.CanCollide = false
WedgePart391.FormFactor = Enum.FormFactor.Custom
WedgePart391.Size = Vector3.new(5.19999981, 0.800000072, 0.600000024)
WedgePart391.CFrame = CFrame.new(-4.60982037, 4.80040455, 44.0597725, 1.23189566e-05, -7.03911064e-06, 1, -4.74273656e-06, -0.999981761, -7.78240428e-06, 1.00000024, -1.52694429e-05, -2.73172082e-05)
WedgePart391.BottomSurface = Enum.SurfaceType.Weld
WedgePart391.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart391.Position = Vector3.new(-4.60982037, 4.80040455, 44.0597725)
WedgePart391.Orientation = Vector3.new(0, 90, -180)
WedgePart391.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh392.Parent = WedgePart391
SpecialMesh392.MeshType = Enum.MeshType.Wedge
WedgePart393.Parent = Model0
WedgePart393.Material = Enum.Material.Metal
WedgePart393.BrickColor = BrickColor.new("Grime")
WedgePart393.Rotation = Vector3.new(180, -90, 0)
WedgePart393.FormFactor = Enum.FormFactor.Custom
WedgePart393.Size = Vector3.new(5.19999981, 0.800000072, 1.4000001)
WedgePart393.CFrame = CFrame.new(4.59036112, 6.80025482, 44.0597649, -1.38457381e-07, -6.21204481e-06, -1, -1.1573351e-05, -0.999996543, 6.72009583e-06, -1, 3.97761823e-06, 1.09616794e-05)
WedgePart393.BottomSurface = Enum.SurfaceType.Weld
WedgePart393.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart393.Position = Vector3.new(4.59036112, 6.80025482, 44.0597649)
WedgePart393.Orientation = Vector3.new(0, -90, -180)
WedgePart393.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh394.Parent = WedgePart393
SpecialMesh394.MeshType = Enum.MeshType.Wedge
WedgePart395.Parent = Model0
WedgePart395.Material = Enum.Material.Metal
WedgePart395.BrickColor = BrickColor.new("Grime")
WedgePart395.Rotation = Vector3.new(180, -90, 0)
WedgePart395.FormFactor = Enum.FormFactor.Custom
WedgePart395.Size = Vector3.new(5.19999981, 0.800000072, 1.4000001)
WedgePart395.CFrame = CFrame.new(4.59042549, 6.80014467, 33.6591415, 5.75830927e-06, -5.91780463e-06, -1, -1.57273789e-05, -1, 6.3936277e-06, -1, 8.98918006e-06, 3.81148857e-06)
WedgePart395.BottomSurface = Enum.SurfaceType.Weld
WedgePart395.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart395.Position = Vector3.new(4.59042549, 6.80014467, 33.6591415)
WedgePart395.Orientation = Vector3.new(0, -90, -180)
WedgePart395.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh396.Parent = WedgePart395
SpecialMesh396.MeshType = Enum.MeshType.Wedge
WedgePart397.Parent = Model0
WedgePart397.Material = Enum.Material.Metal
WedgePart397.BrickColor = BrickColor.new("Grime")
WedgePart397.Rotation = Vector3.new(180, 90, 0)
WedgePart397.CanCollide = false
WedgePart397.FormFactor = Enum.FormFactor.Custom
WedgePart397.Size = Vector3.new(5.19999981, 1.60000014, 0.400000006)
WedgePart397.CFrame = CFrame.new(-4.10966873, 3.60070205, 44.0600739, -1.83692464e-05, -5.51331595e-06, 1, 1.6215803e-05, -0.99999088, -5.89260162e-06, 1.00000012, 1.0839356e-05, 1.07093201e-05)
WedgePart397.BottomSurface = Enum.SurfaceType.Weld
WedgePart397.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart397.Position = Vector3.new(-4.10966873, 3.60070205, 44.0600739)
WedgePart397.Orientation = Vector3.new(0, 90, 180)
WedgePart397.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh398.Parent = WedgePart397
SpecialMesh398.MeshType = Enum.MeshType.Wedge
WedgePart399.Parent = Model0
WedgePart399.Material = Enum.Material.Metal
WedgePart399.BrickColor = BrickColor.new("Grime")
WedgePart399.Rotation = Vector3.new(-180, -90, 0)
WedgePart399.FormFactor = Enum.FormFactor.Custom
WedgePart399.Size = Vector3.new(5.19999981, 1.20000005, 0.800000072)
WedgePart399.CFrame = CFrame.new(3.49025035, 5.80047512, 44.0598679, 1.49187254e-05, -5.46336423e-06, -1, 1.28550873e-05, -0.99999088, 5.84314057e-06, -1.00000012, -1.82317744e-05, -7.25863902e-06)
WedgePart399.BottomSurface = Enum.SurfaceType.Weld
WedgePart399.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart399.Position = Vector3.new(3.49025035, 5.80047512, 44.0598679)
WedgePart399.Orientation = Vector3.new(0, -90, 180)
WedgePart399.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh400.Parent = WedgePart399
SpecialMesh400.MeshType = Enum.MeshType.Wedge
WedgePart401.Parent = Model0
WedgePart401.Material = Enum.Material.Metal
WedgePart401.BrickColor = BrickColor.new("Grime")
WedgePart401.Rotation = Vector3.new(-180, -90, 0)
WedgePart401.FormFactor = Enum.FormFactor.Custom
WedgePart401.Size = Vector3.new(5.19999981, 2.4000001, 0.800000072)
WedgePart401.CFrame = CFrame.new(2.69040108, 4.00057888, 33.659893, -1.2307155e-05, -6.81548408e-06, -1, 4.87608668e-06, -1, 6.82578775e-06, -1, -5.02421426e-06, 1.25180559e-05)
WedgePart401.BottomSurface = Enum.SurfaceType.Weld
WedgePart401.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart401.Position = Vector3.new(2.69040108, 4.00057888, 33.659893)
WedgePart401.Orientation = Vector3.new(0, -90, 180)
WedgePart401.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh402.Parent = WedgePart401
SpecialMesh402.MeshType = Enum.MeshType.Wedge
WedgePart403.Parent = Model0
WedgePart403.Material = Enum.Material.Metal
WedgePart403.BrickColor = BrickColor.new("Grime")
WedgePart403.Rotation = Vector3.new(180, 90, 0)
WedgePart403.FormFactor = Enum.FormFactor.Custom
WedgePart403.Size = Vector3.new(5.19999981, 1.4000001, 1.80000007)
WedgePart403.CFrame = CFrame.new(15.3911648, 6.50011253, 33.6598206, -5.57357816e-06, -6.14820556e-06, 1, 6.22643574e-06, -1, -6.27145073e-06, 1, 4.4634462e-06, 3.06545007e-06)
WedgePart403.BottomSurface = Enum.SurfaceType.Weld
WedgePart403.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart403.Position = Vector3.new(15.3911648, 6.50011253, 33.6598206)
WedgePart403.Orientation = Vector3.new(0, 90, 180)
WedgePart403.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh404.Parent = WedgePart403
SpecialMesh404.MeshType = Enum.MeshType.Wedge
WedgePart405.Parent = Model0
WedgePart405.Material = Enum.Material.Metal
WedgePart405.BrickColor = BrickColor.new("Grime")
WedgePart405.Rotation = Vector3.new(180, 90, 0)
WedgePart405.CanCollide = false
WedgePart405.FormFactor = Enum.FormFactor.Custom
WedgePart405.Size = Vector3.new(5.19999981, 0.800000072, 0.600000024)
WedgePart405.CFrame = CFrame.new(-4.60990286, 4.80025768, 33.6599922, -1.13140413e-05, -5.86295255e-06, 1, 1.95633838e-05, -0.999981761, -6.5924678e-06, 1.00000024, 9.23195239e-06, -3.40660699e-06)
WedgePart405.BottomSurface = Enum.SurfaceType.Weld
WedgePart405.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart405.Position = Vector3.new(-4.60990286, 4.80025768, 33.6599922)
WedgePart405.Orientation = Vector3.new(0, 90, 180)
WedgePart405.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh406.Parent = WedgePart405
SpecialMesh406.MeshType = Enum.MeshType.Wedge
WedgePart407.Parent = Model0
WedgePart407.Material = Enum.Material.Metal
WedgePart407.BrickColor = BrickColor.new("Grime")
WedgePart407.Rotation = Vector3.new(180, -90, 0)
WedgePart407.FormFactor = Enum.FormFactor.Custom
WedgePart407.Size = Vector3.new(1.59999871, 2, 1.79999995)
WedgePart407.CFrame = CFrame.new(-16.609375, 5.00049973, 45.8597336, 6.52338531e-06, -6.1213882e-06, -1, -1.60775817e-05, -1, 6.68229768e-06, -1, 8.12245889e-06, 4.77771937e-06)
WedgePart407.BottomSurface = Enum.SurfaceType.Smooth
WedgePart407.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart407.Position = Vector3.new(-16.609375, 5.00049973, 45.8597336)
WedgePart407.Orientation = Vector3.new(0, -90, -180)
WedgePart407.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh408.Parent = WedgePart407
SpecialMesh408.MeshType = Enum.MeshType.Wedge
Part409.Parent = Model0
Part409.Material = Enum.Material.Metal
Part409.BrickColor = BrickColor.new("Grime")
Part409.Rotation = Vector3.new(180, 0, -180)
Part409.FormFactor = Enum.FormFactor.Custom
Part409.Size = Vector3.new(1.19999981, 1.20000005, 15.999999)
Part409.CFrame = CFrame.new(18.0901623, 3.40006208, 38.8598328, -1, 6.87710462e-06, -1.40845405e-05, 7.06488026e-06, 1, -9.22855088e-06, 1.79022245e-05, -6.54521045e-06, -1)
Part409.BackSurface = Enum.SurfaceType.Weld
Part409.BottomSurface = Enum.SurfaceType.Weld
Part409.LeftSurface = Enum.SurfaceType.Weld
Part409.RightSurface = Enum.SurfaceType.Weld
Part409.TopSurface = Enum.SurfaceType.Weld
Part409.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part409.Position = Vector3.new(18.0901623, 3.40006208, 38.8598328)
Part409.Orientation = Vector3.new(0, -180, 0)
Part409.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh410.Parent = Part409
Part411.Parent = Model0
Part411.Material = Enum.Material.Metal
Part411.BrickColor = BrickColor.new("Grime")
Part411.Rotation = Vector3.new(-180, 0, -180)
Part411.FormFactor = Enum.FormFactor.Custom
Part411.Size = Vector3.new(2.00000024, 4, 15.6000004)
Part411.CFrame = CFrame.new(18.0899773, 6.00011158, 38.8595161, -1, 8.79176241e-06, -5.25169889e-05, 8.88845261e-06, 1, 7.70221322e-06, 5.44925242e-05, 9.09026676e-06, -1)
Part411.BackSurface = Enum.SurfaceType.Weld
Part411.BottomSurface = Enum.SurfaceType.Weld
Part411.FrontSurface = Enum.SurfaceType.Weld
Part411.LeftSurface = Enum.SurfaceType.Weld
Part411.RightSurface = Enum.SurfaceType.Weld
Part411.TopSurface = Enum.SurfaceType.Weld
Part411.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part411.Position = Vector3.new(18.0899773, 6.00011158, 38.8595161)
Part411.Orientation = Vector3.new(0, -180, 0)
Part411.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh412.Parent = Part411
Part413.Parent = Model0
Part413.Material = Enum.Material.Metal
Part413.BrickColor = BrickColor.new("Grime")
Part413.Rotation = Vector3.new(-180, 0, -180)
Part413.CanCollide = false
Part413.FormFactor = Enum.FormFactor.Custom
Part413.Size = Vector3.new(6.19999981, 2.39999986, 5.19999981)
Part413.CFrame = CFrame.new(-0.809948921, 4.00028038, 44.0597649, -1, 6.57104692e-06, -7.88472062e-06, 6.95060317e-06, 0.99999088, 2.1937858e-06, 1.55447615e-05, 7.57022963e-06, -1.00000012)
Part413.BackSurface = Enum.SurfaceType.Weld
Part413.BottomSurface = Enum.SurfaceType.Weld
Part413.FrontSurface = Enum.SurfaceType.Weld
Part413.LeftSurface = Enum.SurfaceType.Weld
Part413.RightSurface = Enum.SurfaceType.Weld
Part413.TopSurface = Enum.SurfaceType.Weld
Part413.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part413.Position = Vector3.new(-0.809948921, 4.00028038, 44.0597649)
Part413.Orientation = Vector3.new(0, -180, 0)
Part413.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh414.Parent = Part413
Part415.Parent = Model0
Part415.Material = Enum.Material.Metal
Part415.BrickColor = BrickColor.new("Grime")
Part415.Rotation = Vector3.new(180, 0, -180)
Part415.FormFactor = Enum.FormFactor.Custom
Part415.Size = Vector3.new(13.1999998, 1.19999969, 12.4000006)
Part415.CFrame = CFrame.new(10.0900612, 3.40011263, 38.85989, -1, 6.44758302e-06, -5.45887087e-06, 6.45471619e-06, 1, -7.73913871e-06, 5.60309672e-06, -7.63776461e-06, -1)
Part415.BottomSurface = Enum.SurfaceType.Weld
Part415.LeftSurface = Enum.SurfaceType.Weld
Part415.RightSurface = Enum.SurfaceType.Weld
Part415.TopSurface = Enum.SurfaceType.Weld
Part415.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part415.Position = Vector3.new(10.0900612, 3.40011263, 38.85989)
Part415.Orientation = Vector3.new(0, -180, 0)
Part415.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh416.Parent = Part415
BlockMesh416.Offset = Vector3.new(0, 2, 0)
BlockMesh416.Scale = Vector3.new(1.20000005, 4.33400011, 1)
BlockMesh416.Scale = Vector3.new(1.20000005, 4.33400011, 1)
Part417.Parent = Model0
Part417.Material = Enum.Material.Metal
Part417.BrickColor = BrickColor.new("Really black")
Part417.Rotation = Vector3.new(90, -90, 0)
Part417.CanCollide = false
Part417.FormFactor = Enum.FormFactor.Custom
Part417.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part417.CFrame = CFrame.new(-7.30992794, 2.80029297, 45.9599228, -5.31013347e-06, -1.75913701e-05, -1, -1, 8.41797737e-06, 5.30998523e-06, 8.4178846e-06, 1, -1.75914138e-05)
Part417.BottomSurface = Enum.SurfaceType.Weld
Part417.FrontSurface = Enum.SurfaceType.Weld
Part417.LeftSurface = Enum.SurfaceType.Weld
Part417.RightSurface = Enum.SurfaceType.Weld
Part417.TopSurface = Enum.SurfaceType.Weld
Part417.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part417.Position = Vector3.new(-7.30992794, 2.80029297, 45.9599228)
Part417.Orientation = Vector3.new(0, -90, -90)
Part417.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh418.Parent = Part417
Part419.Name = "wheel"
Part419.Parent = Model0
Part419.Material = Enum.Material.Metal
Part419.BrickColor = BrickColor.new("Grime")
Part419.Transparency = 1
Part419.Rotation = Vector3.new(90, 90, 0)
Part419.FormFactor = Enum.FormFactor.Symmetric
Part419.Friction = 1
Part419.Shape = Enum.PartType.Ball
Part419.Size = Vector3.new(5, 5, 5)
Part419.CFrame = CFrame.new(18.0901184, 2.99934506, 28.3597851, 2.72848411e-09, 5.54910464e-08, 1, 1, 4.68062353e-08, -3.27418093e-09, -3.90050445e-08, 1, -6.65888464e-08)
Part419.BottomSurface = Enum.SurfaceType.Smooth
Part419.TopSurface = Enum.SurfaceType.Hinge
Part419.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part419.Position = Vector3.new(18.0901184, 2.99934506, 28.3597851)
Part419.Orientation = Vector3.new(0, 90, 90)
Part419.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh420.Parent = Part419
CylinderMesh420.Offset = Vector3.new(0, -1.10000002, 0)
CylinderMesh420.Scale = Vector3.new(1, 0.600000024, 1)
CylinderMesh420.Scale = Vector3.new(1, 0.600000024, 1)
Part421.Parent = Model0
Part421.Material = Enum.Material.Metal
Part421.BrickColor = BrickColor.new("Really black")
Part421.Rotation = Vector3.new(-90, 90, 0)
Part421.CanCollide = false
Part421.FormFactor = Enum.FormFactor.Custom
Part421.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part421.CFrame = CFrame.new(6.2899642, 2.80008507, 31.7599297, -6.44921874e-06, -5.4921652e-06, 1, -1, -7.7157365e-06, -6.45307955e-06, 7.66116682e-06, -1, -5.5698024e-06)
Part421.BottomSurface = Enum.SurfaceType.Weld
Part421.FrontSurface = Enum.SurfaceType.Weld
Part421.LeftSurface = Enum.SurfaceType.Weld
Part421.RightSurface = Enum.SurfaceType.Weld
Part421.TopSurface = Enum.SurfaceType.Weld
Part421.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part421.Position = Vector3.new(6.2899642, 2.80008507, 31.7599297)
Part421.Orientation = Vector3.new(0, 90, -90)
Part421.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh422.Parent = Part421
Part423.Parent = Model0
Part423.Material = Enum.Material.Metal
Part423.BrickColor = BrickColor.new("Really black")
Part423.Rotation = Vector3.new(-90, 90, 0)
Part423.CanCollide = false
Part423.FormFactor = Enum.FormFactor.Custom
Part423.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part423.CFrame = CFrame.new(13.4899158, 2.80003095, 31.7598763, -6.44921874e-06, -5.4921652e-06, 1, -1, -7.7157365e-06, -6.45307955e-06, 7.66116682e-06, -1, -5.5698024e-06)
Part423.BottomSurface = Enum.SurfaceType.Weld
Part423.FrontSurface = Enum.SurfaceType.Weld
Part423.LeftSurface = Enum.SurfaceType.Weld
Part423.RightSurface = Enum.SurfaceType.Weld
Part423.TopSurface = Enum.SurfaceType.Smooth
Part423.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part423.Position = Vector3.new(13.4899158, 2.80003095, 31.7598763)
Part423.Orientation = Vector3.new(0, 90, -90)
Part423.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh424.Parent = Part423
Part425.Parent = Model0
Part425.Material = Enum.Material.Metal
Part425.BrickColor = BrickColor.new("Really black")
Part425.Rotation = Vector3.new(90, -90, 0)
Part425.CanCollide = false
Part425.FormFactor = Enum.FormFactor.Custom
Part425.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part425.CFrame = CFrame.new(6.29016876, 2.80019403, 45.9599304, -6.44921874e-06, 5.4921652e-06, -1, -1, 7.7157365e-06, 6.45307955e-06, 7.66116682e-06, 1, 5.5698024e-06)
Part425.BottomSurface = Enum.SurfaceType.Weld
Part425.FrontSurface = Enum.SurfaceType.Weld
Part425.LeftSurface = Enum.SurfaceType.Weld
Part425.RightSurface = Enum.SurfaceType.Weld
Part425.TopSurface = Enum.SurfaceType.Weld
Part425.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part425.Position = Vector3.new(6.29016876, 2.80019403, 45.9599304)
Part425.Orientation = Vector3.new(0, -90, -90)
Part425.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh426.Parent = Part425
Part427.Parent = Model0
Part427.Material = Enum.Material.Metal
Part427.BrickColor = BrickColor.new("Grime")
Part427.Rotation = Vector3.new(-180, 0, -180)
Part427.CanCollide = false
Part427.FormFactor = Enum.FormFactor.Custom
Part427.Size = Vector3.new(0.800000191, 1.40000021, 5.19999981)
Part427.CFrame = CFrame.new(16.6901779, 6.50009441, 44.059761, -1, 7.6314127e-06, -2.93200592e-05, 7.72801832e-06, 1, 1.66543414e-05, 3.12956508e-05, 1.80426377e-05, -1)
Part427.BackSurface = Enum.SurfaceType.Weld
Part427.BottomSurface = Enum.SurfaceType.Weld
Part427.FrontSurface = Enum.SurfaceType.Weld
Part427.LeftSurface = Enum.SurfaceType.Weld
Part427.RightSurface = Enum.SurfaceType.Weld
Part427.TopSurface = Enum.SurfaceType.Weld
Part427.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part427.Position = Vector3.new(16.6901779, 6.50009441, 44.059761)
Part427.Orientation = Vector3.new(0, -180, 0)
Part427.Color = Color3.new(0.498039, 0.556863, 0.392157)
BlockMesh428.Parent = Part427
WedgePart429.Parent = Model0
WedgePart429.Material = Enum.Material.Metal
WedgePart429.BrickColor = BrickColor.new("Grime")
WedgePart429.Rotation = Vector3.new(-180, -90, 0)
WedgePart429.FormFactor = Enum.FormFactor.Custom
WedgePart429.Size = Vector3.new(5.19999981, 2.4000001, 0.800000072)
WedgePart429.CFrame = CFrame.new(2.69045496, 4.00031519, 44.0597382, -1.79814906e-05, -7.07093022e-06, -1, 9.26739267e-06, -0.99999088, 7.4503323e-06, -1.00000012, -1.46438188e-05, 2.5641586e-05)
WedgePart429.BottomSurface = Enum.SurfaceType.Weld
WedgePart429.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart429.Position = Vector3.new(2.69045496, 4.00031519, 44.0597382)
WedgePart429.Orientation = Vector3.new(0, -90, 180)
WedgePart429.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh430.Parent = WedgePart429
SpecialMesh430.MeshType = Enum.MeshType.Wedge
WedgePart431.Parent = Model0
WedgePart431.Material = Enum.Material.Metal
WedgePart431.BrickColor = BrickColor.new("Grime")
WedgePart431.Rotation = Vector3.new(180, 90, 0)
WedgePart431.FormFactor = Enum.FormFactor.Custom
WedgePart431.Size = Vector3.new(5.19999981, 1.4000001, 1.80000007)
WedgePart431.CFrame = CFrame.new(15.3902655, 6.50043106, 44.0596695, -1.61600074e-05, -5.6243216e-06, 1, 1.58236417e-05, -1, -6.17393925e-06, 1, 7.96042968e-06, 4.97321707e-06)
WedgePart431.BottomSurface = Enum.SurfaceType.Weld
WedgePart431.Color = Color3.new(0.498039, 0.556863, 0.392157)
WedgePart431.Position = Vector3.new(15.3902655, 6.50043106, 44.0596695)
WedgePart431.Orientation = Vector3.new(0, 90, 180)
WedgePart431.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh432.Parent = WedgePart431
SpecialMesh432.MeshType = Enum.MeshType.Wedge
Part433.Name = "wheel"
Part433.Parent = Model0
Part433.Material = Enum.Material.Metal
Part433.BrickColor = BrickColor.new("Grime")
Part433.Transparency = 1
Part433.Rotation = Vector3.new(-90, -90, 0)
Part433.FormFactor = Enum.FormFactor.Symmetric
Part433.Friction = 1
Part433.Shape = Enum.PartType.Ball
Part433.Size = Vector3.new(5, 5, 5)
Part433.CFrame = CFrame.new(18.0901108, 2.99934506, 49.3595123, 2.72848411e-09, -5.54910464e-08, -1, 1, -4.68062353e-08, 3.27418093e-09, -3.90050445e-08, -1, 6.65888464e-08)
Part433.BottomSurface = Enum.SurfaceType.Smooth
Part433.TopSurface = Enum.SurfaceType.Hinge
Part433.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part433.Position = Vector3.new(18.0901108, 2.99934506, 49.3595123)
Part433.Orientation = Vector3.new(0, -90, 90)
Part433.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh434.Parent = Part433
CylinderMesh434.Offset = Vector3.new(0, -1.10000002, 0)
CylinderMesh434.Scale = Vector3.new(1, 0.600000024, 1)
CylinderMesh434.Scale = Vector3.new(1, 0.600000024, 1)
Part435.Parent = Model0
Part435.Material = Enum.Material.Metal
Part435.BrickColor = BrickColor.new("Really black")
Part435.Rotation = Vector3.new(90, -90, 0)
Part435.CanCollide = false
Part435.FormFactor = Enum.FormFactor.Custom
Part435.Size = Vector3.new(5.5999999, 1.79999995, 5.60000038)
Part435.CFrame = CFrame.new(13.4901199, 2.80014706, 45.9598923, -6.44921874e-06, 5.4921652e-06, -1, -1, 7.7157365e-06, 6.45307955e-06, 7.66116682e-06, 1, 5.5698024e-06)
Part435.BottomSurface = Enum.SurfaceType.Weld
Part435.FrontSurface = Enum.SurfaceType.Weld
Part435.LeftSurface = Enum.SurfaceType.Weld
Part435.RightSurface = Enum.SurfaceType.Weld
Part435.TopSurface = Enum.SurfaceType.Smooth
Part435.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part435.Position = Vector3.new(13.4901199, 2.80014706, 45.9598923)
Part435.Orientation = Vector3.new(0, -90, -90)
Part435.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh436.Parent = Part435
Part437.Parent = Model0
Part437.Material = Enum.Material.Metal
Part437.BrickColor = BrickColor.new("Grime")
Part437.Rotation = Vector3.new(90, -90, 0)
Part437.CanCollide = false
Part437.FormFactor = Enum.FormFactor.Custom
Part437.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part437.CFrame = CFrame.new(-13.9098864, 2.80032659, 46.9600143, -6.56966131e-06, -1.93433134e-05, -1, -1, 9.822832e-06, 6.56947122e-06, 9.82270558e-06, 1, -1.93433771e-05)
Part437.BottomSurface = Enum.SurfaceType.Weld
Part437.FrontSurface = Enum.SurfaceType.Weld
Part437.LeftSurface = Enum.SurfaceType.Weld
Part437.RightSurface = Enum.SurfaceType.Weld
Part437.TopSurface = Enum.SurfaceType.Weld
Part437.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part437.Position = Vector3.new(-13.9098864, 2.80032659, 46.9600143)
Part437.Orientation = Vector3.new(0, -90, -90)
Part437.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh438.Parent = Part437
CylinderMesh438.Offset = Vector3.new(0, -0.170000002, 0)
Part439.Parent = Model0
Part439.Material = Enum.Material.Metal
Part439.BrickColor = BrickColor.new("Grime")
Part439.Rotation = Vector3.new(90, -90, 0)
Part439.CanCollide = false
Part439.FormFactor = Enum.FormFactor.Custom
Part439.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part439.CFrame = CFrame.new(13.5900993, 2.8001523, 46.9598885, -6.44267539e-06, 5.35898835e-06, -1, -1, 7.80934624e-06, 6.45962518e-06, 7.56755799e-06, 1, 5.70298016e-06)
Part439.BottomSurface = Enum.SurfaceType.Weld
Part439.FrontSurface = Enum.SurfaceType.Weld
Part439.LeftSurface = Enum.SurfaceType.Weld
Part439.RightSurface = Enum.SurfaceType.Weld
Part439.TopSurface = Enum.SurfaceType.Weld
Part439.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part439.Position = Vector3.new(13.5900993, 2.8001523, 46.9598885)
Part439.Orientation = Vector3.new(0, -90, -90)
Part439.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh440.Parent = Part439
CylinderMesh440.Offset = Vector3.new(0, -0.170000002, 0)
Part441.Parent = Model0
Part441.Material = Enum.Material.Metal
Part441.BrickColor = BrickColor.new("Grime")
Part441.Rotation = Vector3.new(90, -90, 0)
Part441.CanCollide = false
Part441.FormFactor = Enum.FormFactor.Custom
Part441.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part441.CFrame = CFrame.new(6.28996181, 2.70008087, 30.7599239, -6.44267539e-06, 5.35898835e-06, -1, -1, 7.80934624e-06, 6.45962518e-06, 7.56755799e-06, 1, 5.70298016e-06)
Part441.BottomSurface = Enum.SurfaceType.Weld
Part441.FrontSurface = Enum.SurfaceType.Weld
Part441.LeftSurface = Enum.SurfaceType.Weld
Part441.RightSurface = Enum.SurfaceType.Weld
Part441.TopSurface = Enum.SurfaceType.Weld
Part441.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part441.Position = Vector3.new(6.28996181, 2.70008087, 30.7599239)
Part441.Orientation = Vector3.new(0, -90, -90)
Part441.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh442.Parent = Part441
CylinderMesh442.Offset = Vector3.new(0, -0.170000002, 0)
Part443.Parent = Model0
Part443.Material = Enum.Material.Metal
Part443.BrickColor = BrickColor.new("Grime")
Part443.Rotation = Vector3.new(90, -90, 0)
Part443.CanCollide = false
Part443.FormFactor = Enum.FormFactor.Custom
Part443.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part443.CFrame = CFrame.new(-7.40999508, 2.70016646, 30.7599983, -6.36196455e-06, 3.71647275e-06, -1, -1, 8.96386427e-06, 6.54035557e-06, 6.41305041e-06, 1, 7.34550258e-06)
Part443.BottomSurface = Enum.SurfaceType.Weld
Part443.FrontSurface = Enum.SurfaceType.Weld
Part443.LeftSurface = Enum.SurfaceType.Weld
Part443.RightSurface = Enum.SurfaceType.Weld
Part443.TopSurface = Enum.SurfaceType.Weld
Part443.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part443.Position = Vector3.new(-7.40999508, 2.70016646, 30.7599983)
Part443.Orientation = Vector3.new(0, -90, -90)
Part443.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh444.Parent = Part443
CylinderMesh444.Offset = Vector3.new(0, -0.170000002, 0)
Part445.Parent = Model0
Part445.Material = Enum.Material.Metal
Part445.BrickColor = BrickColor.new("Grime")
Part445.Rotation = Vector3.new(90, -90, 0)
Part445.CanCollide = false
Part445.FormFactor = Enum.FormFactor.Custom
Part445.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part445.CFrame = CFrame.new(13.4899139, 2.70003438, 30.759882, -6.44267539e-06, 5.35898835e-06, -1, -1, 7.80934624e-06, 6.45962518e-06, 7.56755799e-06, 1, 5.70298016e-06)
Part445.BottomSurface = Enum.SurfaceType.Weld
Part445.FrontSurface = Enum.SurfaceType.Weld
Part445.LeftSurface = Enum.SurfaceType.Weld
Part445.RightSurface = Enum.SurfaceType.Weld
Part445.TopSurface = Enum.SurfaceType.Weld
Part445.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part445.Position = Vector3.new(13.4899139, 2.70003438, 30.759882)
Part445.Orientation = Vector3.new(0, -90, -90)
Part445.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh446.Parent = Part445
CylinderMesh446.Offset = Vector3.new(0, -0.170000002, 0)
Part447.Parent = Model0
Part447.Material = Enum.Material.Metal
Part447.BrickColor = BrickColor.new("Grime")
Part447.Rotation = Vector3.new(90, -90, 0)
Part447.CanCollide = false
Part447.FormFactor = Enum.FormFactor.Custom
Part447.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part447.CFrame = CFrame.new(-13.9099846, 2.80021143, 30.7600117, -6.36196455e-06, 3.71647275e-06, -1, -1, 8.96386427e-06, 6.54035557e-06, 6.41305041e-06, 1, 7.34550258e-06)
Part447.BottomSurface = Enum.SurfaceType.Weld
Part447.FrontSurface = Enum.SurfaceType.Weld
Part447.LeftSurface = Enum.SurfaceType.Weld
Part447.RightSurface = Enum.SurfaceType.Weld
Part447.TopSurface = Enum.SurfaceType.Weld
Part447.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part447.Position = Vector3.new(-13.9099846, 2.80021143, 30.7600117)
Part447.Orientation = Vector3.new(0, -90, -90)
Part447.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh448.Parent = Part447
CylinderMesh448.Offset = Vector3.new(0, -0.170000002, 0)
Part449.Parent = Model0
Part449.Material = Enum.Material.Metal
Part449.BrickColor = BrickColor.new("Grime")
Part449.Rotation = Vector3.new(90, -90, 0)
Part449.CanCollide = false
Part449.FormFactor = Enum.FormFactor.Custom
Part449.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part449.CFrame = CFrame.new(-7.30978823, 2.80027866, 46.9599609, -6.56966131e-06, -1.93433134e-05, -1, -1, 9.822832e-06, 6.56947122e-06, 9.82270558e-06, 1, -1.93433771e-05)
Part449.BottomSurface = Enum.SurfaceType.Weld
Part449.FrontSurface = Enum.SurfaceType.Weld
Part449.LeftSurface = Enum.SurfaceType.Weld
Part449.RightSurface = Enum.SurfaceType.Weld
Part449.TopSurface = Enum.SurfaceType.Weld
Part449.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part449.Position = Vector3.new(-7.30978823, 2.80027866, 46.9599609)
Part449.Orientation = Vector3.new(0, -90, -90)
Part449.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh450.Parent = Part449
CylinderMesh450.Offset = Vector3.new(0, -0.170000002, 0)
Part451.Parent = Model0
Part451.Material = Enum.Material.Metal
Part451.BrickColor = BrickColor.new("Grime")
Part451.Rotation = Vector3.new(90, -90, 0)
Part451.CanCollide = false
Part451.FormFactor = Enum.FormFactor.Custom
Part451.Size = Vector3.new(3.59999943, 0.200000003, 3.20000005)
Part451.CFrame = CFrame.new(6.2901721, 2.80019784, 46.9599152, -6.44267539e-06, 5.35898835e-06, -1, -1, 7.80934624e-06, 6.45962518e-06, 7.56755799e-06, 1, 5.70298016e-06)
Part451.BottomSurface = Enum.SurfaceType.Weld
Part451.FrontSurface = Enum.SurfaceType.Weld
Part451.LeftSurface = Enum.SurfaceType.Weld
Part451.RightSurface = Enum.SurfaceType.Weld
Part451.TopSurface = Enum.SurfaceType.Weld
Part451.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part451.Position = Vector3.new(6.2901721, 2.80019784, 46.9599152)
Part451.Orientation = Vector3.new(0, -90, -90)
Part451.Color = Color3.new(0.498039, 0.556863, 0.392157)
CylinderMesh452.Parent = Part451
CylinderMesh452.Offset = Vector3.new(0, -0.170000002, 0)
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
end)

-- CS:Button("圣光", function()
    -- game.Lighting.Ambient = Color3.new(9999, 9999, 9999)
-- end)

-- CS:Button("超广角", function()
-- Workspace.CurrentCamera.FieldOfView = 9999999
-- end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
end


if REN["白名单"]["开发者白名单"]["状态"] == true then
        notify(" 忍 ","您是开发者",3)
        wait(1)
        notify(" 忍 ","正在启动脚本....",5)
        wait(3)       
        scripts()
    else
        if REN["限免"] == true then
            notify(" 忍 ","现在是限免时间，无需白名单",3)
            wait(1)
            notify(" 忍 ","正在启动脚本....",5)
            wait(3)       
            scripts()
        else
        if R == "忍脚本交流群:139341298" then
            notify(" 忍 ","保护函数正确",3)
        else   
            setclipboard("139341298")
            game.Players.LocalPlayer:Kick("请到139341298获取最新脚本")                                           
        end
        if REN["白名单"]["普通白名单"]["状态"] == true then
            notify(" 忍 ","白名单正确",3)
            notify(" 忍 ","正在启动脚本....",5)
            scripts()
        else
                setclipboard("139341298")
            game.Players.LocalPlayer:Kick(REN["游戏名"].."请您到139341298购买白名单\n")
        end
    end
end
