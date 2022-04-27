--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428034.lua
	Script Purpose	:	Waypoint Path for agrovedeer428034.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:52 
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
	MovementLoopAddLocation(NPC, 81.23, -4.35, 226.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 63.95, -3.8, 218.32, 2, 0)
	MovementLoopAddLocation(NPC, 61.1, -3.9, 216.09, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 63.9, -4.48, 226.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 67.62, -4.49, 226.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 90.31, -4.35, 213.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.93, -4.55, 219.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 75.09, -3.8, 211.76, 2, math.random(10, 24))
end


