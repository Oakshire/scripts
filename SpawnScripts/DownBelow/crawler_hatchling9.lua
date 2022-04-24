--[[
	Script Name		:	crawler_hatchling9.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling9.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 12:50:10 PM
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
	MovementLoopAddLocation(NPC, -182.12, -0.1, -190.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.06, -0.09, -192.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.67, -0.09, -193, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.28, -0.04, -186.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -181.99, 0.07, -186.79, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.04, -0.11, -188.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.05, -0.08, -188.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.63, -0.14, -186.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.69, 0, -178.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -167.24, 0.14, -171.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -156.51, -0.36, -172.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -137.41, -0.32, -179.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -132.36, 0.48, -180.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -123.2, 0.53, -179.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.04, 0.11, -173.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.19, 0.35, -153.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -127.33, -0.06, -145.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -129.52, -0.05, -136.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -125.65, -0.15, -125.91, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.92, 0.52, -120.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.63, -0.08, -114.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.6, -0.05, -118.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.16, -0.05, -136.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.13, 0.16, -142.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.41, -0.11, -139.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.99, -0.11, -133.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71.67, -0.05, -145.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.94, -0.05, -154.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71.67, -0.05, -145.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.99, -0.11, -133.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.41, -0.11, -139.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.13, 0.16, -142.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.16, -0.05, -136.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.6, -0.05, -118.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.63, -0.08, -114.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.92, 0.52, -120.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -125.65, -0.15, -125.91, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -129.52, -0.05, -136.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -127.33, -0.06, -145.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.19, 0.35, -153.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.04, 0.11, -173.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -123.2, 0.53, -179.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -132.36, 0.48, -180.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -137.41, -0.32, -179.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -156.51, -0.36, -172.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -167.24, 0.14, -171.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.69, 0, -178.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.63, -0.14, -186.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.05, -0.08, -188.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.04, -0.11, -188.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -181.99, 0.07, -186.79, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.28, -0.04, -186.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.67, -0.09, -193, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.06, -0.09, -192.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.12, -0.1, -190.74, 2, math.random(0,10))
end


