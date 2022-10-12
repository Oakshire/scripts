--[[
    Script Name    : SpawnScripts/Classic_forest/arockadderRoam2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 04:10:09
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
	MovementLoopAddLocation(NPC, 1029.24, -20.6, -605.15, 1, 0)
	MovementLoopAddLocation(NPC, 1024.65, -20.57, -606.07, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1024.65, -20.57, -606.07, 1, 0)
	MovementLoopAddLocation(NPC, 1027.29, -21.17, -603.02, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1027.29, -21.17, -603.02, 1, 0)
	MovementLoopAddLocation(NPC, 1027.01, -20.3, -606.72, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1027.01, -20.3, -606.72, 1, 0)
	MovementLoopAddLocation(NPC, 1031.39, -20.19, -606.71, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1031.39, -20.19, -606.71, 1, 0)
	MovementLoopAddLocation(NPC, 1029.24, -20.6, -605.15, 1, math.random(5,10))
end

