--[[
	Script Name	: ItemScripts/an_old_darkblade_dagger.lua
	Script Purpose	:Quest Stater for The Darkblade Dagger
	Script Author	: Ememjr
	Script Date	    : 2019-10-07
	Script Notes	:
--]]

local quest = 482

function examined(Item, Player)
    if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
	end
end