--[[
	Script Name		:	ItemScripts/FrondensFinest.lua
	Script Purpose	:	for the item "Fronden's Finest"
	Script Author	:	theFoof
	Script Date		:	2013.5.31
	Script Notes	:	
--]]
local PouringSkellies = 40

function used(Item, Player)
    target = GetTarget(Player)
    if GetName(target) == "pile of Ry'Gorr bones" then
        if GetQuestStep(Player, PouringSkellies) == 1 then
            if not IsInCombat(Player) then
                CastEntityCommand(Player, target, 1281, "pour one out")
            else
                SendMessage(Player, "You must not be in combat to use this.", "yellow")
            end
        end
    else
        SendMessage(Player, "You must find a pile of Ry'Gorr bones to use this on.", "yellow")
    end 
end