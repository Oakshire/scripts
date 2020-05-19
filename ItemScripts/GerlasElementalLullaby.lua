--[[
	Script Name		:	ItemScripts/GerlasElementalLullaby.lua
	Script Purpose	:	for the item "Gerla's Elemental Lullaby"
	Script Author	:	theFoof
	Script Date		:	2013.6.13
	Script Notes	:	
--]]

local NapEvigis = 64

function used(Item, Player)
	local target = GetTarget(Player)
	if GetQuestStep(Player, NapEvigis) == 1 then
		if GetName(target) == 'Evigis the Ancient' then
			if GetHP(target) < GetMaxHP(target) * .2 then
				CastEntityCommand(Player, target, 1291, "Gerla's Elemental Lullaby")
			else
				SendMessage(Player, "You must use this on Evigis when it is under 20 percent life.", "yellow")
			end
		else
			SendMessage(Player, "You must use this on Evigis when it is under 20 percent life.", "yellow")
		end
	end
end