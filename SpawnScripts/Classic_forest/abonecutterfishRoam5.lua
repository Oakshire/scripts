--[[
    Script Name    : SpawnScripts/Classic_forest/abonecutterfishRoam5.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.13 03:10:03
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
	MovementLoopAddLocation(NPC, 1036.76, -24.38, -736.45, 1, 0)
	MovementLoopAddLocation(NPC, 1043.73, -24.33, -739.45, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1043.73, -24.35, -739.45, 1, 0)
	MovementLoopAddLocation(NPC, 1029.97, -24.35, -736.63, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1029.97, -24.37, -736.63, 1, 0)
	MovementLoopAddLocation(NPC, 1036.23, -24.32, -720.92, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1036.23, -24.37, -720.92, 1, 0)
	MovementLoopAddLocation(NPC, 1036.96, -24.33, -731.61, 1, 0)
	MovementLoopAddLocation(NPC, 1039.8, -24.35, -733.65, 1, 0)
	MovementLoopAddLocation(NPC, 1056.16, -24.37, -725.61, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1056.16, -24.37, -725.61, 1, 0)
	MovementLoopAddLocation(NPC, 1041.03, -24.32, -741.53, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1041.03, -24.34, -741.53, 1, 0)
	MovementLoopAddLocation(NPC, 1036.76, -24.38, -736.45, 1, math.random(5,10))
end

