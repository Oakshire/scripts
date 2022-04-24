--[[
	Script Name		:	rifter_hatchling5.lua
	Script Purpose	:	Waypoint Path for rifter_hatchling5.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:05:20 PM
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
	MovementLoopAddLocation(NPC, -144.6, -0.08, -143.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.48, -0.1, -137.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -129.02, -0.09, -135.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.27, -0.11, -137.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -155.85, -0.09, -137.78, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -157.38, -0.14, -133.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -166.64, 0.11, -119.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.4, 1.17, -124.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.29, 1.17, -121.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -159.8, -0.1, -116.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -158.4, 0.49, -106.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.57, -0.12, -83.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -166.32, -0.26, -74.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.22, -0.26, -74.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.88, -0.31, -87.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.22, -0.04, -92.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -197.31, -0.01, -94.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -199.23, -0.09, -102.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -190.77, -0.13, -105.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.41, -0.07, -105.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.76, 0.11, -112.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.91, 1.17, -123.43, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.4, 1.17, -121.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -168.03, -0.04, -119.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -160.48, -0.1, -119.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -159.2, -0.01, -134.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -151.18, 0.01, -137.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -129.98, -0.03, -137.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -151.18, 0.01, -137.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -159.2, -0.01, -134.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -160.48, -0.1, -119.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -168.03, -0.04, -119.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.4, 1.17, -121.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.91, 1.17, -123.43, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.76, 0.11, -112.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.41, -0.07, -105.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -190.77, -0.13, -105.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -199.23, -0.09, -102.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -197.31, -0.01, -94.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.22, -0.04, -92.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.88, -0.31, -87.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.22, -0.26, -74.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -166.32, -0.26, -74.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.57, -0.12, -83.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -158.4, 0.49, -106.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -159.8, -0.1, -116.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.29, 1.17, -121.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.4, 1.17, -124.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -166.64, 0.11, -119.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -157.38, -0.14, -133.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -155.85, -0.09, -137.78, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -148.27, -0.11, -137.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -129.02, -0.09, -135.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -145.48, -0.1, -137.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -144.6, -0.08, -143.13, 2, math.random(0,10))
end


