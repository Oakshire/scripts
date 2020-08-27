--[[
	Script Name		:	ItemScripts/RingofTheRatongaEvil.lua
	Script Purpose	:	<purpose>
	Script Author	:	<author-name>
	Script Date		:	8/23/2020
	Script Notes	:	pass tier 1 for evil 2 for good
--]]

function used(Item, Player)
	CastSpell(Player, 5432, 1) 
end