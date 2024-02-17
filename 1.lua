if R == "忍脚本交流群:139341298" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/renlua/lua/main/renscript.lua"))();
elseif name == "SyndromeXHUB" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/SyndromeXph/Hub/main/Hubkey"))()
else
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "脚本",
    Text = "错误链接",
    Duration = 5,
})
end
