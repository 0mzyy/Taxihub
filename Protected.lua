-- IF THIS IS LEAKED PLEASE  DO REPORT IT TO 0MZYY#1161 AS SOON AS POSSIBLE. 
-- ANY STAFF OR MEMBERS THAT LEAK THE INSIDE OF OUR SCRIPTS WILL BE BANNED AND BLACKLISTED.
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "TaxiHub | Taxi Boss", HidePremium = true, IntroText = "V1.5", SaveConfig = true, ConfigFolder = "TaxiHub"})
OrionLib:MakeNotification({
	Name = "Welcome to TaxiHub",
	Content = "If you are new to taxiHub make sure to not abuse the powers! Any bans will not be our fault! Have a good stay",
	Image = "rbxassetid://4483345998",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "Welcome to TaxiHub",
	Content = "This is version : V1.1 BETA",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local CashnPFarmTab = Window:MakeTab({
	Name = "Autofarms",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = CashnPFarmTab:AddSection({
	Name = "Autofarms"
})

CashnPFarmTab:AddToggle({
	Name = "Cash Autofarm",
	Default = false,
	Callback = function(Value)
    _G.Autofarm = Value
     _G.amount = 0
 _G.canautofarm = true
spawn(function()
    while _G.Autofarm do
        wait()
    if _G.amount > 3 then
        wait(20)
        _G.amount = 0
        _G.rat = true
    elseif _G.amount < 3 and _G.rat == true and _G.canautofarm == false then
                _G.canautofarm = true
                _G.rat = false
    end
    end
            end)
            spawn(function()
            warn("anti afk")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end)
    while _G.Autofarm do
        wait()
        pcall(function()
   if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
               local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
       for ok,ya in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
                 if ya.Name == "Player" and ya.Value == game.Players.LocalPlayer  then
                     for ye,lo in pairs(game:GetService("Workspace").NewCustomers:GetDescendants()) do
                         if lo.Name == "Part" and lo:GetAttribute("Type") == "Halloween" and _G.canautofarm == true and game:GetService("Players").LocalPlayer.variables.inMission.Value == false and _G.Autofarm == true then
                                _G.amount= _G.amount+1
                            local TweenService = game:GetService("TweenService")
             local TweenInfoToUse = TweenInfo.new(0, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
             local TweenValue = Instance.new("CFrameValue")
             TweenValue.Value = ya.Parent.Parent:GetPrimaryPartCFrame()
             TweenValue.Changed:Connect(function()
                 ya.Parent.Parent:SetPrimaryPartCFrame(TweenValue.Value)
             end)
             local OnTween = TweenService:Create(TweenValue, TweenInfoToUse, {Value=lo.CFrame+Vector3.new(0,4,0)})
             OnTween:Play()	
              OnTween.Completed:Wait()
              wait(0.05)
             
                   ya.Parent.Parent.PrimaryPart.Anchored = true
                  wait(0.5)
              fireproximityprompt(lo.Client.PromptPart.CustomerPrompt)
              wait(2)
                ya.Parent.Parent.PrimaryPart.Anchored = false
                         elseif game:GetService("Players").LocalPlayer.variables.inMission.Value == true then
     
     for i,v in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
               if v.Name == "Player" and v.Value == game.Players.LocalPlayer then
           local TweenService = game:GetService("TweenService")
   local TweenInfoToUse = TweenInfo.new(0, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
   
   local TweenValue = Instance.new("CFrameValue")
   TweenValue.Value = v.Parent.Parent:GetPrimaryPartCFrame()
               
   TweenValue.Changed:Connect(function()
       v.Parent.Parent:SetPrimaryPartCFrame(TweenValue.Value)
   end)
               
   local OnTween = TweenService:Create(TweenValue, TweenInfoToUse, {Value=v.Parent.Parent.PrimaryPart.CFrame+Vector3.new(0,850,0)})
   OnTween:Play()
    OnTween.Completed:Wait()
        local TweenService = game:GetService("TweenService")
   local TweenInfoToUse = TweenInfo.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
   
   local TweenValue = Instance.new("CFrameValue")
   TweenValue.Value = v.Parent.Parent:GetPrimaryPartCFrame()
               
   TweenValue.Changed:Connect(function()
       v.Parent.Parent:SetPrimaryPartCFrame(TweenValue.Value)
   end)
               
   local OnTween = TweenService:Create(TweenValue, TweenInfoToUse, {Value=game:GetService("Workspace").ParkingMarkers.ParkingMarker.Union.CFrame+Vector3.new(0,850,0)})
   OnTween:Play()
    OnTween.Completed:Wait()
         local TweenService = game:GetService("TweenService")
   local TweenInfoToUse = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
   
   local TweenValue = Instance.new("CFrameValue")
   TweenValue.Value = v.Parent.Parent:GetPrimaryPartCFrame()
               
   TweenValue.Changed:Connect(function()
       v.Parent.Parent:SetPrimaryPartCFrame(TweenValue.Value)
   end)
               
   local OnTween = TweenService:Create(TweenValue, TweenInfoToUse, {Value=game:GetService("Workspace").ParkingMarkers.ParkingMarker.Union.CFrame+Vector3.new(0,3,0)})
   OnTween:Play()
    OnTween.Completed:Wait()
   v.Parent.Parent.PrimaryPart.Anchored = true
    wait(2)
                    game:GetService("ReplicatedStorage").CustomerMissions.CustomerMissionEnd:InvokeServer()
   wait(2)
   v.Parent.Parent.PrimaryPart.Anchored = false
   end
   end
   end
   end
   end
   end
   elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
       game:GetService("ReplicatedStorage").Vehicles.GetNearestSpot:InvokeServer(game:GetService("Players").LocalPlayer.variables.carId.Value)
       wait(0.5)
   game:GetService("ReplicatedStorage").Vehicles.EnterVehicleEvent:InvokeServer()
   wait(0.5)
   end
   end)
    end
    
    
    end
})

CashnPFarmTab:AddToggle({
	Name = "Pumpkins Autofarm (LIMITED TIME))",
	Default = false,
	Callback = function(Value)
		_G.pumpkins = Value
while _G.pumpkins do
   wait()
   pcall(function()
  if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
for ok,ya in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
                if ya.Name == "Player" and ya.Value == game.Players.LocalPlayer  then
for i,v in pairs(game:GetService("Workspace").Pumpkins:GetDescendants()) do
   if v.Name == "TouchInterest" then
   firetouchinterest(ya.Parent.Parent.PrimaryPart,v.Parent,0)
task.wait()
       firetouchinterest(ya.Parent.Parent.PrimaryPart,v.Parent,1)
   end
end
end
end
elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
      game:GetService("ReplicatedStorage").Vehicles.GetNearestSpot:InvokeServer(game:GetService("Players").LocalPlayer.variables.carId.Value)
      wait(0.5)
  game:GetService("ReplicatedStorage").Vehicles.EnterVehicleEvent:InvokeServer()
  wait(0.5)
end
end)
end
	end 
})

CashnPFarmTab:AddToggle({
	Name = "AutoSpin Wheel",
	Default = false,
	Callback = function(Value)
	  _G.autospin = Value
_G.speed = 500 -- this is how fast it should go--
if _G.autospin == true then
for i=1,_G.speed do
    print(i)
spawn(function()
while _G.autospin do
game:GetService("ReplicatedStorage").SpinWheel:InvokeServer()
wait(1)
end
end)
end
end  
	end    
})

local VehiclesTab = Window:MakeTab({
	Name = "Vehicles",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = VehiclesTab:AddSection({
	Name = "Vehicles"
})

VehiclesTab:AddButton({
	Name = "Buy Catrelac Limo (10M)",
	Default = false,
	Callback = function(Value)
       game:GetService("ReplicatedStorage").DataStore.PurchaseVehicle:InvokeServer(56)
	end
})

VehiclesTab:AddTextbox({
	Name = "Buy/Spawn any car.",
	Default = "PUT CAR NAME HERE",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().Car = Value --- Change this to what ever car you want caps sensitive NOT FOR FREE NEED MONEY TO BUY THE CAR
for i,v in pairs(require(game:GetService("ReplicatedStorage").ModuleLists.CarList)) do
 if v.name == Car then
game:GetService("ReplicatedStorage").DataStore.PurchaseVehicle:InvokeServer(v.id)
   end
end
	end	  
})

local Changelogs = Window:MakeTab({
	Name = "Changelogs ⚠️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Changelogs:AddSection({
	Name = "these are the changelogs you nerds"
})
Changelogs:AddParagraph("V1.5 BETA CHANGE LOGS","I skipped like 4 updates but ok anyways uhh added a few things and yea thanks to one of my good friends for sending me the scripts anyway thats it. Btw for the 'Buy/Spawn any car you need to put the exact car name IT IS CAPS SENSITIVE. Also last thing this is the last time we are using this UI! Say goodbye. This loadstring will also be disabled bc yes")
Changelogs:AddParagraph("V1.1 BETA CHANGE LOGS","Added moonsec for protection of the script, this should slow any admins/devs from accessing the script for a while, aka making it stay up for longer")
Changelogs:AddParagraph("V1 BETA CHANGE LOGS","This version was only for developers/testers and wasnt seen out in public. Many developers were put into this project (only 1 to be fair) aka me! 0mzyy#1161. Adding a discord server soon. I was also gonna add premium but the ui library creators just kinda flopped and gave everyone premium fat L ")
OrionLib:Init()
