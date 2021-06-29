--[[
	Script Name	: ItemScripts/a_locked_chest.lua
	Script Purpose	:
	Script Author	: Ememjr
	Script Date	    : 2019-10-07
	Script Notes	:
--]]

local quest = 480

function examined(Item, Player)
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
	end
end

function obtained(Item, Player)
if HasItem(Player, 2115) then
RemoveItem(Player, 2115)
end
   end