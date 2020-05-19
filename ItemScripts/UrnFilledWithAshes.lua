--[[
	Script Name		:	ItemScripts/UrnFilledWithAshes.lua
	Script Purpose	:	for the item "Urn Filled with Ashes"
	Script Author	:	theFoof
	Script Date		:	2013.5.27
	Script Notes	:	
--]]
local ScatteringAshes = 33

function used(Item, Player)
    local X = GetX(Player)
	local Y = GetY(Player)
	local Z = GetZ(Player)
	if GetZoneID(GetZone(Player)) == 470 then
	    if not IsInCombat(Player) then
	        if X >= 587 and X <= 627 then
	            if Y >= 61.2 and Y <= 71.2 then
		            if Z >= -526 and Z <= -486 then
				        SetStepComplete(Player, ScatteringAshes, 1)
				    else
					    LocMessage(Item, Player)
					end
				else
				    LocMessage(Item, Player)
				end
			else
			    LocMessage(Item, Player)
			end
		else
		    SendPopUpMessage(Player, "Non-Combat only", 0, 0, 255)
		end
	end
end

function LocMessage(Item, Player)
    SendMessage(Player, "The ashes must be released at the peak of the cliff to the east of Herga's Choke.", "yellow")
end