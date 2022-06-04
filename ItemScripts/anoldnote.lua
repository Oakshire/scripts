--[[
	Script Name	: ItemScripts/anoldnote.lua
	Script Purpose	:
	Script Author	: Ememjr
	Script Date	    : 2017.05.09
	Script Notes	:
--]]
--[[
local quest = 235

function examined(Item, Player)
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(Item, Player, quest)
		--remove quest starter
	end
end]]--