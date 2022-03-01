--[[
	Script Name	: ItemScripts/RustySymbolOfMarr.lua
	Script Purpose	: Offers quest "Rusty Symbol of Marr"
	Script Author	: premierio015
	Script Date	    : 12.11.2020
	Script Notes	:  
--]]

local quest = 584

function examined(Item, Player)
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
		
	   elseif HasItem(Player, 2555) and HasQuest(Player, quest) then
			RemoveItem(Player, 2555)
end
   end
 

    
