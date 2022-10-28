--[[
    Script Name    : SpawnScripts/Castleview/ashiningnibbler.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.29 04:01:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
     local Level = GetLevel(NPC)
    local level1 = 1
    local level2 = 2
    local level3 = 3
    local difficulty1 = 6
    local hp1 = 30
    local power1 = 25
    local difficulty2 = 6
    local hp2 = 45
    local power2 = 35
    local difficulty3 =6
    local hp3 = 75
    local power3 = 45
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
     elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
    end
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)==418671 then
	MovementLoopAddLocation(NPC, 805.12, -40.76, -109.95, 2, 0)
	MovementLoopAddLocation(NPC, 759.09, -42.80, -92.50, 2, 0)
	
	
	elseif GetSpawnLocationID(NPC)==418622 then
	MovementLoopAddLocation(NPC, 797.46, -41.43, -103.47, 2, 0)
	MovementLoopAddLocation(NPC, 749.28, -41.14, -93.90, 2, 0)
	end
end