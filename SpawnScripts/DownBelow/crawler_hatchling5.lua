--[[
	Script Name		:	crawler_hatchling5.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling5.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 02:50:11 PM
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
	MovementLoopAddLocation(NPC, -19.88, -0.1, -80.81, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -22.24, -0.01, -83.13, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.97, -0.12, -80.78, 1, 0)
	MovementLoopAddLocation(NPC, -29.52, 0.31, -69.66, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.39, -0.07, -75.37, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.39, -0.04, -76.72, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.9, -0.09, -65.14, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.45, -0.07, -74.03, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.27, -0.04, -68.44, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.18, -0.03, -70.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.82, -0.07, -69.2, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -48.41, -0.12, -67.65, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.18, -0.08, -70.95, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.92, -0.09, -63.3, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.02, -0.09, -73.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.15, -0.09, -72.18, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -19, -0.08, -73.98, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.63, -0.08, -68.86, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -17.85, -0.08, -73.27, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -28.95, -0.14, -74.62, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -17.85, -0.08, -73.27, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.63, -0.08, -68.86, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -19, -0.08, -73.98, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.15, -0.09, -72.18, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.02, -0.09, -73.34, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.92, -0.09, -63.3, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.18, -0.08, -70.95, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -48.41, -0.12, -67.65, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.82, -0.07, -69.2, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.18, -0.03, -70.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.27, -0.04, -68.44, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.45, -0.07, -74.03, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.9, -0.09, -65.14, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.39, -0.04, -76.72, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.39, -0.07, -75.37, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -29.52, 0.31, -69.66, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.97, -0.12, -80.78, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -22.24, -0.01, -83.13, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.88, -0.1, -80.81, 1, math.random(0,10))
end


