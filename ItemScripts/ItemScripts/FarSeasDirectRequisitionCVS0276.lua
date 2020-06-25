--[[
	Script Name	: ItemScripts/FarSeasDirectRequisitionCVS0276.lua
	Script Purpose	: Quest upon examine
	Script Author	: Shatou
	Script Date	: 1/6/2020
	Script Notes	: 
--]]

local FAR_SEAS_DIRECT_REQUISITION_CVS0276_QUEST_ID = 502

function examined(Item, Spawn)

	if not HasQuest(Spawn, FAR_SEAS_DIRECT_REQUISITION_CVS0276_QUEST_ID) then
	
		OfferQuest(nil, Spawn, FAR_SEAS_DIRECT_REQUISITION_CVS0276_QUEST_ID)
		
	end
end