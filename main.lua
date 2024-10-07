function StartScript()
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "script by nexer" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
end

function AccessDenied() 
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Wrong Key",Text = "Access Denied" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
end

local GameName = "key system- by nexer"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "key system test", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

local Key = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

_G.Key = loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/key/main/main.lua'))()

Misc1:AddTextbox({
    Name = "Input Key",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
_G.KeyValue = Value
    end
})

Scripts:AddButton({
	Name = "Check Key",
	Callback = function()
if _G.Key == _G.KeyValue then
StartScript()
else
AccessDenied() 
	 end
})
