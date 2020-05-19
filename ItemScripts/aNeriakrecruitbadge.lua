--[[
	Script Name		:	ItemScripts/ANeriakRecruitBadge.lua
	Script Purpose	:	a Neriak recruit badge used in quest "A Guard Insignia?"
	Script Author	:	Cynnar
	Script Date		:	1/4/2016
	Script Notes	:	a Neriak recruit badge (Item ID = 2333) A Guard Insignia? (quest ID = 152)
	Script Notes	:	UPDATE `eq2world`.`items` SET `lua_script`='ItemScripts/ANeriakRecruitBadge.lua' WHERE  `id`=2333;
--]]

local AGuardInsignia =140

function examined(Item, Player)
	OfferQuest(Player, Player, AGuardInsignia)	
end