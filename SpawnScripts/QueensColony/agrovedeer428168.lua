--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428168.lua
	Script Purpose	:	Waypoint Path for agrovedeer428168.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:47 
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
	MovementLoopAddLocation(NPC, 76.4, -3.8, 214.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 84.37, -4.55, 216.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 81.14, -4.54, 221.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 68.11, -4.49, 224.6, 2, 0)
	MovementLoopAddLocation(NPC, 64.1, -4.48, 225.96, 2, 0)
	MovementLoopAddLocation(NPC, 62.58, -4.48, 225.36, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 63.58, -4.48, 224.29, 2, 0)
	MovementLoopAddLocation(NPC, 62.57, -3.8, 218.9, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 58.7, -4.26, 220.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 78.27, -4.52, 220.9, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.2, -4.38, 225.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 89.07, -4.37, 219.01, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 63.94, -4.2, 221.57, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 71.91, -3.8, 211.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 76.03, -3.99, 218.88, 2, math.random(10, 24))
end


