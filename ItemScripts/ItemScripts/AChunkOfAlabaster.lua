--[[
	Script Name	: ItemScripts/AChunkOfAlabaster.lua
	Script Purpose	: Quest upon examine
	Script Author	: Shatou
	Script Date	: 1/6/2020
	Script Notes	: 
--]]

local ALABASTER_FOR_THE_MAGES_ID = 501

function examined(Item, Spawn)

	if not HasQuest(Spawn, ALABASTER_FOR_THE_MAGES_ID) then
	
		OfferQuest(nil, Spawn, ALABASTER_FOR_THE_MAGES_ID)
		
	end
end