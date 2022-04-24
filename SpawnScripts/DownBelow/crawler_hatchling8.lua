--[[
	Script Name		:	crawler_hatchling_1.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling_1.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 12:13:24 PM
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
	MovementLoopAddLocation(NPC, -83.21, -0.09, -150.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -79.01, -0.07, -154.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.94, -0.04, -154.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71.9, -0.06, -144.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -77.81, -0.08, -136.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.24, -0.06, -136.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.02, 0.5, -125.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.03, -0.11, -121.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -108.93, -0.09, -113.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.59, 0.57, -120.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -125.38, -0.1, -126.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -129.3, -0.07, -136.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -129.05, -0.09, -142.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.32, 0.42, -152.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -118.78, -0.12, -167.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.32, 0.42, -152.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -129.05, -0.09, -142.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -129.3, -0.07, -136.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -125.38, -0.1, -126.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.59, 0.57, -120.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -108.93, -0.09, -113.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.03, -0.11, -121.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.02, 0.5, -125.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.24, -0.06, -136.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -77.81, -0.08, -136.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71.9, -0.06, -144.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.94, -0.04, -154.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -79.01, -0.07, -154.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.21, -0.09, -150.84, 2, math.random(0,10))
end


