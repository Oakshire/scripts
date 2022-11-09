--[[
	Script Name		:	crypt_substance9.lua
	Script Purpose	:	Waypoint Path for crypt_substance9.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 11:18:53 PM
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
	MovementLoopAddLocation(NPC, -32.19, 0.14, -108.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.08, 0.24, -105.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -29.04, 0.28, -109.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -29.94, -0.18, -102.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -26.1, -0.43, -107.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -27.42, -0.96, -100.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.21, -0.44, -98.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.63, -0.29, -95.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -16.4, 0.34, -95.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.8, 0.12, -92.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.64, 0.34, -95.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.91, -0.06, -111.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.01, -0.09, -114.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.14, -0.04, -114.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.4, -0.09, -114.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.52, 0.27, -123.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.73, -0.06, -124.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.56, -0.09, -121.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.36, -0.05, -118.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.89, 0.54, -126.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.97, 0.13, -128.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.57, 0.16, -128.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.23, -0.08, -134.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.85, 0.09, -132.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.34, -0.02, -129, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.21, -0.07, -128.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.54, 0.26, -118.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.35, -0.09, -118, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.04, 0.05, -124.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.35, -0.09, -118, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.54, 0.26, -118.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.21, -0.07, -128.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.34, -0.02, -129, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.85, 0.09, -132.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.23, -0.08, -134.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -35.57, 0.16, -128.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.97, 0.13, -128.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.89, 0.54, -126.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.36, -0.05, -118.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.56, -0.09, -121.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.73, -0.06, -124.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.52, 0.27, -123.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.4, -0.09, -114.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.14, -0.04, -114.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.01, -0.09, -114.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.91, -0.06, -111.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.64, 0.34, -95.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.8, 0.12, -92.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -16.4, 0.34, -95.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.63, -0.29, -95.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.21, -0.44, -98.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -27.42, -0.96, -100.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -26.1, -0.43, -107.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -29.94, -0.18, -102.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -29.04, 0.28, -109.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.08, 0.24, -105.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.19, 0.14, -108.66, 2, math.random(0,10))
end


