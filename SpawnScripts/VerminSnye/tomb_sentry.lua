--[[
	Script Name		:	tomb_sentry.lua
	Script Purpose	:	Waypoint Path for tomb_sentry.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 12:41:41 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =13
    local level2 = 14
    local difficulty1 = 6
    local hp1 = 680
    local power1 = 205
    local difficulty2 = 6
    local hp2 = 795
    local power2 = 240
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 73.05, 0.43, -114.25, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 66.07, -0.23, -108.47, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 52.09, -0.09, -107.06, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 43.58, -0.12, -98.04, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 53.86, 0.02, -86.46, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 58.19, 0.54, -82.6, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 78.96, 0.56, -82.24, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 93.25, 0.2, -81.03, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 96.05, -0.02, -76.01, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 96.51, -0.76, -51.69, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 96.33, 0.17, -38.57, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 88.9, 0.32, -33.06, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 84.28, 0, -33.78, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.4, 0.04, -30.33, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.79, -0.03, -13.43, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.39, 0.01, -31.22, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 62.97, 0.29, -33.62, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 59.74, 0.12, -47.6, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 51.9, -0.11, -49.43, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.29, -0.1, -48.96, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.43, 0, -39.05, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 38.39, -0.07, -31.64, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 27.44, 0.11, -21.83, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 26.67, 0.06, -2.91, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 28.15, 0.03, 7.82, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 30.85, -0.11, 16.65, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 28.15, 0.03, 7.82, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 26.67, 0.06, -2.91, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 27.44, 0.11, -21.83, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 38.39, -0.07, -31.64, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.43, 0, -39.05, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.29, -0.1, -48.96, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 51.9, -0.11, -49.43, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 59.74, 0.12, -47.6, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 62.97, 0.29, -33.62, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.39, 0.01, -31.22, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.79, -0.03, -13.43, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.4, 0.04, -30.33, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 84.28, 0, -33.78, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 88.9, 0.32, -33.06, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 96.33, 0.17, -38.57, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 96.51, -0.76, -51.69, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 96.05, -0.02, -76.01, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 93.25, 0.2, -81.03, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 78.96, 0.56, -82.24, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 58.19, 0.54, -82.6, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 53.86, 0.02, -86.46, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 43.58, -0.12, -98.04, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 52.09, -0.09, -107.06, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 66.07, -0.23, -108.47, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 73.05, 0.43, -114.25, 2, math.random(0,7))
end


