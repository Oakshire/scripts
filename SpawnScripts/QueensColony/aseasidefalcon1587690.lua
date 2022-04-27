--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon1587690.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon1587690.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:07:59 
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
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 241.55, -1.5, 35.56, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 249.4, 0.2, 59.01, 2, 0)
	MovementLoopAddLocation(NPC, 249.53, 1.49, 69.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 256.33, -0.56, 92.93, 2, 0)
	MovementLoopAddLocation(NPC, 263.13, -1.83, 104.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 255.78, -1.89, 103.83, 2, 0)
	MovementLoopAddLocation(NPC, 246.48, -1.99, 90.76, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.2, -2.36, 101.29, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 239.56, 0.94, 65.99, 2, 0)
	MovementLoopAddLocation(NPC, 239.04, 1.5, 61.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 234.8, 1.68, 39.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 243.19, 1.6, 40.13, 2, 0)
	MovementLoopAddLocation(NPC, 247.16, 1.51, 39.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 254.4, 0.94, 47.56, 2, 0)
	MovementLoopAddLocation(NPC, 255.54, -1.5, 72.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 246.17, 1.69, 64.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 257.19, 1.52, 69.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 259.06, 0.94, 60.87, 2, 0)
	MovementLoopAddLocation(NPC, 252.8, -0.13, 50.86, 2, 0)
end