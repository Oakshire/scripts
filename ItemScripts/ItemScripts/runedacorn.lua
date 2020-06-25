--[[
	Script Name	: ItemScripts/runedacorn.lua
	Script Purpose	:
	Script Author	: Ememjr
	Script Date	    : 2017.05.09
	Script Notes	:
--]]

local quest = 233

function examined(Item, Player)
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)

		--remove quest starter
		if HasItem(Player, 11780) then
			RemoveItem(Player, 11780)
		end
	end
end