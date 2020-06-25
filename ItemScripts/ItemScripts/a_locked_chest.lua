--[[
	Script Name	: ItemScripts/a_locked_chest.lua
	Script Purpose	:
	Script Author	: Ememjr
	Script Date	    : 2019-10-07
	Script Notes	:
--]]

local quest = 480

function examined(Item, Player)
    Say(Player, "item examined")
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
	    Say(Player, "offer quest")
		OfferQuest(nil, Player, quest)
	end
end