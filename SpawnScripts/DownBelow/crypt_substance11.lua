--[[
	Script Name		:	crypt_substance11.lua
	Script Purpose	:	Waypoint Path for crypt_substance11.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 12:18:10 PM
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
 spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -87.34, 0.35, -153.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.26, -0.09, -156.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.47, -0.06, -151.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -80.82, -0.06, -155.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -75.97, -0.06, -150.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71.54, -0.08, -152.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.22, -0.1, -152.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -67.89, -0.12, -146.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.8, -0.08, -137.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.49, -0.06, -135.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.64, 0.51, -127.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.59, -0.11, -122.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.36, -0.04, -118.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.06, -0.04, -121.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.92, -0.09, -114.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -123.27, 0.53, -119.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -128.03, 0.29, -128.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -137.08, 0.31, -135.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -155.84, -0.06, -136.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -160.32, -0.06, -127.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -155.84, -0.06, -136.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -137.08, 0.31, -135.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -128.03, 0.29, -128.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -123.27, 0.53, -119.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.92, -0.09, -114.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.06, -0.04, -121.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.36, -0.04, -118.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.59, -0.11, -122.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.64, 0.51, -127.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.49, -0.06, -135.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.8, -0.08, -137.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -67.89, -0.12, -146.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.22, -0.1, -152.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71.54, -0.08, -152.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -75.97, -0.06, -150.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -80.82, -0.06, -155.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.47, -0.06, -151.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.26, -0.09, -156.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.34, 0.35, -153.09, 2, math.random(0,10))
end


