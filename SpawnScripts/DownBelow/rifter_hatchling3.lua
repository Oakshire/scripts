--[[
	Script Name		:	rifter_hatchling3.lua
	Script Purpose	:	Waypoint Path for rifter_hatchling3.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 02:30:35 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
          local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 215
    local power2 = 215
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
	MovementLoopAddLocation(NPC, -128.28, 0.3, -128.03, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.26, 0.55, -119.95, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.26, 0.21, -128.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.34, -0.07, -142.95, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.42, 0.1, -154.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.4, 0.29, -151.86, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.32, -0.1, -145.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.07, -0.06, -137.65, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -140.47, -0.04, -138.02, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -145.65, -0.06, -138.2, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -152.68, -0.14, -135.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.42, -0.07, -136.59, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.5, -0.07, -127.73, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -155.92, -0.05, -119.43, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -180.08, 1.17, -118.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -181.63, -0.03, -108.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -198.44, -0.08, -102.86, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -198.59, 0, -100.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -198.75, -0.04, -94.03, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -186.36, -0.05, -93.43, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -178.34, -0.28, -87.05, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -177.03, -0.26, -74.34, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -163.94, -0.25, -76.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -149.05, -0.12, -84.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.63, -0.09, -118.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -149.05, -0.12, -84.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -163.94, -0.25, -76.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -177.03, -0.26, -74.34, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -178.34, -0.28, -87.05, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -186.36, -0.05, -93.43, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -198.75, -0.04, -94.03, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -198.59, 0, -100.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -198.44, -0.08, -102.86, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -181.63, -0.03, -108.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -180.08, 1.17, -118.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -155.92, -0.05, -119.43, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.5, -0.07, -127.73, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.42, -0.07, -136.59, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -152.68, -0.14, -135.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -145.65, -0.06, -138.2, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -140.47, -0.04, -138.02, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.07, -0.06, -137.65, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.32, -0.1, -145.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.4, 0.29, -151.86, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.42, 0.1, -154.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.34, -0.07, -142.95, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.26, 0.21, -128.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.26, 0.55, -119.95, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.28, 0.3, -128.03, 2, math.random(0,20))
end


