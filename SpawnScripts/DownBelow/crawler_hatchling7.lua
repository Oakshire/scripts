--[[
	Script Name		:	crawler_hatchling7.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling7.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 04:27:42 PM
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
	MovementLoopAddLocation(NPC, -41.38, -0.64, -138.2, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.68, 0.04, -146.16, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -58.77, -0.07, -154.49, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.79, -0.07, -155.4, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -81.43, 0.1, -151.98, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.7, -0.09, -157.57, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.96, -0.08, -170.28, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.01, -0.07, -169.56, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -91.93, -0.08, -162.1, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.47, -0.06, -160.63, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.9, -0.08, -158.3, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.53, -0.09, -158.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.35, -0.09, -156.31, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.43, -0.09, -155.77, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.5, -0.03, -152.06, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -80.46, -0.04, -154.86, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -79.3, -0.06, -150, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.08, -0.09, -154.37, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -75.97, -0.04, -150.55, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.55, -0.08, -155.09, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.62, -0.06, -154.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.07, -0.07, -153.64, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.27, -0.08, -142.25, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.41, -0.08, -137.24, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.88, -0.08, -135.54, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -96, 0.44, -127.53, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -107.19, -0.13, -115.67, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -111.21, -0.09, -115.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -115.42, -0.07, -116.78, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -122.35, 0.55, -120.17, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -125.74, -0.14, -126.73, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -122.35, 0.55, -120.17, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -115.42, -0.07, -116.78, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -111.21, -0.09, -115.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -107.19, -0.13, -115.67, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -96, 0.44, -127.53, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.88, -0.08, -135.54, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.41, -0.08, -137.24, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.27, -0.08, -142.25, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.07, -0.07, -153.64, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.62, -0.06, -154.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.55, -0.08, -155.09, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -75.97, -0.04, -150.55, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.08, -0.09, -154.37, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -79.3, -0.06, -150, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -80.46, -0.04, -154.86, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.5, -0.03, -152.06, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.43, -0.09, -155.77, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.35, -0.09, -156.31, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.53, -0.09, -158.58, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.9, -0.08, -158.3, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.47, -0.06, -160.63, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -91.93, -0.08, -162.1, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.01, -0.07, -169.56, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.96, -0.08, -170.28, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.7, -0.09, -157.57, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -81.43, 0.1, -151.98, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.79, -0.07, -155.4, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -58.77, -0.07, -154.49, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.68, 0.04, -146.16, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.38, -0.64, -138.2, 1, math.random(0,10))
end


