local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/matas3535/gamesneeze/main/Library.lua"))()

local Window = Library:New({
    Name = "Title", -- name, Name, title, Title
})

--[[
    Window:SetName("string"),
	Window:GetConfig(),
	Window:LoadConfig("string"),
	Window:Move("vector2"),
	Window:CloseContent(),
	Window:IsOverContent(),
	Window:Unload(),
	Window:Fade(),
]]

local Page = Window:Page({
    Name = "Page" -- name, Name, title, Title
})



local PageSection1 = Page:Section({
    Name = "Section", -- name, Name, title, Title
    Fill = true,
    Side = "Left"
})

--[[
    Section:Update("number")
]]








local Button1 = PageSection1:Button({
    Name = "Inf Stam", -- name, Name, title, Title
    callback = function()
        local stam = game:GetService("Players").LocalPlayer.PlayerStats.Stamina

        local hook
        
        hook = hookmetamethod(stam, "__index", function(self, v)
            if self == stam and v == "Value" then
                return 100
            end
            print("h1")
            return hook(self, v)  -- Ensure to call the original function if necessary
        end)
        
    end
})

Window:Initialize()
