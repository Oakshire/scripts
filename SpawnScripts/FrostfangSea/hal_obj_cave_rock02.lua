--[[
	Script Name		:	SpawnScripts/FrostfangSea/hal_obj_cave_rock02.lua
	Script Purpose	:	this changes the size of the rocks in the velinoid caves
	Script Author	:	theFoof
	Script Date		:	2013.6.13
	Script Notes	:	this script is assigned to the rock with the location id 572711
--]]

local RyGorrOperations = 60

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 100, "SpawnAccess", "SpawnAccess")
	local zone = GetZone(NPC)
	SpawnSet(GetSpawnByLocationID(zone, 441161), "size", "28")
	SpawnSet(GetSpawnByLocationID(zone, 441162), "size", "10")
	SpawnSet(GetSpawnByLocationID(zone, 441160), "size", "13")
	SpawnSet(GetSpawnByLocationID(zone, 441157), "size", "22")
	SpawnSet(NPC, "size", "25")
end

function SpawnAccess(NPC, Spawn)
	if not HasCompletedQuest(Spawn, RyGorrOperations) then
		if GetQuestStep(Spawn, RyGorrOperations) < 2 then
			AddSpawnAccess(NPC, Spawn)
		end
	end
end