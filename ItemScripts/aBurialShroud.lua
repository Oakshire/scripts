--[[
	Script Name	: ItemScripts/aBurialShroud.lua
	Script Purpose	: Offers quest "Forgotten Shroud"
	Script Author	: premierio015
	Script Date	    : 03.05.2020
	Script Notes	:  
--]]

local quest = 528

function examined(Item, Player)
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)

		if HasItem(Player, 1318) then
			RemoveItem(Player, 1318)
		end
	end
end