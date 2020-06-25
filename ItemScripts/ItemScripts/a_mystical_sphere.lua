--[[
	Script Name	: ItemScripts/a_mystical_sphere.lua
	Script Purpose	:Quest Stater for The Spirit's Release
	Script Author	: Ememjr
	Script Date	    : 2019-10-07
	Script Notes	:
--]]

local quest = 481
local itemID = 2304
function examined(Item, Player)
    Say(Player, "item examined")
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
	elseif HasQuest(Player, quest) and QuestStepIsComplete(Player, quest, 2) then
        SetStepComplete(Player, quest, 2)
		while HasItem(Player, itemID, 1) do
            RemoveItem(Player, itemID)
		end
	end
end