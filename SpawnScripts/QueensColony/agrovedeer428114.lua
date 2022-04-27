--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428114.lua
	Script Purpose	:	Waypoint Path for agrovedeer428114.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:30 
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
	MovementLoopAddLocation(NPC, 58.82, -4.14, 215.07, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 60.66, -3.95, 216.31, 2, 0)
	MovementLoopAddLocation(NPC, 77.01, -4.53, 223.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 69.69, -4.02, 220.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 56.06, -4.25, 218.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 62.9, -3.8, 215.98, 2, 0)
	MovementLoopAddLocation(NPC, 66.05, -3.8, 212.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 78.13, -3.81, 212.95, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 68.66, -3.8, 218.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 65.79, -3.8, 213.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 59.46, -4.46, 222.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 72.81, -3.8, 214.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 60.97, -3.91, 216.17, 2, 0)
end


