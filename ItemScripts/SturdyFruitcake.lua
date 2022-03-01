--[[
	Script Name		:	ItemScripts/SturdyFruitcake.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	11/23/19
	Script Notes	:	
--]]

function used(Item,Player)
    local target = GetTarget(Player)
    if target ~= nil then
        CastSpell(target, 5055, 1, Player)
        RemoveItem(Player, 48286)
        SummonItem(Target, 48286, 1)
    end
end