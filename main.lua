local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Key system", HidePremium = false, SaveConfig = true, IntroText = "Fan & Boxer script"})

OrionLib:MakeNotification({
	Name = "Key System",
	Content = "Complete Key System To Execute Script",
	Image = "rbxassetid://4483345998",
	Time = 3
})

_G.Key = loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/key/main/main.lua'))()
_G.KeyInput = "string"

function MakeScriptHub()
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Script by nexer" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
wait(0.5)
setclipboard(tostring("https://www.youtube.com/@nexer1234"))
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Copied Youtube Channel Link" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
wait(0.5)
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Script by nexer" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(247.56419372558594, -265.0000305175781, -370.77752685546875)
wait(0.5)
game:GetService("ReplicatedStorage").RemoteEvents.SuitUpClown:FireServer()
wait(0.1)
game:GetService("ReplicatedStorage").RemoteEvents.KeyQuest:FireServer()
wait(0.1)
game:GetService("ReplicatedStorage").RemoteEvents.KeyAcquired:FireServer()
wait(0.1)
game:GetService("ReplicatedStorage").RemoteEvents.GOHOME:FireServer()
wait(0.1)
game:GetService("ReplicatedStorage").RemoteEvents.KeyBadgeReward:FireServer()
wait(0.1)
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Yey",Text = "Fan acquired" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4231.26123046875, 3505.86376953125, 270.4519958496094)
wait(0.5)
fireclickdetector(workspace.BoxingGloves.ClickDetector)
wait(1)
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Yey",Text = "Boxer acquired" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
wait(1)
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Teleporting",Text = "Teleporting you back to slap battles!" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
wait(1)
game:GetService("TeleportService"):Teleport(6403373529)
	]])
end	
game:GetService("TeleportService"):Teleport(7234087065)
end

function CorrectKeyNotification()
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Access Allowed",Text = "Script is loading..." ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "Nice"})
end

function IncorrectKeyNotification()
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Access Denied",Text = "Incorrect Key" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = ":("})
end

                
local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if _G.KeyInput == _G.Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
        	IncorrectKeyNotification()
        end
  	end    
})
