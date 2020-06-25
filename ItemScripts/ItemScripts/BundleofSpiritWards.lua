--[[
	Script Name		:	ItemScripts/BundleofSpiritsWards.lua
	Script Purpose	:	for the quest item "Bundle of Spirits"
	Script Author	:	theFoof
	Script Date		:	2013.5.28
	Script Notes	:	
--]]

local CallingBack = 35

function used(Item, Player)
	if HasQuest(Player, CallingBack) then
		if GetZoneID(GetZone(Player)) == 470 then
		    local X = GetX(Player)
		    local Z = GetZ(Player)
			if X >= 595 and X <= 605 then
				if Z >= -268 and Z <= -258 then
					SetStepComplete(Player, CallingBack, 4)
				end
			elseif X >= 576 and X <= 586 and Z >= -344 and Z <= -334 then
				SetStepComplete(Player, CallingBack, 1)
			elseif X >= 502 and X <= 512 then
				if Z >= -238 and Z <= -228 then
					SetStepComplete(Player, CallingBack, 2)
				end
			elseif X >= 579 and X <= 589 and Z >= -160 and Z <= -150 then
				SetStepComplete(Player, CallingBack, 3)
		    elseif X >= 576 and X <= 586 and Z >= -217 and Z <= -207 then
				SetStepComplete(Player, CallingBack, 5)
		    else 
				SendMessage(Player, "You cannot place a ward here.", "yellow")
			end
		end
	end
end