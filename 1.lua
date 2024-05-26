local whitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/renlua/lua/main/renscript.lua"))();

if game:GetService("CoreGui").BubbleChat["BubbleChat_"..game.Players.LocalPlayer.UserId].padding.Name == "padding" then
    if game.Players.LocalPlayer.Name == game.Players.LocalPlayer.Character.Name and game.Players.LocalPlayer.CharacterAppearanceId == game.Players.LocalPlayer.UserId then
        if whitelist[game.Players.LocalPlayer.Name] then
            setclipboard("破解成功")
        end
    end
end



