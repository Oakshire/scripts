--[[
	Script Name	: ItemScripts/ADullWedge.lua
	Script Purpose	: Offers quest "A Strange Stone Wedge"
	Script Author	: premierio015
	Script Date	    : 27.02.2021
	Script Notes	:  
--]]

local quest = 5217 -- A Strange Stone Wedge ID

function examined(Item, Player)
	if not HasQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
		elseif HasQuest(Player, quest) then
			RemoveItem(Player, 1621)
end
end

function obtained(Item, Player)
if HasCompletedQuest(Player, quest) then
RemoveItem(Player, 1621)
end
   end