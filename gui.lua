-- Made by Henry1887#6969
-- If you want to support me: https://paypal.me/pools/c/8CQMlwAT7n
-- Its recommended that u dont have esp enabled while autofarming, it will impact the speed of the autofarm
-- The obfuscated part of code at the bottom is for keeping track of how many times this script has been executed
-- it is obfuscated because i dont want people spamming my webhook
-- If u dont trust me, u can remove it.
if game.PlaceId == 6875469709 then
    local auto = false
    local esp = false
    local espsize = 1
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
    VisualSection:NewSlider("ESP Size", "changes the size of the esp", 4, 1, function(s)
        espsize = s
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
					            x.Size = UDim2.new(espsize,espsize,espsize,espsize)
					            local b = Instance.new('Frame',x)
					            b.Size = UDim2.new(espsize,espsize,espsize,espsize)
					            x.Adornee = Thing
					            b.BackgroundColor3 = esp_color
					       end
                        elseif a.Size == medium then
                            if mediumesp then
                                local x = Instance.new('BillboardGui',Thing)
					            x.AlwaysOnTop = true
					            x.Size = UDim2.new(espsize,espsize,espsize,espsize)
					            local b = Instance.new('Frame',x)
					            b.Size = UDim2.new(espsize,espsize,espsize,espsize)
					            x.Adornee = Thing
					            b.BackgroundColor3 = esp_color
                            end
                        elseif a.Size == large then
                            if largeesp then
                                local x = Instance.new('BillboardGui',Thing)
					            x.AlwaysOnTop = true
					            x.Size = UDim2.new(espsize,espsize,espsize,espsize)
					            local b = Instance.new('Frame',x)
					            b.Size = UDim2.new(espsize,espsize,espsize,espsize)
					            x.Adornee = Thing
					            b.BackgroundColor3 = esp_color
                            end
                        elseif a.Size == crystal then
                            if crystalesp then
                                local x = Instance.new('BillboardGui',Thing)
					            x.AlwaysOnTop = true
					            x.Size = UDim2.new(espsize,espsize,espsize,espsize)
					            local b = Instance.new('Frame',x)
					            b.Size = UDim2.new(espsize,espsize,espsize,espsize)
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

_7y75W3IQXm4Xy4TA, Protected_by_MoonSecV2, Discord = 'discord.gg/gQEH2uZxUk'


,nil,nil;(function() _msec=(function(_,_l,__)local _ll__l=_l[((0xe8-134)+-#"Are orphans parented to nil???")];local __l__l=__[_[(-90+((194586/0xf6)+-#[[_Ben is godly]]))]][_[((81002/0x65)+-#'Nice constant dumper you got there')]];local __ll=(-0x30+52)/((0xb8+(-3599/0x3b))-121)local _lll=((0xfc-(45816/0xf9))-66)-(-#'You know math? sqrt(-2) * sqrt(-32) = ??'+(-0x33+92))local ___lll=__[_[(0x1af-269)]][_[(-#{'}',175,(function()return{','}end)(),'}',",";'}';'nil'}+265)]];local _ll__=(118/(0x130-(((405+-0x71)+-#[[Federal spilled out the milk]])+-0x4e)))+((0x87-118)+-#'psu anti dump !')local __l_ll=__[_[(88434/0x99)]][_[(-#'i hate federal'+(105530/0x7a))]]local __l=(-#'troll the teibal'+(0x34-34))-((1950/(171-0x79))-38)local _l_ll=(-#'piss of'+((-#"Logue Rineage"+(354-((0x13f92/162)-0x10d)))-0x5f))local ____=(-47+((14576-(14779-0x1d1d))/145))local _ll_=(((0x1bd-(515-(0xdac0/200)))-149)+-#[[why do guys only want bitchy bimbos who walk all over them]])local _l__l=(-106+(((-#{(function()return#{('lFMfLp'):find("\77")}>0 and 1 or 0 end);'}';'}',(function()return{','}end)();(function()return{','}end)()}+363)-0xf2)+-#"sup v 2"))local __l_=(-#[[NOT Giving owner role to anyone who writes .gg/moonsec on their feet]]+(((((1560-0x332)-0x180)-0xf1)+-#'powered by ROBLOX Corporation')+-0x11))local ___l=(6+-#{(function()return{','}end)(),'nil',(function()return{','}end)()})local _llll=((0xfa-(0x1bc2/(95-(61+-#{'}','}',30,(function()return{','}end)()}))))+-#"If you see this string you are going to be sued by memcorrupt")local _l__=((-0x5d+(-127+(186+-#{(function()return{','}end)();",",'}';(function()return{','}end)();'}';(function()return{','}end)(),(function()return#{('BoPLhl'):find("\80")}>0 and 1 or 0 end)})))+43)local __lll=(((-#[[FEDERAL IS A FUCKING SCAMMER]]+((-#{'nil';",";81;{};(function()return#{('oMmHof'):find("\109")}>0 and 1 or 0 end),{},(function()return#{('oMmHof'):find("\109")}>0 and 1 or 0 end)}+404)-226))-0x66)+-#"<@!847154787934011462> shut the fuck up")local __l_l=(-#[[piss of]]+((0x79d1/(-#[[Moonsec v6 coming out in 1 day]]+((-#[[deobfuscation in progress]]+(62040/0x6e))-0x116)))+-126))local _l_l=(6+-#{{},(function()return#{('MoOkHk'):find("\79")}>0 and 1 or 0 end);{},156})local ___ll=((((-84+-0x47)+38)+0x181)/0x86)local _lllll=(-#{'}','nil';'}','nil'}+8)local _lll_=((-#{(function()return{','}end)(),(function()return#{('lfompH'):find("\111")}>0 and 1 or 0 end),'nil'}+47)-40)local __ll_=(0x57-(90+-#{'}',(function()return{','}end)();45,'nil',1;1,198}))local __l__=((((0x1c-(-#'im gonna shit yourself'+(191-0x74)))-0x13)+-#[[free moonsec cracked download 2022!!]])+0x54)local _l___=(118+(-0x7f+(-#{66,{},(function()return{','}end)()}+16)))local ___l_=(-107+(-#'Perth sent his vagina to a 9 year old real!!!'+(15600/(-#{",";'nil',",";1;(function()return#{('MmMFbO'):find("\77")}>0 and 1 or 0 end)}+105))))local _l_l_l=_[(0x97cc/29)];local __ll_l=__[_[(-#"Slowmode is enabled."+(486-0x130))]][_[(447+-#{{};'nil';19})]];local _lll_l=__[(function(_)return type(_):sub(1,1)..'\101\116'end)('OPKOFohM')..'\109\101'..('\116\97'or'PLFPmbfl').._[(1269-0x2b3)]];local _ll_l=__[_[(618+-0x28)]][_[(0x830-1097)]];local __llll=(-#"<@!812486162110873641>  haha lol i pinged you"+(10904/0xe8))-(-16+(0x5d6/((400-0x107)+-#'make sure armando.rar isnt in ur fucking config folder')))local _____=((0x76+((-#"finally, the most perfect ship in history... teefus x sirhurt"+(202-0x86))+-0x6c))+-#'psu anti dump !')-(0x78-118)local _l__ll=__[_[(39204/0xf2)]][_[(-#"Shouldve invented fbi bot"+(-0x33+455))]];local _l=function(_,_l)return _.._l end local _l_lll=((-91+0xcc)+-#'<@761654159095103499> <@761654159095103499> <@761654159095103499> <@761654159095103499> <@761654159095103499>')*(((((-#"im gonna shit yourself"+(40+-0x27))+8773)+-#[[win+L = solution]])/0x5b)+-#[[me receiving a pipebomb in my mailbox after submitting a meme string with special characters]])local ____ll=__[_[(1213+((-0x70+40)+-#"clipped"))]];local _l_=(0x12a/149)*(-#[[cock and ball]]+(((-#"I love moonsec (give me free moonsex premium now daddy fed pleeaaase I said the thing)"+(-71+0x380))-0x1b0)-0xa6))local _ll_ll=(0x848-1096)*(0x6e/(0x95+((-0x5-28)+-#'finally, the most perfect ship in history... teefus x sirhurt')))local ___l_l=(0x99-(((-#'<@761654159095103499> <@761654159095103499> <@761654159095103499> <@761654159095103499> <@761654159095103499>'+(0x141a/62))+286)-0x9f))local ____l=(-#[[FEDERAL IS A FUCKING SCAMMER]]+(((366-((597-0x163)+-#'sponsored by cbt'))+-#"SoonMec")-103))*(65+-0x3f)local _l_l_=__[_[((0x2dac2/171)+-#'I am albanian obfuscator I cannot hide this script please dont view it')]]or __[_[(0x2a2+-96)]][_[((0x2dac2/171)+-#'I am albanian obfuscator I cannot hide this script please dont view it')]];local ___=(576-(-34+(-#"Penis Sucking Utilities source leak lol!!"+(454+-0x3b))))local _=__[_[(-#{(function()return{','}end)(),{};62}+1291)]];local __l_ll=(function(_l_)local ___,__=1,0x10 local _l={j={},v={}}local _ll=-__l local _=__+_lll while true do _l[_l_:sub(_,(function()_=___+_ return _-_lll end)())]=(function()_ll=_ll+__l return _ll end)()if _ll==(_l_lll-__l)then _ll=""__=__llll break end end local _ll=#_l_ while _<_ll+_lll do _l.v[__]=_l_:sub(_,(function()_=___+_ return _-_lll end)())__=__+__l if __%__ll==__llll then __=_____ _ll_l(_l.j,(_l__ll((_l[_l.v[_____]]*_l_lll)+_l[_l.v[__l]])))end end return __l_ll(_l.j)end)("..:::MoonSec::..bBfFlLkKoOpPhHmMHphlppOfKpkLlpFfBpbfMfHfPppfKhKkLplffpKlKFLkfMLHOpofkpLfFpffKpFfkphkppOfKphLPfOFohOfMkHfPppfHHHmHfOfOKLHLmFPFmflMFHLflLoFpffbpkLlmFlBFbbmBMMlpFfBpbfmpHfppmBkbKLLplffpoLkMllMoPfOpofkpKlFpffbpblBkhfpHOfKmkflpFfBpfompHLPppLopKFLplokhBfMHmfhMPfOPofkPLfFmLobpMfHphKppOFKpkkobFfBpbfMfHfPPpfOhpmLplLfpBkMpmfhpPfhbofkHLfFHffbPMfHpmLppOLKpkllpFfBpBlfoHfPHpfObKfLplfFhFlMpmkhpPpOpofkpklFpffbMMfmbhfppOfKpkflpFoBpbfmpHfPpPlopKfkBlfFbBfMpmfhmPfOpoKkpKbFpfFbpMffFhfPFOfKmkflpFffhfBmpHhPppKopKfLpkffpBfblmfHlPfOHofopLfFpfHbpMfHphOppOfKpkfLKFfffbfmpHfPppfopobLplpfpBfMpmfhpPfpLofKoLfFhfffpMfHphHppOHKpkFlpFfBpbfMLHfPhpfohKfLplffpBHMpmHhpPLOppfkpLflLffBLMfHhhfppOfKpkhlpFlBpblmpHfPppfomKfkFlfFlBfMpmfhpPPOpoLkpLlFplfbpMfHHhfPFOfKhkflmlBBpbKmpmbPppFopolOklffMBfMmmfhpPfOppOkpLKFpfFbpMkHphfhHOfKmkflhFfBpbfmpmMPppfopKFLplffpBlMPmfhpPfOpofkpLfFpffbpMfHphOppOfKpkfLHFfBpbfmPHfPppfopKfLplffpBfMpmfhpPfOpofkpLfFpffbpMfHphfppOfKpkLlpFfBpbfmpHfPppfopKfLplffpBfMpmfhpPlOpofkpLfFpffbpMfHPhfppOfKhkflpFflobKmpHfPpBfmHHFhkpmbHBfMpmfhpPfOpofkpkMFpffbpblBohfphOfKhkflpFffhlbmpHLPpplopKfLpLlkkBfMmmfhPPfOpofKbOKFpfKbpMfHphFppOkKpkfoKFfBpbfmhHfPppfoppMLplffpBfMpmfhpPfHKofkpLfFHffbpMfHpMMppOfKpkFlpFfBpbfflHfPmpfohKfLPlfFbLHMpmfhphPOpoFkpLFFpfklbMfHphfhFOfKPkfLblpBpbfmpmbPppFopKFLplkkbBfMpmfHoPfOPofkmooFpffbpbPHphFppOoOfkflPFffPbfmPHfPppfompoLplffpfFMpmFhpPkHbofkpLfLFffbPMfHpbOppOkKpkllpFLBpbfFBHfPMpfoHKfLhlfFbLHMpmkhphPOpoFkpLKFpfklbMfHphfhFOfKPkflpKOBpbkmpHlPppLopKfpBlffMBfMHmfhhPfpbOpkpLkFpFhbpMFHphKppOkPbkflpFfFlbfmPHfPpHkopKkLplffpBfMpmfHbPfOmofkPLfFpffbpBLHphkppOlKpkflpFfFKbfmpHfPPpfopKfHBlffpBfFkmHhpPfOpmLHfPKOHoHkHLFlkfmbMblhlkHlpFfBpkmlMFFBmbKMhmLhmpFOmoLFkmphpPfOpMfhfhBKmKlkhFPlbkmpmOfKpkfOkOKobKkMhHPPppfopHLhfpFOhKFLHLkfMflmloLkpLfFpKKKhLmKohKppOfKpPlPFOOofKkOkHkPppfopPLPPPLOfPmbBmfhpPfmfMkHmhfoBoKKmFhmkhfppOfhHhmhfofoKlHlmfPfmBlmFhLoolkfpBfMpfpfMBFMmfmKkLfFpffLFkbLbFBBLMKhHhKPhpoKMKlkhHhPppfopPhhHPBOoLkLMlLFOBkMMPmkMLfFpffLKkBlofKfFhHKpkflpFfBpofFfBfmopoopKfLpFpkBHBKMoLbbfkOHofkpLfpHOPKoLombhfppOfplpLBfPBbfoPLbHKPppfophKOmpPOKllpkmphpPfOphpHmhkppKfKOkLlmhkPfOfKpkfohpBKmKPFBlPfhBBppKmLplffpKpkmLkFpBBbhmKHPhKOMOLKmLomBhfppOfhphmpPpPKMKlLHlkhfpfopKfpfPKOKKFkoLBFFBkLlookpLfFpkFKKkBlMFbBmKkoKkflpFfKPKfLFbBFBbKmhHphOPBOLoLfOKfHOPfOpofhmhLpblfKFkLMpfpbPblmKhmpMpLoHLpMkHfPppfhPHkPmoKpfokkhlFbHBFbHmpBkLhFpffbpFhfHBBMoHKmohLPOOkKMPhMkHfPppfhhpMkLffhpoplKPKOLKBBMhPHmLhFpffbpFOFMFkMHMKmhHoPFOLKMPhmHHfPppfhPhfpFhlfmBfMpmfBfBKMPmkkmLkFpffbpLOFPfMbMMoKMkflpFfkbKBLhFLBMFfoHKfLplfkMkLlpFpHfPfOpofphhBOmOPLBkPlhFBloOkKpkflpoBbhOhfOkfhBpfopKfhfPkOmofFlBBMOPkpfofkpLfoHoKKmlLFHFBBhMKFlkPlpFfBpLOlPFmfLBLMpHKPMpkPpBOMpmfhpBLbOMbHmPKpoOkOpbKHphfppMkmFHLpHpBohkkBoFOfBHBMBhFOMopLhoKLlLpBMBHphoPkpLfFpOOKOkllLFLBpMFHHhKFhFLBpbfmplbBMBOHlKoLplffpoLkflFfmfBBBPbKPLfFpffLhLKlpfmBFMLHPHkpMOkkHKkLOllBPbOmMhpkBlffpBfLmlPFHBLbOMlhmOhlpffbpMfFpfHBBMBHfPbOfoOkflhfMHlMFmbhbpFmplhfpBfMplBfOfLMMmLHMhlOMoKKPfbmFhfppOfmBhFPKOKoHkKLolLBMBkObKfLplfmmoBPPoofLfFLloKkpLfFpKLkHkBlhfKBmpFKpkflpOBLBKPfBbKBBHLHFhFPfpMLmkpKFBkBmMFKbokkpLfFpoOkPLMFMmfhfOfKpkfPpOFoHKklMFlfFBbPoHLhOpMLOolLPLOMOfKmLPLpBOoplkKmmMPHphfppHlmOhkhFKooOKllHFKKlpkopKfLpOboPKMLMHlhMPfOpofpHPpOMOLKmBfmLhfppOfhkhKpPOkKMKllhlBBPBlmmfhLmlffpBflflKfPBkHkoOkpLfFpooKhkBlKBlMBHlkhkPlpFfBpLfLkFFFFbKMhPOhMpPBhBpMpmfhpbLMHMlhMhboBOKKFPpmLhfppOfPPhkPKOPooLllMFMfOBkmMmkkFlffpBfFHlpfPflMPmLHmPKphLbBLMfHphfMkbBHHhFPkofokkFkFFKfhBkOlKfLplfKBKKkmFLfMflBbmPhHPKbffLbpMfHpbmbMMOBokklpFfBplhLHlBfokpohKfLplfOOoLhfmkhpPfOpHfhPhlpmmpBbMfHphfMhMKmKHBPmOKKfbOmpHfPpBlmMmFhMpKOHokmhmhhpPfOphHHFPLpLKfKkLFLFfKBhbkOlkflpFfFOfMHkOkMBmlpLlbmhphLOMopLbMBkPpkmBOKLKkBlHBKkfPHHFofhpBKpkflpKFKmkkfMloBMBbMmPpPPPbomKmLMLlBlPOOpofkpOLpFOkKFkhFMFbfhpkKpkflpoLKMKkFpllfFbMmPmlHFOfoPolkmfLBbflMPmMhMhklkffbpMffmFlBFMOmBhKPhKKObkKLolkKlpHopKfLpomOOKLLPlmBpBmMPMPhMhlkofObpMfHpbpbMMFHmhKPhpLBmbhmpHfPpMLMMmlhbpFoHKKlBLKFFHfOMofkpLfKHomKOkOloLfPFOfKpkfpBpBohkHLHlfBPbLmMKkLmlffpBfkplFFhfkohohkpLfFpoPKHLmFHfmBObLmMHlpMFkfLbfmpHfMHbPMmHPHlpKOooLkflPFpHfBfofkpLfpBLkMMplLbhbLmbKmLOFlkHMOllbHPlmfhmBooMFhmokfoOKooBMhLKlflhHKffFooFpmFopFkHhoLfpHpKpfoHLKKffhHKlffhlKfBFHPkhfbmPOlBMmooBBkHLLKFhhPLpBpPmLbMMhlKKBBmfLlbmpoLpbOhfLPffoMLOBPPPfMMHOFLmBhpBlbblpMkFbfpBlLmBoBLhHPokfOMkOpFLMPKPfkHpomBlPFoFlBhPlhfMllmohpPfOpMkLmlhBHKKKBOmmFhfppOfMBhFPkOHoHKflMFKBmFMopKfLplffpBfLBffKkPLOpofkpPFppoPKmMoHphfpplKBlmbpLhKlHlhmmHfPppfhhmBPmPPOmBOMpmfhpMLbOMlhMOOpMoPOpMpHphfppHLHPhmPkOlKPkLLLKbPMpfopKfpfPBOoKKKFfhHoPfOpofHBPFpKoKKHLKloFLbMhBmfHkPmpfOhbHmpHfPpmpMmmkhpOLoMolKblPfHBKpPofkpLfFpffbpbfBpkmPbOfKpkfOKpBookHlMlPlpPbopKfLpOboMoOkmLBFofLbOmoHmOhoHKBLooMHphfppOfKpmfOOKfHlbPmpHfPpmlMOHkHFooOOolLHlKffPkOpofkphkpFoMkMObmfhfppOfhFHbPHpkKPKblHFKBfpPopKfLpoMoPKOkolPFmfKMmmKmhLPFpffbpkOFMflBfbBmOhHOFKkobBfmpHfPpmpMMHMPPPbOOKPLmFlFOfBbmHfhPhlpmhbBbMfHphfffbfHHhFPkOmPobkmpHfPpbOmPHMPMKmFfBfMpmffhBPbmPbhhhppOOlKmMOHphfppmoHMhLPmpBohFLLbHoPppfopPMPMPkOfoBLmklhHPfOpofPBPKpmLbBlMfHphfMbMPmhhKOHOKohKolMlloMpfopKfLplffpLMFploHbPfOpofPpPmOPOPkMklBMhfppOfKhOKlpFfBpbFmpHfPpPlOLKfLplfLhBfMpmfhpPfOpofkpLfFpffbpMfHphfpPOfKpkflpFffhbfmpHFPpphopKfLpLlfpBfMPmfbbPfOpofObLfFpfFbpMPHphFppPHKpkkobFfBpbfMFHfPPpfopoMLplffpBFMpmfhpPlhMofkPLfFpffbpMfmhHfppOFKpkLlpFfBpBlfkHfPPpfOPKfLplflpLkMpmFhpPFOphhkpLoKhffbPMfmmhfpPOfKPkflmkoBpbfmpmkPppFopolOklffPBfllmfhpPfpbOKkpLFFpFLbpMFHphfppOkPbkflpFffHbfmPHfPmHoopKfLpLkfpBFMpMlbkPfOPofobLfFpffBhfmHphlppOLKpkflpllFobfmHHfBFpfopKfkhlffpBkMpBkhpPfOpOlkpLfFMffKfMfHphfppOfKpkllpFKBpblmpHfPppfoHKfLplffPBfbhmfhpPkOpMfkpLfFplfbpMfHmhfpmOfOBkfkpFfBpbkmpHkPpMFopOfLplffmBfMmmfblPfphofkpLKFpfLbpMfHpHlmoOfobkfOkFfBpbfMhbFPppOopofLplffpflMpmfHfPfBbofkpLfFpffbpMKHphpppOlKpkflpFfBmbfmmHfPMpfOpKfLplLfpFhMpmkhpPfOpofkmLfFPffbpMfHphfppOKKpkflpFkBpBfmpHfPMpfObKfLhlfFhBfMpmohpPLOpofkpklFpffBBMfbbhfppOfohpblpFpBpBlmpHfPpPlhpKfkFlfokBfMpmfhpPfOpookpLPFpflbpbfHphfpMOfmHkfLbFfBpbfmpHoPppfopKFLpLlfpBfbBmfhHPfOpofKhLfFpfpbpBbHphfppplKpkfLFFfKlbfmpHfhhpfopKhLpLBfpBfMpmfhpPfpBofKlLfFhffBhMfHphpppOLKpkflpllLobfMFHfmPpfopKfkhoofpBhMplbhpPfOpOlkpLflLffkMMfHphfppOfKpkplpFHBpblmpHfPppfObKfkBlfFfBfbpmfhpPKOpHlkpLoFpFlbpMfmbhfBpOfKpkfkpFfBpbompHoPphBopolLplfFfBfLmmfhpPfOpofkpLoFpfpbpMlHpmfppOfobkfLbFfFKbfmpBPPpppopKLLplffpBfbFmfHbPfpfofkhLflpfMbpMKHpfBppOoKpkfOlFfBmbfmhHfPhpfopoMLplffpBFMpmfhp");local _ll_l=(-#{'nil',20;(function()return#{('OfFmmo'):find("\70")}>0 and 1 or 0 end)}+27)local _ll=38 local __=__l;local _={}_={[(40/0x28)]=function()local _l,_lll,_,__l=___lll(__l_ll,__,__+_ll__);__=__+____l;_ll=(_ll+(_ll_l*____l))%___;return(((__l+_ll-(_ll_l)+_l_*(____l*__ll))%_l_)*((__ll*_ll_ll)^__ll))+(((_+_ll-(_ll_l*__ll)+_l_*(__ll^_ll__))%___)*(_l_*___))+(((_lll+_ll-(_ll_l*_ll__)+_ll_ll)%___)*_l_)+((_l+_ll-(_ll_l*____l)+_ll_ll)%___);end,[(-0x7a+124)]=function(_,_,_)local _=___lll(__l_ll,__,__);__=__+_lll;_ll=(_ll+(_ll_l))%___;return((_+_ll-(_ll_l)+_ll_ll)%_l_);end,[((0x73cd/245)+-118)]=function()local _,_l=___lll(__l_ll,__,__+__ll);_ll=(_ll+(_ll_l*__ll))%___;__=__+__ll;return(((_l+_ll-(_ll_l)+_l_*(__ll*____l))%_l_)*___)+((_+_ll-(_ll_l*__ll)+___*(__ll^_ll__))%_l_);end,[(0x20-28)]=function(_l,_,__)if __ then local _=(_l/__ll^(_-__l))%__ll^((__-_lll)-(_-__l)+_lll);return _-_%__l;else local _=__ll^(_-_lll);return(_l%(_+_)>=_)and __l or _____;end;end,[((0x1667/155)+-#'perth vs memcorrupt boxing match')]=function()local _l=_[(0x13+-18)]();local __=_[(0xb3/179)]();local _l_l=__l;local _ll=(_[(0x39c/((-48+0x13e)+-#'There is no such thing as a coincidence'))](__,_lll,_l_lll+____l)*(__ll^(_l_lll*__ll)))+_l;local _l=_[((92-0x3c)+-#[[Yeah this is getting cringe-]])](__,21,31);local _=((-__l)^_[(0xf8/62)](__,32));if(_l==_____)then if(_ll==__llll)then return _*_____;else _l=_lll;_l_l=__llll;end;elseif(_l==(_l_*(__ll^_ll__))-_lll)then return(_ll==_____)and(_*(_lll/__llll))or(_*(_____/__llll));end;return __l__l(_,_l-((___*(____l))-__l))*(_l_l+(_ll/(__ll^___l_l)));end,[(-67+0x49)]=function(_l,__ll,__ll)local __ll;if(not _l)then _l=_[(-#'chrome sex me'+(0x78-106))]();if(_l==_____)then return'';end;end;__ll=__ll_l(__l_ll,__,__+_l-__l);__=__+_l;local _=''for _l=_lll,#__ll do _=_l_l_l(_,_l__ll((___lll(__ll_l(__ll,_l,_l))+_ll)%___))_ll=(_ll+_ll_l)%_l_ end return _;end}local function __l_ll(...)return{...},____ll('#',...)end local function _ll_ll()local _ll_={};local _ll={};local _l={};local _l__={_ll_,_ll,nil,_l};local __={}local _llll=(-0x45+(22184/0xec))local _l={[(-#"loadstring()"+(146-(0x138-180)))]=(function(_l)return not(#_l==_[((119-0x55)+-#'how many meme strings do we have')]())end),[(0x50-(-67+0x90))]=(function(_l)return _[(0xc3/39)]()end),[(0x49+-69)]=(function(_l)return _[(((-103+0x13)+103)+-#'cock and ball')]()end),[(-0x30+49)]=(function(_l)local __=_[((9225/0x7b)+-0x45)]()local _=''local _l=1 for _ll=1,#__ do _l=(_l+_llll)%___ _=_l_l_l(_,_l__ll((___lll(__:sub(_ll,_ll))+_l)%_l_))end return _ end)};_l__[3]=_[(((0x26a-342)+-#[[This file has been enchanted with uncrackable V, fuck the fuck off]])/105)]();for _=_lll,_[(-#'Broo u/thatHEXdude slapped this server'+(158-0x77))]()do _ll[_-_lll]=_ll_ll();end;local _ll=_[(0x40+-63)]()for _ll=1,_ll do local _=_[(0xba/93)]();local __l;local _=_l[_%(59+-0x2d)];__[_ll]=_ and _({});end;for ___=1,_[(-0x34+53)]()do local _l=_[((-53+(0x110-163))+-#"perth is an illusion by perth to hide perth from perth")]();if(_[(54+-0x32)](_l,__l,_lll)==__llll)then local _l_=_[(0x23+-31)](_l,__ll,_ll__);local _ll=_[(0x35+-49)](_l,____l,__ll+____l);local _l={_[((116-(-#[[i love perth]]+(0xc5+-90)))+-#[[a table b equals c]])](),_[(((0x514/4)+-#[[finally, the most perfect ship in history... teefus x sirhurt]])/88)](),nil,nil};local ___l={[(-35+0x23)]=function()_l[_l_ll]=_[(-#'You have deobuscated the code well done'+((-125+0x2177)/201))]();_l[_lll_]=_[((0x1a8/4)-103)]();end,[(-0x41+66)]=function()_l[_l_ll]=_[(30-0x1d)]();end,[(0x1b-25)]=function()_l[__l_]=_[((-0x67+151)+-#'dang nice obfuskator _drags ball across screen_')]()-(__ll^_l_lll)end,[((208/0x1a)+-#[[penis]])]=function()_l[___l]=_[(0xf6/246)]()-(__ll^_l_lll)_l[_l___]=_[(-0x4d+80)]();end};___l[_l_]();if(_[((0x21+-22)+-#'hi skid')](_ll,_lll,__l)==_lll)then _l[_l_l]=__[_l[__l_l]]end if(_[(105-0x65)](_ll,__ll,__ll)==__l)then _l[_l__l]=__[_l[____]]end if(_[(0x44-64)](_ll,_ll__,_ll__)==_lll)then _l[___l_]=__[_l[_l___]]end _ll_[___]=_l;end end;return _l__;end;local function _____(_,____l,_ll_l)local __=_[__ll];local _ll=_[_ll__];local ___=_[__l];return(function(...)local _ll__={};local ___lll={...};local __llll=__;local _l_lll=____ll('#',...)-_lll;local _=__l_ll local _=__l _*=-1 local _=_;local _ll_ll={};local __={};local _l_=_ll;local ___=___;local _ll=__l;for _=0,_l_lll do if(_>=_l_)then _ll_ll[_-_l_]=___lll[_+_lll];else __[_]=___lll[_+__l];end;end;local _=_l_lll-_l_+__l local _;local _l_;while true do _=___[_ll];_l_=_[((-#'How did adam and eve populate?'+(-0x11+-53))+101)];_l=(5716007)while _l_<=(6734/0xb6)do _l-= _l _l=(5053077)while _l_<=(-0x49+(206-0x73))do _l-= _l _l=(6272646)while _l_<=(-#'Cannnn Iiiiiiiii put my ballzzzzzz in your jawwwwwww?'+(-60+0x79))do _l-= _l _l=(2073225)while(0x1da/158)>=_l_ do _l-= _l _l=(5709576)while _l_<=(0x83/131)do _l-= _l _l=(2605140)while(123-0x7b)<_l_ do _l-= _l local _ll=_[__lll];local _l=__[_[_l__l]];__[_ll+1]=_l;__[_ll]=_l[_[___l_]];break end while(_l)/((0x549+(-0x1056/34)))==2118 do __[_[___ll]]={};break end;break;end while 1444==(_l)/((7979-0xfb9))do _l=(7344504)while _l_>(0x1e4/242)do _l-= _l if(__[_[__l_l]]~=__[_[_l___]])then _ll=_ll+_lll;else _ll=_[_l__l];end;break end while 2458==(_l)/(((231077/0x4d)+-#'Gav is shitty'))do local _=_[_l__]__[_]=__[_](__[_+_lll])break end;break;end break;end while 1925==(_l)/((2241-0x48c))do _l=(1697577)while(0x433/((-0x43+347)+-#[[Yes bro I am way more intelligent because I know what __index is.]]))>=_l_ do _l-= _l _l=(2866799)while _l_>(0x4f-75)do _l-= _l _ll_l[_[____]]=__[_[_l__]];break end while(_l)/(((-0x33+1455)+-#'guys i am epic hackerman i just converted a script to string.byte'))==2141 do __[_[_l_l]]=__[_[___l]][__[_[_l___]]];break end;break;end while 2471==(_l)/((-0x2f+734))do _l=(4368000)while _l_<=(1326/0xdd)do _l-= _l __[_[_l_l]]=(_[_ll_]~=0);break;end while(_l)/(((-108+0x6f9)+-#[[Logue Rineage]]))==2625 do _l=(5014016)while _l_>(98-0x5b)do _l-= _l local _l_=__llll[_[____]];local __l;local _l={};__l=_lll_l({},{__index=function(__,_)local _=_l[_];return _[1][_[2]];end,__newindex=function(_ll,_,__)local _=_l[_]_[1][_[2]]=__;end;});for __l=1,_[_l___]do _ll=_ll+_lll;local _=___[_ll];if _[(-#[[LOL ur gonna fail probs]]+(2784/0x74))]==61 then _l[__l-1]={__,_[_l__l]};else _l[__l-1]={____l,_[_l_ll]};end;_ll__[#_ll__+1]=_l;end;__[_[___ll]]=_____(_l_,__l,_ll_l);break end while(_l)/((332962/0x77))==1792 do local _ll=_[_ll_];local _l=__[_ll]for _=_ll+1,_[_l___]do _l=_l..__[_];end;__[_[___ll]]=_l;break end;break;end break;end break;end break;end while(_l)/((0xd50+-117))==1906 do _l=(3096180)while _l_<=((3761-0x795)/0x8c)do _l-= _l _l=(459935)while _l_<=(66+-0x38)do _l-= _l _l=(3319538)while(0x7e/14)<_l_ do _l-= _l __[_[_l__]]=_ll_l[_[_ll_]];break end while(_l)/(((-0x4a+-22)+0x5ea))==2341 do local _l=_[__lll]__[_l]=__[_l](_l_l_(__,_l+__l,_[_l__l]))break end;break;end while 773==(_l)/((0xb9f/5))do _l=(2016117)while((3648/0x40)+-#'FREE LUA OBFUSCATOR DOWNLOAD REAL NO FAKE 2024')>=_l_ do _l-= _l _ll_l[_[__l_]]=__[_[_l__]];_ll=_ll+__l;_=___[_ll];__[_[__l_l]]={};_ll=_ll+__l;_=___[_ll];__[_[_l_l]]={};_ll=_ll+__l;_=___[_ll];_ll_l[_[_l__l]]=__[_[_llll]];_ll=_ll+__l;_=___[_ll];__[_[_l_l]]=_ll_l[_[__l_]];_ll=_ll+__l;_=___[_ll];if(__[_[_l_l]]~=_[___l_])then _ll=_ll+_lll;else _ll=_[_l_ll];end;break;end while(_l)/(((-#'moonsec source: if code then obfuscate end'+(-9-0x9))+0x99f))==839 do _l=(361088)while(80-0x44)<_l_ do _l-= _l __[_[_l_l]][_[_l_ll]]=__[_[_lll_]];break end while 3472==(_l)/((0x12c-196))do __[_[_llll]]=(_[___l]~=0);break end;break;end break;end break;end while 2004==(_l)/((-#"moonsec pls add fivem choice"+(-112+0x695)))do _l=(7105098)while _l_<=(-44+0x3b)do _l-= _l _l=(11078360)while(97-0x53)<_l_ do _l-= _l local _l=_[_l__];local _l_=__[_l+2];local __l=__[_l]+_l_;__[_l]=__l;if(_l_>0)then if(__l<=__[_l+1])then _ll=_[_l_ll];__[_l+3]=__l;end elseif(__l>=__[_l+1])then _ll=_[____];__[_l+3]=__l;end break end while(_l)/((356940/0x6c))==3352 do if __[_[_l_l]]then _ll=_ll+__l;else _ll=_[_ll_];end;break end;break;end while 3718==(_l)/((366912/0xc0))do _l=(4925255)while _l_<=((-#[[do you ever shut the fuck up perth]]+(4060+-0x6a))/0xf5)do _l-= _l _ll_l[_[_l__l]]=__[_[__lll]];break;end while 1685==(_l)/((0xbad+-66))do _l=(734216)while(-#"This file has been enchanted with uncrackable V, fuck the fuck off"+(0x77+-36))<_l_ do _l-= _l __[_[_l__]]=#__[_[_l_ll]];break end while 3746==(_l)/((419-0xdf))do __[_[_l_l]]=__[_[___l]]-__[_[_lllll]];break end;break;end break;end break;end break;end break;end while(_l)/((-0x55+2218))==2369 do _l=(749364)while(0x7f-100)>=_l_ do _l-= _l _l=(914987)while _l_<=(-34+0x38)do _l-= _l _l=(4491960)while _l_<=(135-0x73)do _l-= _l _l=(4733712)while((11328/0xc0)+-#'You know math? sqrt(-2) * sqrt(-32) = ??')<_l_ do _l-= _l do return end;break end while(_l)/((0x1605-2859))==1704 do __[_[___ll]]=____l[_[___l]];_ll=_ll+__l;_=___[_ll];__[_[__l_l]]=#__[_[____]];_ll=_ll+__l;_=___[_ll];____l[_[___l]]=__[_[_l_l]];_ll=_ll+__l;_=___[_ll];__[_[___ll]]=____l[_[____]];_ll=_ll+__l;_=___[_ll];__[_[___ll]]=#__[_[_l_ll]];_ll=_ll+__l;_=___[_ll];____l[_[_ll_]]=__[_[_l_l]];_ll=_ll+__l;_=___[_ll];do return end;break end;break;end while 1826==(_l)/((0x134c-2480))do _l=(1708740)while _l_>(-#'im gay?'+(0x658/58))do _l-= _l local _l=_[__lll];local __l=__[_l]local _l_=__[_l+2];if(_l_>0)then if(__l>__[_l+1])then _ll=_[_ll_];else __[_l+3]=__l;end elseif(__l<__[_l+1])then _ll=_[__l_];else __[_l+3]=__l;end break end while(_l)/((-#'chrome sex me'+(43475/0x19)))==990 do if __[_[_l__]]then _ll=_ll+__l;else _ll=_[___l];end;break end;break;end break;end while 2389==(_l)/((0x1e9+-106))do _l=(12622404)while _l_<=(2328/0x61)do _l-= _l _l=(6499710)while(0x3c6/42)<_l_ do _l-= _l if(__[_[_l_l]]~=__[_[___l_]])then _ll=_ll+_lll;else _ll=_[_l_ll];end;break end while(_l)/((0x725+-119))==3801 do local _ll=_[_l_ll];local _l=__[_ll]for _=_ll+1,_[_lllll]do _l=_l..__[_];end;__[_[_l_l]]=_l;break end;break;end while 3891==(_l)/((-#[[Roblox is written in assembly you dingus]]+(-0x50+3364)))do _l=(628505)while _l_<=((0x14ee/47)+-0x59)do _l-= _l if(__[_[_l_l]]~=_[__ll_])then _ll=_ll+_lll;else _ll=_[_ll_];end;break;end while 337==(_l)/((-36+0x76d))do _l=(2562780)while(-#[[I forgor]]+(0x60+-62))<_l_ do _l-= _l do return __[_[_l__]]end break end while(_l)/(((169792/0xe0)+-#[[Rynin babasi kredi borcuna girdi]]))==3530 do if not __[_[_l_l]]then _ll=_ll+_lll;else _ll=_[_ll_];end;break end;break;end break;end break;end break;end while(_l)/((-0x7f+938))==924 do _l=(5530316)while(0xa00/80)>=_l_ do _l-= _l _l=(293346)while(0x74/4)>=_l_ do _l-= _l _l=(1712880)while(-#[[<@!812486162110873641>  haha lol i pinged you]]+(0xd67/47))<_l_ do _l-= _l do return end;break end while 1647==(_l)/((0x848-1080))do local _ll=_[_llll];local _l=__[_[_ll_]];__[_ll+1]=_l;__[_ll]=_l[_[___l_]];break end;break;end while 129==(_l)/((0x1208-2342))do _l=(12507120)while(-0x39+87)>=_l_ do _l-= _l local _l;__[_[_l_l]]=_[_l__l];_ll=_ll+__l;_=___[_ll];__[_[___ll]]=_[___l];_ll=_ll+__l;_=___[_ll];__[_[_l_l]]=_[_ll_];_ll=_ll+__l;_=___[_ll];_l=_[_llll]__[_l]=__[_l](_l_l_(__,_l+__l,_[_ll_]))_ll=_ll+__l;_=___[_ll];__[_[__l_l]]={};_ll=_ll+__l;_=___[_ll];__[_[__l_l]]=_ll_l[_[_ll_]];_ll=_ll+__l;_=___[_ll];__[_[_l__]]=__[_[____]][_[___l_]];_ll=_ll+__l;_=___[_ll];__[_[_l_l]]=__[_[___l]][_[__l__]];_ll=_ll+__l;_=___[_ll];__[_[_l__]]=__[_[__l_]][_[_lll_]];_ll=_ll+__l;_=___[_ll];__[_[__lll]]=_ll_l[_[_ll_]];break;end while(_l)/((7274-0xe60))==3480 do _l=(7165680)while((0x88-(18544/0xf4))+-#'powered by ROBLOX Corporation')<_l_ do _l-= _l local _l=_[_llll];local __l=__[_l]local _l_=__[_l+2];if(_l_>0)then if(__l>__[_l+1])then _ll=_[__l_];else __[_l+3]=__l;end elseif(__l<__[_l+1])then _ll=_[__l_];else __[_l+3]=__l;end break end while(_l)/((0xde1-1801))==4090 do local ____l;local _l_;local _l__l;local _l;__[_[_l_l]]=_ll_l[_[__l_]];_ll=_ll+__l;_=___[_ll];__[_[_l_l]]=__[_[___l]][_[_lllll]];_ll=_ll+__l;_=___[_ll];_l=_[__lll];_l__l=__[_[_ll_]];__[_l+1]=_l__l;__[_l]=_l__l[_[__ll_]];_ll=_ll+__l;_=___[_ll];__[_[_l__]]=__[_[____]];_ll=_ll+__l;_=___[_ll];__[_[_llll]]=__[_[___l]];_ll=_ll+__l;_=___[_ll];_l=_[_llll]__[_l]=__[_l](_l_l_(__,_l+__l,_[_l_ll]))_ll=_ll+__l;_=___[_ll];_l=_[_l_l];_l__l=__[_[___l]];__[_l+1]=_l__l;__[_l]=_l__l[_[_lllll]];_ll=_ll+__l;_=___[_ll];_l=_[_llll]__[_l]=__[_l](__[_l+_lll])_ll=_ll+__l;_=___[_ll];_l_={__,_};_l_[_lll][_l_[__ll][_llll]]=_l_[__l][_l_[__ll][__l__]]+_l_[_lll][_l_[__ll][____]];_ll=_ll+__l;_=___[_ll];__[_[__lll]]=__[_[___l]]%_[__ll_];_ll=_ll+__l;_=___[_ll];_l=_[__lll]__[_l]=__[_l](__[_l+_lll])_ll=_ll+__l;_=___[_ll];_l__l=_[_l_ll];____l=__[_l__l]for _=_l__l+1,_[_l___]do ____l=____l..__[_];end;__[_[_l__]]=____l;_ll=_ll+__l;_=___[_ll];_l_={__,_};_l_[_lll][_l_[__ll][___ll]]=_l_[__l][_l_[__ll][_lll_]]+_l_[_lll][_l_[__ll][__l_]];_ll=_ll+__l;_=___[_ll];__[_[__l_l]]=__[_[___l]]%_[__ll_];break end;break;end break;end break;end while 1628==(_l)/((6864-0xd8b))do _l=(1220184)while _l_<=(0xe14/106)do _l-= _l _l=(2065066)while _l_>(0x65-(-20+0x58))do _l-= _l local _lll;local _l_;local _l;__[_[__lll]]=_[__l_];_ll=_ll+__l;_=___[_ll];__[_[_l_l]]=_[_l_ll];_ll=_ll+__l;_=___[_ll];__[_[_llll]]=#__[_[_ll_]];_ll=_ll+__l;_=___[_ll];__[_[__l_l]]=_[____];_ll=_ll+__l;_=___[_ll];_l=_[__l_l];_l_=__[_l]_lll=__[_l+2];if(_lll>0)then if(_l_>__[_l+1])then _ll=_[___l];else __[_l+3]=_l_;end elseif(_l_<__[_l+1])then _ll=_[____];else __[_l+3]=_l_;end break end while 1759==(_l)/((16436/((6976/0xda)+-#[[kfc obfuscator bad]])))do __[_[___ll]]=(_[_l_ll]~=0);_ll=_ll+_lll;break end;break;end while(_l)/((0x1347-2514))==504 do _l=(1004150)while _l_<=(-41+0x4c)do _l-= _l do return __[_[__lll]]end break;end while 3325==(_l)/((0x12234/246))do _l=(14913280)while(157+-0x79)<_l_ do _l-= _l ____l[_[____]]=__[_[_llll]];break end while(_l)/((663680/0xaa))==3820 do local _l=_[___ll]__[_l]=__[_l](_l_l_(__,_l+__l,_[_ll_]))break end;break;end break;end break;end break;end break;end break;end while(_l)/((0xbbd+-102))==1969 do _l=(464616)while _l_<=(-0x65+(0x5368/136))do _l-= _l _l=(382360)while _l_<=(0x72-68)do _l-= _l _l=(2610879)while(98-0x39)>=_l_ do _l-= _l _l=(1860935)while _l_<=(8619/0xdd)do _l-= _l _l=(5704720)while(0x70-74)<_l_ do _l-= _l __[_[___ll]][__[_[___l]]]=__[_[___l_]];break end while(_l)/((341600/0xa0))==2672 do __[_[__lll]]=__[_[_l__l]][__[_[_lll_]]];break end;break;end while(_l)/((1775+-0x6a))==1115 do _l=(1193276)while(-#[[PSU Deobfuscation Speedrun AnyPrecent WR]]+((-96+0x0)+176))<_l_ do _l-= _l __[_[_l__]]=____l[_[___l]];break end while(_l)/((-#'constant dumB'+(0x11d4-2308)))==532 do __[_[_l_l]]=__[_[__l_]]%_[___l_];break end;break;end break;end while(_l)/((-#[[clipped]]+(5566-0xaf2)))==947 do _l=(3478400)while _l_<=(0x20c1/195)do _l-= _l _l=(1950072)while(8484/0xca)<_l_ do _l-= _l local _=_[__l_l]__[_](__[_+_lll])break end while(_l)/((57256/0x44))==2316 do __[_[_l__]][_[_ll_]]=__[_[__ll_]];break end;break;end while 2174==(_l)/((-#[[child porn]]+(0xcf8-1710)))do _l=(20560)while(0x96+-106)>=_l_ do _l-= _l __[_[_llll]][__[_[__l_]]]=__[_[__ll_]];break;end while(_l)/((0x481-639))==40 do _l=(264652)while _l_>(0xd8-171)do _l-= _l __[_[__lll]]=_[_l_ll];break end while(_l)/((0x71384/191))==109 do __[_[__lll]]=#__[_[__l_]];break end;break;end break;end break;end break;end while(_l)/((-119+0x115))==2420 do _l=(5729934)while _l_<=(7752/0x98)do _l-= _l _l=(2374791)while((7440/0x5d)+-#[[steancommunityru.ru/scamlinkhere]])>=_l_ do _l-= _l _l=(3984536)while _l_>(207-0xa0)do _l-= _l local _l=_[__l_l];local _l_=__[_l+2];local __l=__[_l]+_l_;__[_l]=__l;if(_l_>0)then if(__l<=__[_l+1])then _ll=_[____];__[_l+3]=__l;end elseif(__l>=__[_l+1])then _ll=_[_l_ll];__[_l+3]=__l;end break end while 1384==(_l)/((5839-0xb90))do if(__[_[_l_l]]~=_[_lllll])then _ll=_ll+_lll;else _ll=_[__l_];end;break end;break;end while(_l)/((-#"Shouldve been the fbi bot"+(-48+0x2f4)))==3477 do _l=(898920)while((273-0xab)+-#'turn around and dont you think about coming back here')>=_l_ do _l-= _l local _l_;local _lll;local _l;__[_[_l__]]=_[_l__l];_ll=_ll+__l;_=___[_ll];__[_[__l_l]]=_[_ll_];_ll=_ll+__l;_=___[_ll];_l=_[_llll]__[_l]=__[_l](_l_l_(__,_l+__l,_[_l__l]))_ll=_ll+__l;_=___[_ll];_lll=_[___l];_l_=__[_lll]for _=_lll+1,_[_lllll]do _l_=_l_..__[_];end;__[_[__lll]]=_l_;_ll=_ll+__l;_=___[_ll];__[_[__l_l]][_[____]]=__[_[__l__]];_ll=_ll+__l;_=___[_ll];__[_[___ll]]=__[_[__l_]];_ll=_ll+__l;_=___[_ll];__[_[_l__]]={};_ll=_ll+__l;_=___[_ll];__[_[_llll]][_[____]]=__[_[__l__]];_ll=_ll+__l;_=___[_ll];__[_[__lll]]=_ll_l[_[_ll_]];_ll=_ll+__l;_=___[_ll];__[_[_llll]]=_[_l_ll];break;end while(_l)/((-#'hi skid'+(56628/0xf2)))==3960 do _l=(1952416)while _l_>(213-0xa3)do _l-= _l if(__[_[___ll]]==__[_[__l__]])then _ll=_ll+_lll;else _ll=_[_l_ll];end;break end while 592==(_l)/((0x80d4/10))do local _={__,_};_[_lll][_[__ll][__lll]]=_[__l][_[__ll][__ll_]]+_[_lll][_[__ll][____]];break end;break;end break;end break;end while(_l)/((3666+-0x3c))==1589 do _l=(11919474)while _l_<=(175-0x7a)do _l-= _l _l=(340620)while _l_>((0x67+(-#"free_lua_deobfuscator.hacker.com"+(-0x13+5)))+-#"troll")do _l-= _l __[_[___ll]]=_____(__llll[_[____]],nil,_ll_l);break end while 210==(_l)/((-#'Perths Scripting Shit'+(0xd11-1702)))do __[_[_l__]]=(_[___l]~=0);_ll=_ll+_lll;break end;break;end while 3726==(_l)/(((0x193b-3252)+-#"I forgor"))do _l=(296976)while _l_<=(-0x5e+148)do _l-= _l _ll=_[__l_];break;end while(_l)/((0x8d6-1158))==269 do _l=(473025)while(0xa5/3)<_l_ do _l-= _l __[_[__lll]]=____l[_[____]];break end while(_l)/(((48384/0xfc)+-#'One Shot Was Here'))==2703 do ____l[_[__l_]]=__[_[___ll]];break end;break;end break;end break;end break;end break;end while(_l)/(((0x30c-441)+-#"psu anti dump !"))==1434 do _l=(565719)while((1944/0x1b)+-#'True af')>=_l_ do _l-= _l _l=(1880123)while _l_<=(0xac8/46)do _l-= _l _l=(1850275)while(134+-0x4c)>=_l_ do _l-= _l _l=(13796955)while(-#[[stfu and paint cat]]+(-0x44+(11869/0x53)))<_l_ do _l-= _l local _=_[_llll]__[_](__[_+_lll])break end while(_l)/((-#"im gonna shit yourself"+(0x43a79/(12638/0xb2))))==3555 do local _={__,_};_[_lll][_[__ll][___ll]]=_[__l][_[__ll][_lll_]]+_[_lll][_[__ll][_l__l]];break end;break;end while(_l)/((0x4bc80/128))==763 do _l=(411203)while _l_>(226-0xa7)do _l-= _l __[_[__lll]]=_ll_l[_[__l_]];break end while(_l)/((1342-0x2db))==673 do __[_[_l_l]]=_____(__llll[_[___l]],nil,_ll_l);break end;break;end break;end while(_l)/((25949/0xb))==797 do _l=(6151029)while((0x84+-47)+-#[[Shouldve invite FBI Bot]])>=_l_ do _l-= _l _l=(2440522)while _l_>((5243/0x31)+-#"FREE LUA OBFUSCATOR DOWNLOAD REAL NO FAKE 2024")do _l-= _l __[_[_l__]]=_[_ll_];break end while 658==(_l)/(((0x28488/(-#[[Imagine being named omer faruk birer aka RY]]+(0xd3+-124)))+-#[[MoonSec V3 cracked download not clickbait]]))do __[_[___ll]]=__[_[__l_]];break end;break;end while(_l)/((-#'turn around and dont you think about coming back here'+(4030-0x7f4)))==3169 do _l=(13628160)while((0x373c/202)+-#"bitcoin")>=_l_ do _l-= _l __[_[_l__]]=__[_[_ll_]][_[___l_]];break;end while 3744==(_l)/((396760/0x6d))do _l=(6037075)while _l_>(0xaf+-111)do _l-= _l __[_[__lll]]=__[_[_ll_]]%_[_l___];break end while 1595==(_l)/((0x1e02-3897))do local _l;__[_[__l_l]]=_[___l];_ll=_ll+__l;_=___[_ll];_l=_[__l_l]__[_l]=__[_l](_l_l_(__,_l+__l,_[____]))_ll=_ll+__l;_=___[_ll];__[_[_l__]][_[_l_ll]]=__[_[__ll_]];_ll=_ll+__l;_=___[_ll];__[_[_llll]]={};_ll=_ll+__l;_=___[_ll];__[_[_l__]]=_ll_l[_[___l]];_ll=_ll+__l;_=___[_ll];__[_[_l__]]=_[_ll_];_ll=_ll+__l;_=___[_ll];__[_[_l_l]]=_[____];_ll=_ll+__l;_=___[_ll];__[_[_llll]]=_[____];_ll=_ll+__l;_=___[_ll];_l=_[_l_l]__[_l]=__[_l](_l_l_(__,_l+__l,_[____]))_ll=_ll+__l;_=___[_ll];__[_[___ll]]=_ll_l[_[_l__l]];break end;break;end break;end break;end break;end while 553==(_l)/((0x453+-84))do _l=(7364984)while(-#[[Moonsec V2 deobfuscation in process]]+(0x1be4/68))>=_l_ do _l-= _l _l=(166560)while(5561/0x53)>=_l_ do _l-= _l _l=(4823140)while _l_>(0xe1-159)do _l-= _l __[_[_llll]]={};break end while 2932==(_l)/((19740/0xc))do if not __[_[_llll]]then _ll=_ll+_lll;else _ll=_[__l_];end;break end;break;end while 1041==(_l)/((410-0xfa))do _l=(13546710)while _l_<=(2652/0x27)do _l-= _l __[_[_l_l]]=__[_[_l__l]][_[__l__]];break;end while(_l)/((3607+-0x46))==3830 do _l=(3205182)while(180+-0x6f)<_l_ do _l-= _l local _l_;local _l;__[_[_llll]]=_[__l_];_ll=_ll+__l;_=___[_ll];__[_[__l_l]]=_[___l];_ll=_ll+__l;_=___[_ll];_l=_[___ll]__[_l]=__[_l](_l_l_(__,_l+__l,_[___l]))_ll=_ll+__l;_=___[_ll];__[_[__lll]][__[_[____]]]=__[_[_lll_]];_ll=_ll+__l;_=___[_ll];__[_[__lll]][_[__l_]]=__[_[__l__]];_ll=_ll+__l;_=___[_ll];__[_[___ll]]=_ll_l[_[__l_]];_ll=_ll+__l;_=___[_ll];_l=_[___ll];_l_=__[_[_l__l]];__[_l+1]=_l_;__[_l]=_l_[_[_lllll]];_ll=_ll+__l;_=___[_ll];__[_[_l__]]=_[__l_];_ll=_ll+__l;_=___[_ll];_l=_[_l_l]__[_l]=__[_l](_l_l_(__,_l+__l,_[__l_]))_ll=_ll+__l;_=___[_ll];_l=_[_llll];_l_=__[_[___l]];__[_l+1]=_l_;__[_l]=_l_[_[__ll_]];break end while 1726==(_l)/((-#[[OFFICER SHE WAS 18 IN DOG YEARS nice booba btw]]+(0x78c+-29)))do local __ll=__llll[_[_ll_]];local _l_;local _l={};_l_=_lll_l({},{__index=function(__,_)local _=_l[_];return _[1][_[2]];end,__newindex=function(_ll,_,__)local _=_l[_]_[1][_[2]]=__;end;});for __l=1,_[_lll_]do _ll=_ll+_lll;local _=___[_ll];if _[(55-0x36)]==61 then _l[__l-1]={__,_[___l]};else _l[__l-1]={____l,_[_ll_]};end;_ll__[#_ll__+1]=_l;end;__[_[_l_l]]=_____(__ll,_l_,_ll_l);break end;break;end break;end break;end while 2636==(_l)/((-20+0xafe))do _l=(159630)while(2160/0x1e)>=_l_ do _l-= _l _l=(1212180)while _l_>(134+-0x3f)do _l-= _l _ll=_[_ll_];break end while 681==(_l)/(((3691-0x74e)+-0x29))do __[_[_l_l]]=__[_[_l_ll]]-__[_[__l__]];break end;break;end while 313==(_l)/(((1186-0x28f)+-#'stOP READING MY CODE!'))do _l=(3650845)while(10147/0x8b)>=_l_ do _l-= _l __[_[__lll]]=__[_[_l_ll]];break;end while 1619==(_l)/((81180/0x24))do _l=(13506480)while _l_>(0x110-198)do _l-= _l if(__[_[_l_l]]==__[_[_lll_]])then _ll=_ll+_lll;else _ll=_[___l];end;break end while(_l)/((-#"we dont give owner for feet pics what the fuck stop sending me your feet BRO"+(-0x70+3698)))==3848 do local _=_[_l__]__[_]=__[_](__[_+_lll])break end;break;end break;end break;end break;end break;end break;end _ll+= _lll end;end);end;return _____(_ll_ll(),{},_ll__l())()end)_msec({[(433-0x10f)]='\115\116'..(function(_)return(_ and'(0xfb-151)')or'\114\105'or'\120\58'end)((-#'disagree'+(3042/0xea))==(-#"penis"+(0x77+(-0x6c-0))))..'\110g',[((81002/0x65)+-#'Nice constant dumper you got there')]='\108\100'..(function(_)return(_ and'(-#\'How to deobfuscate: function deobfuscate() while true do end; deobfuscate()\'+(370-0xc3))')or'\101\120'or'\119\111'end)((0x7d/25)==((-31+0x4f)-0x2a))..'\112',[(-#{'}',175,(function()return{','}end)(),'}',",";'}';'nil'}+265)]=(function(_)return(_ and'(0x13d-217)')and'\98\121'or'\100\120'end)((0x45-64)==(-#'free moonsec cracked download 2022!!'+(4018/0x62)))..'\116\101',[(-#"Shouldve invented fbi bot"+(-0x33+455))]='\99'..(function(_)return(_ and'(-61+0xa1)')and'\90\19\157'or'\104\97'end)((-#'this file was obfuscated manually'+(0xbc-150))==((9-0x3f)+57))..'\114',[(1176-(1320-0x2d2))]='\116\97'..(function(_)return(_ and'((0x2b2d+-53)/0x6e)')and'\64\113'or'\98\108'end)((-#"im dying"+(65-0x33))==((1848/((23074/0xa6)+-#'guys im from the future v6 will completely hide your script by returning empty file'))+-#'moonsec pls add fivem choice'))..'\101',[(447+-#{{};'nil';19})]=(function(_)return(_ and'(-68+0xa8)')or'\115\117'or'\78\107'end)((106-0x67)==(142-(-0x5a+201)))..'\98',[(-#'i hate federal'+(105530/0x7a))]='\99\111'..(function(_)return(_ and'(20500/0xcd)')and'\110\99'or'\110\105\103\97'end)((172-0x8d)==(7037/0xe3))..'\97\116',[(-0x1a+714)]=(function(_,_l)return(_ and'(0x5b04/233)')and'\48\159\158\188\10'or'\109\97'end)((0x1ae/86)==(0x32-(0xb8-140)))..'\116\104',[(0xabd-1409)]=(function(_l,_)return(((2226/0x6a)+-#"troll the teibal")==(120-0x75)and'\48'..'\195'or _l..((not'\20\95\69'and'\90'..'\180'or _)))or'\199\203\95'end),[(0x830-1097)]='\105\110'..(function(_,_l)return(_ and'(23600/0xec)')and'\90\115\138\115\15'or'\115\101'end)((87-((365-0xf0)+-#"This script was obfuscated by Herttfuscator"))==((0x11b-199)+-#[[Day 2 of telling federal that he spilled out his milk]]))..'\114\116',[((0x2dac2/171)+-#'I am albanian obfuscator I cannot hide this script please dont view it')]='\117\110'..(function(_,_l)return(_ and'(-0x56+186)')or'\112\97'or'\20\38\154'end)(((-112+0x9c)+-#"fivem when they block the PSU watermark")==(-#"Perth is taken by sor"+(-0x34+104)))..'\99\107',[(1213+((-0x70+40)+-#"clipped"))]='\115\101'..(function(_)return(_ and'(((-#\'How did adam and eve populate?\'+(54716-0x6b0e))/0xb0)+-#"federal u suck let me do fucking emojis in here asshole")')and'\110\112\99\104'or'\108\101'end)((0x43+-62)==((153-0x61)+-#'ry s father lives in debt'))..'\99\116',[(-#{(function()return{','}end)(),{};62}+1291)]='\116\111\110'..(function(_,_l)return(_ and'(0xed-137)')and'\117\109\98'or'\100\97\120\122'end)((0x40b/207)==(880/0xb0))..'\101\114'},{[((0x25b-348)-0xbb)]=((getfenv))},((getfenv))()) end)()


