--[[
	Script Name	: ItemScripts/CalcifiedBoneOfTheTortured.lua
	Script Purpose	: Offers quest "Calcified Bone of the Tortured"
	Script Author	: premierio015
	Script Date	    : 03.05.2020
	Script Notes	:  
--]]

local quest = 527

function examined(Item, Player)
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)

		if HasItem(Player, 4766) then
			RemoveItem(Player, 4766)
end
	end
        end