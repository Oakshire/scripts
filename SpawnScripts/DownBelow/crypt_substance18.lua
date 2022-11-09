--[[
	Script Name		:	crypt_substance18.lua
	Script Purpose	:	Waypoint Path for crypt_substance18.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 02:11:05 AM
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
	MovementLoopAddLocation(NPC, -148.87, -0.1, -85.92, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -145.25, -0.08, -76.25, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -144.36, -0.09, -79.46, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -149.8, -0.04, -81.53, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -147.07, -0.02, -88.38, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -153.07, -0.09, -87.72, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -150.01, -0.11, -91.7, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -152.92, -0.03, -91.31, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -153.83, -0.09, -102.02, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -158.05, -0.08, -101.9, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -155.85, 0.27, -105.99, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -158.64, 0.47, -106.09, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -161.27, -0.07, -112.95, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -156.26, -0.02, -114.61, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -161.16, -0.04, -122.68, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -155.61, -0.09, -125.46, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -160.44, -0.04, -125.18, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -159.89, 0.03, -132.77, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -154.45, -0.08, -138.3, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -140.27, -0.05, -137.89, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -130.11, -0.03, -137.5, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -126.79, -0.07, -129.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -122.28, 0.55, -120.38, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -114.07, -0.11, -113.77, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -102.84, -0.07, -117.55, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -84.05, -0.09, -140.37, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -102.84, -0.07, -117.55, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -114.07, -0.11, -113.77, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -122.28, 0.55, -120.38, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -126.79, -0.07, -129.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -130.11, -0.03, -137.5, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -140.27, -0.05, -137.89, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -154.45, -0.08, -138.3, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -159.89, 0.03, -132.77, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -160.44, -0.04, -125.18, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -155.61, -0.09, -125.46, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -161.16, -0.04, -122.68, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -156.26, -0.02, -114.61, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -161.27, -0.07, -112.95, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -158.64, 0.47, -106.09, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -155.85, 0.27, -105.99, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -158.05, -0.08, -101.9, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -153.83, -0.09, -102.02, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -152.92, -0.03, -91.31, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -150.01, -0.11, -91.7, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -153.07, -0.09, -87.72, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -147.07, -0.02, -88.38, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -149.8, -0.04, -81.53, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -144.36, -0.09, -79.46, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -145.25, -0.08, -76.25, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -148.87, -0.1, -85.92, 1, math.random(0,5))
end


