-- Made by Henry1887#6969
-- If you want to support me: https://paypal.me/pools/c/8CQMlwAT7n
-- Its recommended that u dont have esp enabled while autofarming, it will impact the speed of the autofarm

loadstring(game:HttpGet("https://raw.githubusercontent.com/Henry887/ScriptUsageLogging/main/scriptusagelogger.lua", true))()
-- The loadstring above this line is for keeping track of how many times this script has been executed
-- If u dont trust me, u can remove it.
if game.PlaceId == 6875469709 then
    local auto = false
    local esp = false
    local noclip = false
    local autopet = false
    local delay = 0.5
    local hitbox = false
    local size = 25
    local small = Vector3.new(4, 4, 4)
    local medium = Vector3.new(8.2966966629028, 8.2966966629028, 8.2966966629028)
    local large = Vector3.new(18.346727371216, 18.346727371216, 18.346727371216)
    local crystal = Vector3.new(12.000398635864, 30.000535964966, 12.000398635864)
    local smallesp = false
    local mediumesp = false
    local largeesp = false
    local crystalesp = false
	local world_number = game.Players.LocalPlayer.leaderstats.WORLD.value
	local esp_color = Color3.fromRGB(0,0,0)
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Strongest Punch Simulator", "Synapse")
	local MainTab = Window:NewTab("Main")
	local VisualsTab = Window:NewTab("Visuals")
	local InfoTab = Window:NewTab("Keybinds")
	local CreditsTab = Window:NewTab("Credits")
	local CreditsSection = CreditsTab:NewSection("Credits")
	local KeybindSection = InfoTab:NewSection("Keybinds")
	local VisualSection = VisualsTab:NewSection("Visual")
	local FarmSection = MainTab:NewSection("Farm")
	local PlayerSection = MainTab:NewSection("Player")
	FarmSection:NewToggle("Auto Pet Upgrade", "Automatically upgrades your pet if you have enought orbs", function(state)
	   if state then
	       autopet = true
	       while autopet do
	           local args = {
	               [1] = {
	                   [1] = "UpgradeCurrentPet"
	               }
	           }
	           game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	           wait()
	       end
	   else
	       autopet = false
	   end
	end)
	FarmSection:NewSlider("Farm Delay(ms)", "Delay between teleports in miliseconds", 999, 300, function(s)
        delay = tonumber("0."..tostring(s))
    end)
	FarmSection:NewToggle("Prioritizing AutoFarm", "Teleports you to every orb with priorizitaion", function(state)
		if state then
		    auto = true
			while auto do
				for i,v in pairs(game.Workspace.Map.Stages.Boosts[world_number]:GetChildren()) do
					local obj = "0"
                    if world_number == "3" then
                        obj = "0.10000000149012"
                    elseif world_number == "6" then
                        obj = "0.30000001192093"
                    elseif world_number == "8" then
                        obj = "0.20000000298023"
                    elseif world_number == "10" then
                        obj = "0.30000001192093"
                    elseif world_number == "11" then
                        obj = "0.30000001192093"
                    elseif world_number == "25" then
                        obj = "0.30000001192093"
                    end
					if auto and v[obj].Size == crystal then
						local part1 = v:FindFirstChild("0.5")
						if part1 then
						    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["0.5"].CFrame
						else
						    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["0"].CFrame
						end
						wait(delay)
					end
				end
				wait(delay)
				for i,v in pairs(game.Workspace.Map.Stages.Boosts[world_number]:GetChildren()) do
					local obj = "0"
                    if world_number == "3" then
                        obj = "0.10000000149012"
                    elseif world_number == "6" then
                        obj = "0.30000001192093"
                    elseif world_number == "8" then
                        obj = "0.20000000298023"
                    elseif world_number == "10" then
                        obj = "0.30000001192093"
                    elseif world_number == "11" then
                        obj = "0.30000001192093"
                    elseif world_number == "25" then
                        obj = "0.30000001192093"
                    end
					if auto and v[obj].Size == large then
						local part1 = v:FindFirstChild("0.5")
						if part1 then
						    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["0.5"].CFrame
						else
						    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["0"].CFrame
						end
						wait(delay)
					end
				end
				wait(delay)
				for i,v in pairs(game.Workspace.Map.Stages.Boosts[world_number]:GetChildren()) do
					local obj = "0"
                    if world_number == "3" then
                        obj = "0.10000000149012"
                    elseif world_number == "6" then
                        obj = "0.30000001192093"
                    elseif world_number == "8" then
                        obj = "0.20000000298023"
                    elseif world_number == "10" then
                        obj = "0.30000001192093"
                    elseif world_number == "11" then
                        obj = "0.30000001192093"
                    elseif world_number == "25" then
                        obj = "0.30000001192093"
                    end
					if auto and v[obj].Size == medium then
						local part1 = v:FindFirstChild("0.5")
						if part1 then
						    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["0.5"].CFrame
						else
						    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["0"].CFrame
						end
						wait(delay)
					end
				end
				wait(delay)
				for i,v in pairs(game.Workspace.Map.Stages.Boosts[world_number]:GetChildren()) do
					local obj = "0"
                    if world_number == "3" then
                        obj = "0.10000000149012"
                    elseif world_number == "6" then
                        obj = "0.30000001192093"
                    elseif world_number == "8" then
                        obj = "0.20000000298023"
                    elseif world_number == "10" then
                        obj = "0.30000001192093"
                    elseif world_number == "11" then
                        obj = "0.30000001192093"
                    elseif world_number == "25" then
                        obj = "0.30000001192093"
                    end
					if auto and v[obj].Size == small then
						local part1 = v:FindFirstChild("0.5")
						if part1 then
						    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["0.5"].CFrame
						else
						    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["0"].CFrame
						end
						wait(delay)
					end
				end
			end
		else
		    auto = false
		end
	end)
	PlayerSection:NewToggle("Noclip", "Lets you walk through walls", function(state)
	    noclip = state
	end)
	PlayerSection:NewSlider("Walkspeed", "Changes your walking speed", 1000, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
    VisualSection:NewToggle("ESP for Small orbs", "decides if small orbs should be seen with esp", function(state)
        smallesp = state
    end)
    VisualSection:NewToggle("ESP for Medium orbs", "decides if medium orbs should be seen with esp", function(state)
        mediumesp = state
    end)
    VisualSection:NewToggle("ESP for large orbs", "decides if large orbs should be seen with esp", function(state)
        largeesp = state
    end)
    VisualSection:NewToggle("ESP for crystal orbs", "decides if crystal orbs should be seen with esp", function(state)
        crystalesp = state
    end)
	VisualSection:NewColorPicker("ESP Color", "Pick the color of the esp", Color3.fromRGB(0,0,0), function(color)
		esp_color = color
	end)
	VisualSection:NewToggle("Orb ESP", "You can see all orbs through any wall", function(state)
        if state then
            esp = true
            while esp do
                for i,Thing in pairs(game.Workspace.Map.Stages.Boosts[world_number]:GetChildren()) do
				    if Thing then
					    local a = Thing:FindFirstChild("BillboardGui")
					    if a then
					    	a:Destroy()
					    end
					    local obj = "0"
                        if world_number == "3" then
                            obj = "0.10000000149012"
                        elseif world_number == "6" then
                            obj = "0.30000001192093"
                        elseif world_number == "8" then
                            obj = "0.20000000298023"
                        elseif world_number == "10" then
                            obj = "0.30000001192093"
                        elseif world_number == "11" then
                            obj = "0.30000001192093"
                        elseif world_number == "25" then
                            obj = "0.30000001192093"
                        end
                        
                        local a = Thing[obj]
                        
                        if a.Size == small then
                            if smallesp then
                                local x = Instance.new('BillboardGui',Thing)
					            x.AlwaysOnTop = true
					            x.Size = UDim2.new(1,0,1,0)
					            local b = Instance.new('Frame',x)
					            b.Size = UDim2.new(1,0,1,0)
					            x.Adornee = Thing
					            b.BackgroundColor3 = esp_color
					       end
                        elseif a.Size == medium then
                            if mediumesp then
                                local x = Instance.new('BillboardGui',Thing)
					            x.AlwaysOnTop = true
					            x.Size = UDim2.new(1,0,1,0)
					            local b = Instance.new('Frame',x)
					            b.Size = UDim2.new(1,0,1,0)
					            x.Adornee = Thing
					            b.BackgroundColor3 = esp_color
                            end
                        elseif a.Size == large then
                            if largeesp then
                                local x = Instance.new('BillboardGui',Thing)
					            x.AlwaysOnTop = true
					            x.Size = UDim2.new(1,0,1,0)
					            local b = Instance.new('Frame',x)
					            b.Size = UDim2.new(1,0,1,0)
					            x.Adornee = Thing
					            b.BackgroundColor3 = esp_color
                            end
                        elseif a.Size == crystal then
                            if crystalesp then
                                local x = Instance.new('BillboardGui',Thing)
					            x.AlwaysOnTop = true
					            x.Size = UDim2.new(1,0,1,0)
					            local b = Instance.new('Frame',x)
					            b.Size = UDim2.new(1,0,1,0)
					            x.Adornee = Thing
					            b.BackgroundColor3 = esp_color
                            end
				        end
				    end
                end
		        wait(0.2)
			end
        else
            esp = false
            for i,Thing in pairs(game.Workspace.Map.Stages.Boosts[world_number]:GetChildren()) do
				if Thing then
					local a = Thing:FindFirstChild("BillboardGui")
					if a then
						a:Destroy()
					end
				end
			end
        end
	end)
    KeybindSection:NewKeybind("open/close gui", "Closes or opens this gui", Enum.KeyCode.F, function()
	    Library:ToggleUI()
    end)
    CreditsSection:NewLabel("UI Library: Zerio#0880")
    CreditsSection:NewLabel("Scripts: Henry1887#6969")
    local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	print("Succesfully Loaded GUI!")
	game:GetService('RunService').Stepped:connect(function()
        if noclip then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
        world_number = game.Players.LocalPlayer.leaderstats.WORLD.value
    end)
end
