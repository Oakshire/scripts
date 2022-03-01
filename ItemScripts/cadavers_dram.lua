--[[
	Script Name		:	ItemScripts/cadavers_dram.lua
	Script Purpose	:	cavader's dram
	Script Author	:	theFoof
	Script Date		:	2013.7.24
	Script Notes	:	
--]]

local BecomingOrcbane = 81

function used(Item, Player)
	if GetQuestStep(Player, BecomingOrcbane) == 1 then
		local target = GetTarget(Player)
		if GetSpawnID(target) == 4700105 then
			if GetHP(target) < GetMaxHP(target) * .20 then
				CastEntityCommand(Player, target, 1299, "cadaver's dram")
			else
				SendMessage(Player, "You must use this on a Ry'Gorr tunneler that is under 20 percent life.", "yellow")
			end
		else
			SendMessage(Player, "You can only use this on a Ry'Gorr tunneler.", "yellow")
		end
	end
end