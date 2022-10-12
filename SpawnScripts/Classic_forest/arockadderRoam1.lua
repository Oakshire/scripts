--[[
    Script Name    : SpawnScripts/Classic_forest/arockadderRoam1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 04:10:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local level3 = 7
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
    local difficulty3 =6
    local hp3 = 200
    local power3 = 90
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
	MovementLoopAddLocation(NPC, 1034.02, -21.58, -596.64, 1, 0)
	MovementLoopAddLocation(NPC, 1038.07, -21.11, -597.86, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1038.07, -21.11, -597.86, 1, 0)
	MovementLoopAddLocation(NPC, 1030.29, -21.66, -592.36, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1030.29, -21.66, -592.36, 1, 0)
	MovementLoopAddLocation(NPC, 1030.68, -21.71, -597.55, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1030.68, -21.71, -597.55, 1, 0)
	MovementLoopAddLocation(NPC, 1037.06, -21.33, -596.61, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1037.06, -21.33, -596.61, 1, 0)
	MovementLoopAddLocation(NPC, 1034.02, -21.58, -596.64, 1, math.random(5,10))
end

