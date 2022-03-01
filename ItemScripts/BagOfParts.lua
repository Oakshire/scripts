--[[
	Script Name	: ItemScripts/BagOfParts.lua
	Script Purpose	: Quest upon examine
	Script Author	: Shatou
	Script Date	: 1/7/2020
	Script Notes	: 
--]]

local A_BAG_PARTS_QUEST_ID = 505

function examined(Item, Spawn)

	if not HasQuest(Spawn, A_BAG_PARTS_QUEST_ID) then
	
		OfferQuest(nil, Spawn, A_BAG_PARTS_QUEST_ID)
		
	end
end