--[[
	Script Name		:	
	Script Purpose	:	
	Script Author	:	
	Script Date		:	10/28/2019
	Script Notes	:	
--]]

function used(Item,Player)
    local target = GetTarget(Player)
    if target ~= nil then
        CastSpell(target, 5015, 1, Player)
        RemoveItem(Player, 48108)
    end
end