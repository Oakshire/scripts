--[[
	Script Name	: ItemScripts/Bogchild's_Iced_Trap.lua
	Script Purpose	: Handles the item "Bogchild's Iced Trap"
	Script Author	: theFoof
	Script Date	: 2013.5.20
	Script Notes	: 
--]]
function used(Item, Player)
    target = GetTarget(Player)
    if GetName(target) == 'a snowpack' or GetName(target) == 'an iceflow' then
	    if IsInCombat(target) then
		    SendMessage(Player, "You can only use this on an iceflow or snowpack that is not currently engaged in combat.", "yellow")
		else
		    CastEntityCommand(Player, target, 1274, "Bogchild's Iced Trap")
		end
	else
	    SendMessage(Player, "You can only use this on an iceflow or a snowpack.", "yellow")
	end
end