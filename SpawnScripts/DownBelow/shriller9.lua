--[[
	Script Name		:	shriller9_1.lua
	Script Purpose	:	Waypoint Path for shriller9_1.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 11:35:58 PM
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
	MovementLoopAddLocation(NPC, 18.29, 2, -97.73, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 22.31, 2, -109.25, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 22.6, 2, -105.96, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 19.43, 2, -106.24, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 22.74, 2, -102.23, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 26.26, 2, -104.98, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 25.32, 2, -107.07, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 17.05, 2, -100.26, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 6.41, 2, -108.94, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 4.67, 2, -108.18, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.96, 2, -91.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -29.84, 2, -106.71, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.41, 2, -111.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.84, 2, -126.29, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.68, 2, -132.32, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.48, 2 -141.41, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -53.3, 2, -148.94, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -62.18, 2, -153.09, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.36, 2, -153.01, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.38, 2, -137.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -77.56, 2, -130.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.68, 2, -120.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.38, 2, -109.65, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -65.9, 2, -96.84, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -59.25, 2, -95.03, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -58.56, 2, -90.13, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.92, 2, -71.05, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.4, 2, -65.26, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -27.27, 2, -73.65, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.09, 2, -91, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -29.26, 2, -105.82, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.1, 2, -111.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.92, 2, -126.45, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.25, 2, -132.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.47, 2, -152.17, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.22, 2, -152.41, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.47, 2, -152.17, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.25, 2, -132.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.92, 2, -126.45, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.1, 2, -111.38, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -29.26, 2, -105.82, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.09, 2, -91, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -27.27, 2, -73.65, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.4, 2, -65.26, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.92, 2, -71.05, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -58.56, 2, -90.13, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -59.25, 2, -95.03, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -65.9, 2, -96.84, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.38, 2, -109.65, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.68, 2, -120.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -77.56, 2, -130.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.38, 2, -137.87, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.36, 2, -153.01, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -62.18, 2, -153.09, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -53.3, 2, -148.94, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.48, 2, -141.41, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.68, 2, -132.32, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.84, 2, -126.29, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.41, 2, -111.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -29.84, 2, -106.71, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.96, 2, -91.02, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 4.67, 2, -108.18, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 6.41, 2, -108.94, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 17.05, 2, -100.26, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 25.32, 2, -107.07, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 26.26, 2, -104.98, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 22.74, 2, -102.23, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 19.43, 2, -106.24, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 22.6, 2, -105.96, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 22.31, 2, -109.25, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, 18.29, 2, -97.73, 1, math.random(0,10))
end


