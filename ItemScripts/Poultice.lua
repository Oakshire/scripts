--[[
	Script Name		:	ItemScripts/Poultice.lua
	Script Purpose	:	for the item "Poultice"
	Script Author	:	theFoof
	Script Date		:	2013.6.3
	Script Notes	:	
--]]

local DisarmingRyGorr = 48

function used(Item, Player)
	if GetQuestStep(Player, DisarmingRyGorr) == 1 then
		local target = GetTarget(Player)
		if GetName(target) == "a Ry'Gorr weapon" then
			CastEntityCommand(Player, target, 1284, "Poultice")
		end
	else
		SendMessage(Player, "You can only use this on a Ry'Gorr weapon.", "yellow")
	end
end