local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()



local Window = OrionLib:MakeWindow({Name = "MRX ScriptHub", HidePremium = true, SaveConfig = false, ConfigFolder = "OrionTest"})


  --  _____                    
 --  |  ___|_ _ _ __ _ __ ___  
 --  | |_ / _` | '__| '_ ` _ \ 
 --  |  _| (_| | |  | | | | | |
 --  |_|  \__,_|_|  |_| |_| |_|

local Tab = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "AtherHub",
	Callback = function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))()
  	end    
})



--  __  __   _              
-- |  \/  | (_)  ___    ___ 
-- | |\/| | | | / __|  / __|
-- | |  | | | | \__ \ | (__ 
-- |_|  |_| |_| |___/  \___|

local Tab = Window:MakeTab({

	Name = "Misc",

	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Anti-afk",
	Callback = function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Anti-Afk-Remastered-Script-or-Diffrent-Cool-UI-2097"))()
  	end    
})

Tab:AddButton({
	Name = "Korblox And Headless",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mrxver0/Scripts/main/Korblox-Headless.lua"))()
  	end    
})


--_                      
--__   _(_)___ _   _  __ _| |___ 
--\ \ / / / __| | | |/ _` | / __|
-- \ V /| \__ \ |_| | (_| | \__ \
 -- \_/ |_|___/\__,_|\__,_|_|___/
							   
-- Variables for pet names
local fromPet = ""
local toPet = ""

-- Tab for Pets
local PetsTab = Window:MakeTab({
    Name = "Pet Spawner",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Input fields for 'fromPet' and 'toPet'
PetsTab:AddTextbox({
    Name = "From Pet",
    Default = "",
    TextDisappear = false,
    Callback = function(value)
        fromPet = value
    end
})

PetsTab:AddTextbox({
    Name = "To Pet",
    Default = "",
    TextDisappear = false,
    Callback = function(value)
        toPet = value
    end
})

-- Button to execute pet swap
PetsTab:AddButton({
    Name = "Swap Pets",
    Callback = function()
        local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)
        if fromPet == "" or toPet == "" then
            warn("Hey! Please Fill in Both 'From Pet' and 'To Pet' Names!")
            return
        end
        if Pets[fromPet] and Pets[toPet] then
            for i, v in pairs(Pets[fromPet]) do
                Pets[fromPet][i] = nil
            end
            for i, v in pairs(Pets[toPet]) do
                Pets[fromPet][i] = v
            end
            print("Successful! You Spawned", fromPet, "to", toPet)
        else
            warn("Oops! Invalid Pet Names! Please Confirm the Pets Names!")
        end
    end
})


-- Tab for visual gems
local GemsTab = Window:MakeTab({
    Name = "Gems Spawner",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Adaptive text input for gems
local gemAmount = ""

GemsTab:AddTextbox({
    Name = "Set Gem Amount",
    Default = "Type amount you want to spawn",
    TextDisappear = true,
    Callback = function(value)
        gemAmount = value
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Top.Diamonds.Amount.Text = gemAmount
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Left["Diamonds Desktop"].Amount.Text = gemAmount
    end
})

-- Tab for coins
local CoinsTab = Window:MakeTab({
    Name = "Coins Spawner",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Adaptive text input for coins
local coinAmount = ""

CoinsTab:AddTextbox({
    Name = "Set Coin Amount",
    Default = "Type Amount",
    TextDisappear = false,
    Callback = function(value)
        coinAmount = value
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Top.Coins.Amount.Text = coinAmount
    end
})

--  ____                  _   
-- | __ )  ___   ___  ___| |_ 
-- |  _ \ / _ \ / _ \/ __| __|
-- | |_) | (_) | (_) \__ \ |_ 
-- |____/ \___/ \___/|___/\__|
                            
                            

local Tab = Window:MakeTab({



	Name = "Boost",

	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Luck Boost",
	Callback = function()
    print("+50% Luck activated!")
  	end    
})

Tab:AddButton({
	Name = "Luck Boost v2",
	Callback = function()
    print("+100% Luck activated")
  	end    
})


Tab:AddButton({

	Name = "Shiny x2 chance",
	Callback = function()
    print("+100% shiny chance activated")
  	end    
})


Tab:AddButton({
	Name = "Huge Luck Boost",
	Callback = function()
    print("+100% Huge Luck activated")
  	end    
})






OrionLib:Init()