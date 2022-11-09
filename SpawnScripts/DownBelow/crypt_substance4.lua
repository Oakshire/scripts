--[[
	Script Name		:	crypt_substance4.lua
	Script Purpose	:	Waypoint Path for crypt_substance4.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 08:24:10 PM
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
	MovementLoopAddLocation(NPC, 1.68, -0.08, -60.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 12.77, -0.04, -60.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 12.3, -0.05, -62.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 12.13, -0.07, -58.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.78, -0.08, -63.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 17.79, -0.05, -66.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 22.94, -0.04, -66.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.49, 0.03, -66.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.04, -0.03, -58.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.69, -0.04, -62.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.14, -0.06, -59.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.31, -0.05, -58.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -6.86, -0.09, -57.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.6, 0.53, -53.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.77, -0.03, -50.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -16.53, -0.02, -49.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.18, 0.59, -45.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -16.62, -0.09, -40.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.76, -0.07, -39.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.47, -0.1, -36.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.67, -0.1, -29.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.51, 0.52, -27.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.12, -0.12, -21.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.17, -0.09, -12.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.94, -0.09, -11.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -7.39, -0.09, -10.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.57, -0.09, -6.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.05, -4.47, -0.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.57, -0.09, -6.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -7.39, -0.09, -10.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.94, -0.09, -11.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.17, -0.09, -12.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.12, -0.12, -21.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.51, 0.52, -27.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.67, -0.1, -29.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.47, -0.1, -36.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.76, -0.07, -39.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -16.62, -0.09, -40.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.18, 0.59, -45.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -16.53, -0.02, -49.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.77, -0.03, -50.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.6, 0.53, -53.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -6.86, -0.09, -57.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.31, -0.05, -58.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.14, -0.06, -59.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.69, -0.04, -62.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.04, -0.03, -58.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.49, 0.03, -66.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 22.94, -0.04, -66.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 17.79, -0.05, -66.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.78, -0.08, -63.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 12.13, -0.07, -58.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 12.3, -0.05, -62.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 12.77, -0.04, -60.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.68, -0.08, -60.17, 2, math.random(0,5))
end


