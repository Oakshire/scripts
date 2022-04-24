--[[
	Script Name		:	shriller11_1.lua
	Script Purpose	:	Waypoint Path for shriller11_1.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 12:38:50 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 130
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
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -41.55, 0.27, -79.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.24, -0.09, -74.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.86, -0.09, -76.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.85, -0.1, -75.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.92, -0.09, -80.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.39, 0.63, -76.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.81, 0.63, -78.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.31, -0.1, -75.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.76, -0.1, -74.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.32, 0.09, -79.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.7, -0.1, -75.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.21, 0.27, -80.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.16, 0.27, -79.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.85, -0.11, -76.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.38, -0.1, -77.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.9, -0.1, -79.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.14, -0.1, -78.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.43, -0.1, -77.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.14, -0.1, -78.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.9, -0.1, -79.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.38, -0.1, -77.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.85, -0.11, -76.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.16, 0.27, -79.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.21, 0.27, -80.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.7, -0.1, -75.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.32, 0.09, -79.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.76, -0.1, -74.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.31, -0.1, -75.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.81, 0.63, -78.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.39, 0.63, -76.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -38.92, -0.09, -80.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.85, -0.1, -75.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.86, -0.09, -76.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.24, -0.09, -74.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.55, 0.27, -79.73, 2, math.random(0,10))
end


