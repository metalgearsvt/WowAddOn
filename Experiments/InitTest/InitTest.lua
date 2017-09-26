local EventFrame = CreateFrame("Frame")
EventFrame:RegisterEvent("PLAYER_LOGIN")
EventFrame:SetScript("OnEvent", greet)
function greet(self,event,...) 
	if type(options) ~= "table" then -- Initialize.
		options = {}
		options[UnitName("Player")] = 1
		ChatFrame1:AddMessage('Welcome, '.. UnitName("Player") ..'. Add-on initialized.')
	else
		if options[UnitName("Player")] == 1 then
			ChatFrame1:AddMessage('Welcome, '.. UnitName("Player") ..'. Your visit count is '.. options[UnitName('Player')] ..' time.')
		end
		if options[UnitName("Player")] > 1 then
			ChatFrame1:AddMessage('Welcome, '.. UnitName("Player") ..'. Your visit count is '.. options[UnitName('Player')] ..' times.')
		end
		local found = 0
        for name,number in pairs(options) do 
            if UnitName("Player") == name then
                options[name] = options[name] + 1
                found = 1
            end
        end
        if found == 0 then
			ChatFrame1:AddMessage('Welcome, '.. UnitName("Player") ..'. This is your first visit!')
            options[UnitName("Player")] = 1
        end
	end
end

function Greeting()
	print("Greetings ".. UnitName("Player") .."!")
end
