--[[
	Script Name	: ZoneScipts/Baubbleshire.lua
	Script Purpose	: Baubbleshire
	Script Author	: Shatou
	Script Date	: 1/7/2020
	Script Notes	: 
]]--

local BAG_OF_PARTS_ID = 4110
local BAG_OF_PARTS_QUEST_ID = 505

function init_zone_script(Zone)
    SetLocationProximityFunction(Zone, 916.23, -17.66, -443.61, 10, "AddBagOfParts")
end

function AddBagOfParts(NPC, Spawn)
    if not HasQuest(Spawn, BAG_OF_PARTS_QUEST_ID) and HasCompletedQuest(Spawn, BAG_OF_PARTS_QUEST_ID) then
		SummonItem(Spawn, BAG_OF_PARTS_ID, 1)
	end
end