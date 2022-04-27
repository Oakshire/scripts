--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428040.lua
	Script Purpose	:	Waypoint Path for agrovedeer428040.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:50 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 1
    local level2 = 2
    local difficulty1 = 6
    local hp1 = 30
    local power1 = 25
    local difficulty2 = 6
    local hp2 = 45
    local power2 = 35
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 106.87, -4, 169.24, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 99.66, -4, 204.03, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.1, -4.08, 180.72, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 97.13, -4.07, 176.8, 2, 0)
	MovementLoopAddLocation(NPC, 99.71, -4.03, 174.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 106.93, -4.16, 198.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 104.14, -4, 179.68, 2, 0)
	MovementLoopAddLocation(NPC, 101.56, -3.99, 162.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 93.35, -4.21, 179.07, 2, 0)
	MovementLoopAddLocation(NPC, 93.07, -4.22, 182.97, 2, 0)
	MovementLoopAddLocation(NPC, 87, -4.36, 190.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.53, -4.36, 193.44, 2, 0)
	MovementLoopAddLocation(NPC, 94.54, -4.2, 206.18, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.98, -4.31, 205.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 101.45, -3.51, 190.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.74, -4.53, 201.66, 2, 0)
	MovementLoopAddLocation(NPC, 81.52, -4.09, 205.48, 2, 0)
	MovementLoopAddLocation(NPC, 79.58, -3.95, 206.47, 2, 0)
	MovementLoopAddLocation(NPC, 74.69, -3.8, 211.64, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 80.41, -4.53, 196.11, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.41, -4.36, 190.36, 2, 0)
	MovementLoopAddLocation(NPC, 96.17, -4.07, 181.52, 2, 0)
	MovementLoopAddLocation(NPC, 96.85, -4.04, 178.93, 2, 0)
end

