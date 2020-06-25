--[[
	Script Name		:	ItemScripts/trappedspirits.lua
	Script Purpose	:	trapped spirits used in quest "Condemned"
	Script Author	:	Cynnar
	Script Date		:	1/6/2016
	Script Notes	:	trapped spirits (Item ID = 48976) Condemned (quest ID = 153)
--]]

local Condemned = 153

function used(Item, Player)
	if HasQuest(Player, Condemned) then
		local playerX = GetX(Player)
		local playerZ = GetZ(Player)
		if GetQuestStep(Player, Condemned) == 1 then
			if playerX <= -540 and playerX >= -575 then
				if playerZ  >= 137 and playerZ <= 166 then
					AddStepProgress(Player, Condemned, 1, 1)
					RemoveItem(Player, 48976)
				else
					SendMessage(Player, "You must be near the Wellspring of Nightmares to use this.", "yellow")
				end
			else
				SendMessage(Player, "You must be near the Wellspring of Nightmares to use this.", "yellow")
			end
		end
	end
end