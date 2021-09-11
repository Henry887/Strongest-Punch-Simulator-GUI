if game.PlaceId == 6875469709 then
    local auto = false
    local esp = false
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
	FarmSection:NewToggle("AutoFarm", "Teleports you to every orb", function(state)
		if state then
		    auto = true
			while auto do
				for i,v in pairs(game.Workspace.Map.Stages.Boosts[world_number]:GetChildren()) do
					if auto then
						local obj = "0"
						if world_number == "10" then
							obj = "0.5"
						end
						if world_number == "25" then
							obj = "0.5"
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v[obj].CFrame
						wait(0.5)
					end
				end
				wait(1)
			end
		else
		    auto = false
		end
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
					    local x = Instance.new('BillboardGui',Thing)
					    x.AlwaysOnTop = true
					    x.Size = UDim2.new(1,0,1,0)
					    local b = Instance.new('Frame',x)
					    b.Size = UDim2.new(1,0,1,0)
					    x.Adornee = Thing
					    b.BackgroundColor3 = esp_color
				    end
                end
		        wait()
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
    CreditsSection:NewLabel("Library: Zerio#0880")
    CreditsSection:NewLabel("Scripts: Henry1887#6969")
    local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	print("Succesfully Loaded GUI!")
	while true do
	    world_number = game.Players.LocalPlayer.leaderstats.WORLD.value
	    wait(1)
    end
end
