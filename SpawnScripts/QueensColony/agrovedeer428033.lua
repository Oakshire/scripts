--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428033.lua
	Script Purpose	:	Waypoint Path for agrovedeer428033.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:49 
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
	MovementLoopAddLocation(NPC, 80.31, -4.39, 226.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 84.44, -4.55, 216.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 89.36, -4.37, 217.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 66.88, -4, 220.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.21, -4.37, 218.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 66.7, -4.17, 221.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 72.02, -4.51, 224.78, 2, 0)
	MovementLoopAddLocation(NPC, 75.85, -4.44, 227.77, 2, 0)
	MovementLoopAddLocation(NPC, 77.7, -4.33, 228.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 84.3, -4.4, 212.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 83.97, -4.55, 216.93, 2, 0)
	MovementLoopAddLocation(NPC, 83.76, -4.47, 224.08, 2, math.random(10, 24))
end


