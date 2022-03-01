--[[
	Script Name	: ItemScripts/anoldnote.lua
	Script Purpose	:
	Script Author	: Ememjr
	Script Date	    : 2017.05.09
	Script Notes	:
--]]

local quest = 235

function examined(Item, Player)
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)

		--remove quest starter
		if HasItem(Player, 3776) then
			RemoveItem(Player, 3776)
		end
	end
end