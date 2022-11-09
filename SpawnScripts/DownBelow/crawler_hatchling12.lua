--[[
	Script Name		:	crawler_hatchling12.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling12.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 02:00:04 AM
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
	MovementLoopAddLocation(NPC, -160.24, -0.08, -94.26, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -155.9, -0.06, -97.09, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -150.12, -0.01, -94.01, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -152.65, -0.04, -91.21, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -152.4, -0.09, -87.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -147.3, -0.01, -88.49, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -143.49, -0.08, -78.58, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -146.05, -0.1, -77.6, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -144.78, -0.08, -74.31, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -141.76, -0.08, -75.13, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -146.77, -0.08, -72.33, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -145.39, -0.08, -73.91, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -145.31, -0.08, -75.92, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -148.67, -0.14, -82.22, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -150.86, -0.05, -81.04, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -161.26, -0.22, -76.24, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -167.44, -0.24, -72.35, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -166.94, -0.22, -75.62, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -157.94, -0.07, -82.4, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -151.22, -0.06, -84.44, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -157.94, -0.07, -82.4, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -166.94, -0.22, -75.62, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -167.44, -0.24, -72.35, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -161.26, -0.22, -76.24, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -150.86, -0.05, -81.04, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -148.67, -0.14, -82.22, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -145.31, -0.08, -75.92, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -145.39, -0.08, -73.91, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -146.77, -0.08, -72.33, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -141.76, -0.08, -75.13, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -144.78, -0.08, -74.31, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -146.05, -0.1, -77.6, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -143.49, -0.08, -78.58, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -147.3, -0.01, -88.49, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -152.4, -0.09, -87.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -152.65, -0.04, -91.21, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -150.12, -0.01, -94.01, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -155.9, -0.06, -97.09, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -160.24, -0.08, -94.26, 1, math.random(0,5))
end


