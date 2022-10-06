--[[
    Script Name    : SpawnScripts/Caves/analbinoarachnid1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.05 08:10:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 11
    local difficulty1 = 6
    local hp1 = 370
    local power1 = 130
    local difficulty2 = 6
    local hp2 = 430
    local power2 = 160
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
	MovementLoopAddLocation(NPC, -2.73, 38.7, -46.19, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 1.9, 37.87, -55.85, 2,math.random(5,10))
	MovementLoopAddLocation(NPC, 1.9, 37.87, -55.85, 2, 0)
	MovementLoopAddLocation(NPC, -17.81, 38.72, -56.29, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -17.81, 38.72, -56.29, 2, 0)
	MovementLoopAddLocation(NPC, 5.24, 37.3, -46.26, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 5.24, 37.3, -46.26, 2, 0)
	MovementLoopAddLocation(NPC, 2.87, 37.87, -36.13, 2, 0)
	MovementLoopAddLocation(NPC, 12.74, 37.87, -29.4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 12.74, 37.87, -29.4, 2, 0)
	MovementLoopAddLocation(NPC, 1.1, 37.87, -27.58, 2, 0)
	MovementLoopAddLocation(NPC, 3.83, 37.87, -36.32, 2, 0)
	MovementLoopAddLocation(NPC, -9.29, 38.18, -42.59, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -9.29, 38.18, -42.59, 2, 0)
	MovementLoopAddLocation(NPC, -9.28, 38.72, -50.7, 2,math.random(5,10))
	MovementLoopAddLocation(NPC, -9.28, 38.72, -50.7, 2, 0)
	MovementLoopAddLocation(NPC, -9.81, 37.87, -39.81, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -9.81, 37.87, -39.81, 2, 0)
	MovementLoopAddLocation(NPC, -2.73, 38.7, -46.19, 2, 0)
end

