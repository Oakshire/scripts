--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon1587694.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon1587694.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:08:40 
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
	MovementLoopAddLocation(NPC, 251.99, 1.6, 29.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 257.47, 1.62, 47.36, 2, 0)
	MovementLoopAddLocation(NPC, 256.26, 1.65, 52.34, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 258.22, -0.4, 65.35, 2, 0)
	MovementLoopAddLocation(NPC, 254.15, -2.12, 85.11, 2, 0)
	MovementLoopAddLocation(NPC, 255.91, -3.08, 92.2, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.22, -2.04, 68.01, 2, 0)
	MovementLoopAddLocation(NPC, 238.75, -1.51, 61.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 238.93, -1.77, 70.93, 2, 0)
	MovementLoopAddLocation(NPC, 237.3, -1.95, 81.86, 2, 0)
	MovementLoopAddLocation(NPC, 239.16, -2.19, 91.05, 2, 0)
	MovementLoopAddLocation(NPC, 242.77, -2.22, 95.64, 2, 0)
	MovementLoopAddLocation(NPC, 251.43, -2.37, 98.24, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 254.59, -1.66, 93.65, 2, 0)
	MovementLoopAddLocation(NPC, 256.24, 0.82, 87.3, 2, 0)
	MovementLoopAddLocation(NPC, 256.62, 1.73, 78.12, 2, 0)
	MovementLoopAddLocation(NPC, 259.62, 2.37, 61.27, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.9, 2.16, 58.72, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 253.94, 1.55, 64.51, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 252.7, 1.63, 54.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 241.95, -2.55, 88.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 241.6, 2.21, 62.24, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 248.31, 1.92, 58.71, 2, 0)
	MovementLoopAddLocation(NPC, 255.9, 1.58, 49.23, 2, math.random(10, 24))
end