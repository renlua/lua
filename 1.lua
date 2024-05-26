local whitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/renlua/lua/main/renscript.lua"))();

local api = game:HttpGet("https://users.roblox.com/v1/users/"..game.Players.LocalPlayer.UserId)
local REN_name = string.match(api,'name":"(.-)",')
local REN_displayName = string.match(api,'displayName":"(.-)"')

if game:GetService("CoreGui").BubbleChat["BubbleChat_"..game.Players.LocalPlayer.UserId].padding.Name == "padding" then
    if game.Players.LocalPlayer.Name == game.Players.LocalPlayer.Character.Name and game.Players.LocalPlayer.DisplayName == REN_displayName and game.Players.LocalPlayer.Name == REN_name and game.Players.LocalPlayer.Character.Name == REN_name and game.Players.LocalPlayer.CharacterAppearanceId == game.Players.LocalPlayer.UserId then
        if whitelist[game.Players.LocalPlayer.Name] then
            setclipboard("破解成功")
        end
    end
end




