--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428046.lua
	Script Purpose	:	Waypoint Path for agrovedeer428046.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:10 
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
	MovementLoopAddLocation(NPC, 74.8, -3.8, 204.22, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 76.22, -3.8, 203.97, 2, 0)
	MovementLoopAddLocation(NPC, 108.63, -3.89, 187.13, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 99.9, -4, 204.11, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 117.68, -3.89, 184.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 128.75, -3.6, 174.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 127.3, -3.6, 174.22, 2, 0)
	MovementLoopAddLocation(NPC, 125.97, -3.6, 173.02, 2, 0)
	MovementLoopAddLocation(NPC, 119.5, -3.6, 170.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 117.32, -3.61, 173.5, 2, 0)
	MovementLoopAddLocation(NPC, 113.83, -3.8, 177.72, 2, 0)
	MovementLoopAddLocation(NPC, 108.45, -4, 180.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 107.34, -4, 181.47, 2, 0)
	MovementLoopAddLocation(NPC, 105, -4, 182.51, 2, 0)
	MovementLoopAddLocation(NPC, 80.75, -4.53, 197.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 91.19, -4.2, 211.03, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 95.98, -4.09, 201.03, 2, math.random(10, 24))
end


