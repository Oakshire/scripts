--[[
	Script Name		:	ItemScripts/ShardofEssence.lua
	Script Purpose	:	Shard of Essence Conj(Summoned Item)
	Script Author	:	Neatz09
	Script Date		:	10/16/2019
	Script Notes	:	
--]]
local SPELLID = 5014
local SPELL_TIERS = { [48003] = 1, [48004] = 2, [48005] = 3, [48010] = 4, [48002] = 5, [48009] = 7, [48012] = 9 }
function used(Item, Player)
    local item_id = GetItemID(Item)
    CastSpell(Player, SPELLID, SPELL_TIERS[item_id])
end