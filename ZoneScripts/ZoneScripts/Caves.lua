--[[
	Script Name	: ZoneScripts/Caves.lua
	Script Purpose	: Caves
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	: 
--]]

local QUEST2_FROM_EMMA = 227

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 45.4454, 37.7504, -110.193, 20, "SpawnFulkoir")
end

function SpawnFulkoir(Zone, Spawn)
	if HasQuest(Spawn, QUEST2_FROM_EMMA) and not QuestStepIsComplete(Spawn, QUEST2_FROM_EMMA, 3) and QuestStepIsComplete(Spawn, QUEST2_FROM_EMMA, 1) and QuestStepIsComplete(Spawn, QUEST2_FROM_EMMA, 2) then
		local Fulkoir = GetSpawn(Spawn, 1970071)
		if Fulkoir == nil then
			SpawnMob(Zone, 1970071, false, 45.4454, 37.7504, -110.193, 259.984)
		end
	end
end