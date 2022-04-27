--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428047.lua
	Script Purpose	:	Waypoint Path for agrovedeer428047.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:13 
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
	MovementLoopAddLocation(NPC, 99.87, -3.92, 198.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 81.42, -4.5, 218.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 76.54, -4.52, 223.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 105.76, -3.57, 188.19, 2, 0)
	MovementLoopAddLocation(NPC, 108.74, -4, 185.19, 2, 0)
	MovementLoopAddLocation(NPC, 124.84, -3.8, 165.03, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 94, -4.36, 174.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 121.28, -3.79, 163.16, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 109.99, -4, 180.5, 2, 0)
	MovementLoopAddLocation(NPC, 108.8, -4, 185.07, 2, 0)
	MovementLoopAddLocation(NPC, 103.53, -3.51, 190.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 115.18, -4.07, 188.45, 2, 0)
	MovementLoopAddLocation(NPC, 118.79, -4.09, 188.99, 2, 0)
	MovementLoopAddLocation(NPC, 121.88, -4.09, 188.87, 2, 0)
	MovementLoopAddLocation(NPC, 126.74, -3.97, 186.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 124.48, -3.96, 186.18, 2, 0)
	MovementLoopAddLocation(NPC, 118.1, -3.97, 186.39, 2, 0)
	MovementLoopAddLocation(NPC, 101.7, -3.53, 192.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 97.7, -4.01, 202.42, 2, math.random(10, 24))
end


