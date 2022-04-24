--[[
	Script Name		:	crawler_hatchling4.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling4.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 11:04:18 PM
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
	MovementLoopAddLocation(NPC, -51.76, -0.09, -67.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -44.63, -0.1, -68.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -43.95, -0.1, -68.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.33, -0.06, -73.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.21, -0.04, -69.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -22.74, -0.02, -75.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -22.24, -0.04, -78.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -20.58, 0.05, -80.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -18.21, 0.08, -84.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -18.18, -0.02, -87.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.17, -0.08, -87.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.91, -0.07, -88.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -18.99, 0.11, -91.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.87, 0.26, -95.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -24.37, -0.67, -97.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -21.51, -1.07, -101.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.8, -0.25, -103.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.76, 0.33, -108.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.8, -0.25, -103.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -21.51, -1.07, -101.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -24.37, -0.67, -97.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.87, 0.26, -95.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -18.99, 0.11, -91.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.91, -0.07, -88.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.17, -0.08, -87.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -18.18, -0.02, -87.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -18.21, 0.08, -84.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -20.58, 0.05, -80.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -22.24, -0.04, -78.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -22.74, -0.02, -75.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.21, -0.04, -69.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.33, -0.06, -73.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -43.95, -0.1, -68.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -44.63, -0.1, -68.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -51.76, -0.09, -67.68, 2, math.random(0,5))
end


