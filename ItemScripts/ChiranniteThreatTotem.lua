--[[
	Script Name	: ItemScripts/ChiranniteThreatTotem.lua
	Script Purpose	: Offers quest "Bark Like a Gnoll"
	Script Author	: premierio015
	Script Date	    : 04.06.2020
	Script Notes	: 
--]]

local quest = 563

function examined(Item, Player)
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
	elseif HasCompletedQuest(Player, quest) then
	    RemoveItem(Player, 4963)
end
   end
     