--[[
    Script Name    : SpawnScripts/Caves/analbinoarachnid2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.05 10:10:35
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
	MovementLoopAddLocation(NPC, -6.02, 38.72, -53.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2.99, 38.25, -56.9, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2.99, 38.25, -56.9, 2, 0)
	MovementLoopAddLocation(NPC, -7.82, 37.9, -40.97, 2, 0)
	MovementLoopAddLocation(NPC, -15.16, 37.87, -40.58, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -15.16, 37.87, -40.58, 2, 0)
	MovementLoopAddLocation(NPC, -0.99, 37.87, -25.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -0.99, 37.87, -25.41, 2, 0)
	MovementLoopAddLocation(NPC, -3.47, 37.87, -30.42, 2, 0)
	MovementLoopAddLocation(NPC, 7.91, 37.14, -44.78, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 7.91, 37.14, -44.78, 2, 0)
	MovementLoopAddLocation(NPC, -10.02, 37.87, -37.48, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -10.02, 37.87, -37.48, 2, 0)
	MovementLoopAddLocation(NPC, -15.52, 38.64, -52.3, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -15.52, 38.64, -52.3, 2, 0)
	MovementLoopAddLocation(NPC, -6.02, 38.72, -53.84, 2, 0)
end

