------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local REN = {}
local REN ={
    ["游戏名"] = tostring(game.Players.LocalPlayer.Character);
  
  
  
  
  
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





function scripts()							
loadstring(game:HttpGet("https://pastebin.com/raw/6xQ5gtbj"))();
local ui = loadstring(game:HttpGet"https://pastebin.com/raw/cApeA3dS")()
local win = ui:new("忍脚本")
--
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
local li666 = li1:section("力量传奇",false)
local li = li1:section("传送",false)
--
local FM = FM1:section("伐木大亨2",false)
local FMCS = FM1:section("传送",false)
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

UITab:Button("官方交流群：139341298(点击后自动复制)", function()
setclipboard("139341298")
end)

UITab:Label("忍脚本和清风脚本和静新脚本合并")


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
local bai={
  playernamedied=nil,
  dropdown=nil,
  
}
local lp=game.Players.LocalPlayer
function tp(p)
   lp.Character:PivotTo(p)
end
function shuaxinlb(zji)
    bai.dropdown={}
    if zji==true then
    for p, I in next,game.Players:GetChildren() do
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

local dropdown = Player:Dropdown("选择玩家名称",'Dropdown',bai.dropdown,function(v)
    bai.playernamedied = v
end)

Player:Button("刷新列表", function()
	shuaxinlb(true)
	dropdown:SetOptions(bai.dropdown)
end)

Player:Button("传送到玩家旁边",function()  
            tp(game:GetService("Players")[bai.playernamedied].Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0))
end)

Player:Button("飞行", function()
  loadstring(game:HttpGet('https://pastebin.com/raw/28CWNSrK'))();
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


game.RunService.Stepped:Connect(function()
 if Light then
        game.Lighting.Ambient = Color3.new(1, 1, 1)
    end
if workspace:FindFirstChild("Spot") == nil then
local SafeSpot = Instance.new("Part", workspace)
SafeSpot.Position = Vector3.new(math.random(-25000,-2500),100,math.random(-25000,-2500))
SafeSpot.Name = "Spot"
SafeSpot.Size = Vector3.new(500,50,500)
SafeSpot.Anchored = true
SafeSpot.Transparency = .5
end
if workspace:FindFirstChild("TAntiVoid") == nil then
local TournamentAntiVoid = Instance.new("Part", workspace)
TournamentAntiVoid.Name = "TAntiVoid"
TournamentAntiVoid.Size = Vector3.new(2048, 15, 2048)
TournamentAntiVoid.Position = Vector3.new(3420, 70, 3)
TournamentAntiVoid.CanCollide = false
TournamentAntiVoid.Transparency = 1
TournamentAntiVoid.Anchored = true
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


if REN["白名单"]["开发者白名单"]["状态"] == true then
        scripts()
    else
        if R0==[[ ________________    ]] and R1==[[/    ↓保护涵数↓       \   ]] and R2==[[|    脚本名:忍脚本        |   ]] and R3==[[|   群号:139341298     |   ]] and R4==[[| 使用脚本封号不负责 |   ]] and R5==[[|        请勿抄袭            |   ]] and R6==[[| ________________ |   ]] then
            else
                game.Players.LocalPlayer:Kick("请勿删除保护涵数")
        end
        if REN["白名单"]["普通白名单"]["状态"] == true then
            scripts()
        else
                setclipboard("139341298")
            game.Players.LocalPlayer:Kick("请您到139341298购买白名单")
        end
end
