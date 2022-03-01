--[[
	Script Name	: ItemScripts/aBowShaft.lua
	Script Purpose	: Offer's quest "Deadeye"
	Script Author	: premierio015
	Script Date	    : 2019-10-07
	Script Notes	:
--]]

local quest = 529

function examined(Item, Player)
    if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
    if HasItem(Player, 1268) then
			RemoveItem(Player, 1268)


end
   end
      end