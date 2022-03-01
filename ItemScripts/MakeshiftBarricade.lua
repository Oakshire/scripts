--[[
	Script Name	: ItemScripts/MakeshiftBarricade.lua
	Script Purpose	: Handles the item "makeshift barricade"
	Script Author	: theFoof
	Script Date	: 2013.5.7
	Script Notes	: 
--]]

local Barricade = 46842
local BoatloadWork = 4

function used(Item, Player)
    if GetQuestStep(Player, BoatloadWork) == 3 then
	    local X = GetX(Player)
		local Z = GetZ(Player)
		if GetZoneID(GetZone(Player)) == 470 then
		    if X > -326 and X < -306 then --setting radius to update the quest "Boatload of Work"
	            if Z < -704 and Z > -724 then
                    SetStepComplete(Player, BoatloadWork, 3)
				    RemoveItem(Player, Barricade)
					local barrier_spawn = GetSpawn(Player, 4701732)
				    AddSpawnAccess(barrier_spawn, Player)
				else
				    SendMessage(Player, "You must be between the two torches along the barricade line on Pilgrims' Landing to use this.", "yellow")
		        end
		    else
			    SendMessage(Player, "You must be between the two torches along the barricade line on Pilgrims' Landing to use this.", "yellow")
		    end
	    end
    end
end