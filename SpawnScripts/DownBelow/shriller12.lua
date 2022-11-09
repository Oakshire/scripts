--[[
	Script Name		:	shriller11_1.lua
	Script Purpose	:	Waypoint Path for shriller11_1.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 12:38:50 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 110
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 65
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
	MovementLoopAddLocation(NPC, -41.55, 2, -79.73, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.24, 2, -74.33, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.86, 2, -76.24, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.85, 2, -75.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.92, 2, -80.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.39, 2, -76.84, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.81, 2, -78.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.31, 2, -75.6, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.76, 2, -74.68, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.32, 2, -79.31, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.7, 2, -75.33, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.21, 2, -80.72, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.16, 2, -79.48, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.85, 2, -76.26, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.38, 2, -77.26, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.9, 2, -79.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.14, 2, -78.63, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.43, 2, -77.63, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.14, 2, -78.63, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.9, 2, -79.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.38, 2, -77.26, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.85, 2, -76.26, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.16, 2, -79.48, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.21, 2, -80.72, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.7, 2, -75.33, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.32, 2, -79.31, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.76, 2, -74.68, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.31, 2, -75.6, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.81, 2, -78.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.39, 2, -76.84, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.92, 2, -80.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.85, 2, -75.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.86, 2, -76.24, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.24, 2, -74.33, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.55, 2, -79.73, 1, math.random(0,10))
end


