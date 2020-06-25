--[[
	Script Name	: ItemScripts/GeldranisVial.lua
	Script Purpose	: Handles the item "Geldrani's Vial"
	Script Author	: jakejp
	Script Date	: 2018.6.14
	Script Notes	: 
--]]

local EmptyVial = 46457
local FilledVial = 7641
local AStrangeMix = 314

function used(Item, Player)
    if GetQuestStep(Player, AStrangeMix) == 1 then
	    local X = GetX(Player)
		local Z = GetZ(Player)
		if GetZoneID(GetZone(Player)) == 108 then
		    if X < 15 and X > -17 then --setting radius to update the quest "Boatload of Work"
	            if Z > 558 and Z < 581 then
                    SetStepComplete(Player, AStrangeMix, 1)
				    RemoveItem(Player, EmptyVial)
				    if HasItem(Player, FilledVial) == false then
				           SummonItem(Player, FilledVial, 1)
				    end
				else
				    SendMessage(Player, "You are not in the proper spot to use this.", "yellow")
		        end
		    else
				    SendMessage(Player, "You are not in the proper spot to use this.", "yellow")
		    end
	    end
    end
end