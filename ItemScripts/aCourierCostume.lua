--[[
	Script Name		:	a courier costume
	Script Purpose	:	
	Script Author	:	premierio015
	Script Date		:	07/01/2021
	Script Notes	:	quest item -> sets illuision
--]]

function equipped(Item, Player)
    CastSpell(Player, 5459, 1)   
end

function unequipped(Item, Player)
    CastSpell(Player, 5459, 1)   
end