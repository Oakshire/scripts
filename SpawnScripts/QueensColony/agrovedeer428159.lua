--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428159.lua
	Script Purpose	:	Waypoint Path for agrovedeer428159.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:44 
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
	MovementLoopAddLocation(NPC, 74.54, -4.41, 221.86, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 60.75, -3.94, 218.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 85.22, -4.56, 217.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 76.05, -4.52, 223.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 74.19, -4.52, 225.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 80.28, -4.31, 217.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 62.73, -4.1, 220.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 78.56, -4.34, 228.01, 2, math.random(10, 24))
end


