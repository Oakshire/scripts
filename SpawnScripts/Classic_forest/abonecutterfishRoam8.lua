--[[
    Script Name    : SpawnScripts/Classic_forest/abonecutterfishRoam8.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.13 03:10:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 6
    local hp1 = 200
    local power1 = 90
    local difficulty2 = 6
    local hp2 = 240
    local power2 = 100
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
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
	MovementLoopAddLocation(NPC, 1072.27, -24.37, -708.91, 1, 0)
	MovementLoopAddLocation(NPC, 1080.26, -24.37, -710.52, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1080.26, -24.37, -710.52, 1, 0)
	MovementLoopAddLocation(NPC, 1081.43, -24.34, -704.66, 1, 0)
	MovementLoopAddLocation(NPC, 1077.98, -24.37, -700.89, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1077.98, -24.37, -700.89, 1, 0)
	MovementLoopAddLocation(NPC, 1083.43, -24.36, -707.11, 1, 0)
	MovementLoopAddLocation(NPC, 1096.13, -24.34, -702.09, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1096.13, -24.35, -702.09, 1, 0)
	MovementLoopAddLocation(NPC, 1080.48, -24.32, -710.77, 1, 0)
	MovementLoopAddLocation(NPC, 1076.59, -24.35, -710.62, 1, 0)
	MovementLoopAddLocation(NPC, 1058.93, -24.33, -719.01, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1058.93, -24.37, -719.01, 1, 0)
	MovementLoopAddLocation(NPC, 1066.79, -24.34, -713.37, 1, 0)
	MovementLoopAddLocation(NPC, 1070.73, -24.39, -705.13, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1070.73, -24.39, -705.13, 1, 0)
	MovementLoopAddLocation(NPC, 1072.27, -24.37, -708.91, 1, math.random(5,10))
end

