--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428035.lua
	Script Purpose 	:	Waypoint Path for agrovedeer428035.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:55 
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
	MovementLoopAddLocation(NPC, 87.19, -4.54, 215.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 79.64, -4.54, 223.12, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.43, -4.37, 220.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 73.98, -3.8, 216.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 81.12, -4.42, 217.9, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 66.59, -4.36, 223.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 72.9, -3.8, 217.86, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.44, -4.37, 218.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 55.99, -4.45, 222.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 67.74, -3.8, 216, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 71.97, -4.02, 220.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 81.34, -4.45, 217.82, 2, math.random(10, 24))
end


