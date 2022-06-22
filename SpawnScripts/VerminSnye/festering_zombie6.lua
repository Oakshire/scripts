--[[
	Script Name		:	festering_zombie6.lua
	Script Purpose	:	Waypoint Path for festering_zombie6.lua
	Script Author	:	Devn00b
	Script Date		:	06/21/2020 03:07:12 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =14
    local level2 = 15
    local difficulty1 = 6
    local hp1 = 795
    local power1 = 240
    local difficulty2 = 6
    local hp2 = 920
    local power2 = 270
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
	MovementLoopAddLocation(NPC, 38.62, 0, -24.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 42.66, 0.05, -20.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 45.18, 0.06, -25.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.38, 0.1, -26.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 40.03, 0.08, -22.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 39.49, 0, -25.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 43.11, 0.14, -27.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.11, 0.01, -26.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.29, 0, -23.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.55, 0.06, -25.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.31, 0.04, -27.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 39.35, 0.02, -23.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.13, 0.12, -21.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.89, 0.02, -24.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 40.25, 0, -26.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.23, 0.01, -24.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.37, 0.13, -23.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 43.45, 0.1, -26.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 40.92, 0.01, -27.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 42.89, 0.06, -21.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 39.27, 0, -25.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 40.19, 0, -26.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 42.57, 0.03, -24.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.81, 0.08, -26.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.01, 0, -24.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 42.7, 0.02, -25.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.01, 0, -24.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.81, 0.08, -26.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 42.57, 0.03, -24.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 40.19, 0, -26.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 39.27, 0, -25.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 42.89, 0.06, -21.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 40.92, 0.01, -27.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 43.45, 0.1, -26.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.37, 0.13, -23.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.23, 0.01, -24.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 40.25, 0, -26.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.89, 0.02, -24.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.13, 0.12, -21.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 39.35, 0.02, -23.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.31, 0.04, -27.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.55, 0.06, -25.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.29, 0, -23.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 41.11, 0.01, -26.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 43.11, 0.14, -27.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 39.49, 0, -25.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 40.03, 0.08, -22.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.38, 0.1, -26.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 45.18, 0.06, -25.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 42.66, 0.05, -20.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.62, 0, -24.77, 2, math.random(0,5))
end


