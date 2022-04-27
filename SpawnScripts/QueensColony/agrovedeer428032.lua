--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428032.lua
	Script Purpose	:	Waypoint Path for agrovedeer428032.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:23 
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
	MovementLoopAddLocation(NPC, 58.67, -4.18, 216.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 65.76, -4.49, 223.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 84.08, -4.55, 218.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 61.63, -4.47, 222.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 85.18, -4.56, 216.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 63.52, -3.8, 211.98, 2, 0)
	MovementLoopAddLocation(NPC, 59.65, -3.99, 211.9, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 84.32, -4.4, 211.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 75.72, -4.52, 226.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 72.19, -4.51, 224.18, 2, 0)
	MovementLoopAddLocation(NPC, 69.25, -4.37, 223.03, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 71.87, -4.51, 223.9, 2, 0)
	MovementLoopAddLocation(NPC, 77.81, -4.33, 228.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 68.67, -4.41, 228.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 83.84, -4.51, 223.66, 2, math.random(10, 24))
end


