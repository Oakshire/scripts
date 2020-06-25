--[[
	Script Name	: ItemScripts/CrustoseRepellentPrototype.lua
	Script Purpose	: Handles the item "crustose repellent prototype"
	Script Author	: theFoof
	Script Date	: 2013.5.12
	Script Notes	: 
--]]

function used(Item, Player)
    local target = GetTarget(Player)
    if GetName(target) == "a crustose sporetender" then
	    CastEntityCommand(Player, target, 1269, "Spray")
	elseif IsInCombat(target) and GetName(target) == "a crustose sporetender" then
	    SendMessage(Player, "This effect cannot be used on a crustose sporetender which is in combat.", "yellow")
    elseif GetName(target) ~= "a crustose sporetender" then
	    SendMessage(Player, "You can only use the crustose repellent against crustose sporetenders.", "yellow")
	end
end