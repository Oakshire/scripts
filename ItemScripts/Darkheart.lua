--[[
	Script Name		:	ItemScripts/DarkHeart.lua
	Script Purpose	:	Necromancer Darkheart(Summoned Item)
	Script Author	:	Neatz09
	Script Date		:	10/16/2019
	Script Notes	:	
--]]
local SPELLID = 5013
local SPELL_TIERS = { [45872] = 1, [45870] = 2, [45871] = 3, [45874] = 4, [45869] = 5, [45873] = 7, [45875] = 9 }
function obtained(Item, Player)
end

function removed(Item, Player)
end

function destroyed(Item, Player)
end

function examined(Item, Player)
end

function used(Item, Player)
end

function used(Item, Player)
    local item_id = GetItemID(Item)
    CastSpell(Player, SPELLID, SPELL_TIERS[item_id])
end