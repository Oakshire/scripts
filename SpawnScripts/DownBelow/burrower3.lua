--[[
	Script Name		:	burrower3.lua
	Script Purpose	:	Waypoint Path for burrower3.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 03:57:48 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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
	MovementLoopAddLocation(NPC, -51.54, -0.09, -65.8, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -50.08, -0.06, -70.86, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.36, -0.08, -69.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -51.72, -0.04, -74.03, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.37, -0.07, -72.05, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -53.39, -0.07, -78.04, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -58, -0.06, -76.25, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.06, -0.1, -77.57, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.03, -0.08, -72.22, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -50.28, -0.11, -65.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.98, -0.09, -63.27, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.4, -0.1, -68.74, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -44.59, -0.11, -66.43, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.63, -0.07, -70.99, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.35, -0.08, -73.1, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.12, -0.04, -71.05, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.41, -0.08, -65.95, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.18, -0.03, -71.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.16, -0.09, -80.77, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.52, -0.11, -77.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.66, -0.08, -66.77, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.4, -0.05, -68.14, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.22, -0.07, -73.55, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -49.3, -0.09, -64.66, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -49.92, -0.06, -70.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.25, -0.08, -68.83, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.33, -0.03, -64.17, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.21, -0.1, -68.8, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.33, -0.03, -64.17, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.25, -0.08, -68.83, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -49.92, -0.06, -70.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -49.3, -0.09, -64.66, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.22, -0.07, -73.55, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.4, -0.05, -68.14, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.66, -0.08, -66.77, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.52, -0.11, -77.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.16, -0.09, -80.77, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.18, -0.03, -71.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.41, -0.08, -65.95, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.12, -0.04, -71.05, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.35, -0.08, -73.1, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.63, -0.07, -70.99, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -44.59, -0.11, -66.43, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.4, -0.1, -68.74, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.98, -0.09, -63.27, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -50.28, -0.11, -65.89, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.03, -0.08, -72.22, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.06, -0.1, -77.57, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -58, -0.06, -76.25, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -53.39, -0.07, -78.04, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.37, -0.07, -72.05, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -51.72, -0.04, -74.03, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.36, -0.08, -69.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -50.08, -0.06, -70.86, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -51.54, -0.09, -65.8, 1, math.random(0,10))
end


