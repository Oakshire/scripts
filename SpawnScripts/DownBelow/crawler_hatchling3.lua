--[[
	Script Name		:	crawler_hatchling3.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling3.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 10:59:19 PM
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
	MovementLoopAddLocation(NPC, -7.95, -0.12, -95.86, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.18, -0.07, -104.91, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -1.62, -0.06, -97.75, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.54, -0.05, -100.43, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.38, -0.08, -100.95, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.33, -0.02, -96.4, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -6.85, -0.04, -92.47, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -16.33, -0.02, -89.7, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.57, -0.06, -86.7, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -17.73, 0.2, -93.36, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.92, 0.31, -108.07, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.83, -0.06, -89.82, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -19.87, -0.1, -81.6, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.22, -0.12, -71.27, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -45.6, -0.08, -64.23, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -52.13, -0.09, -67.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -55.18, -0.08, -68.87, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -50.31, -0.05, -71.23, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -48.31, -0.09, -64.45, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -43.44, -0.03, -63.98, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -45.67, -0.1, -68.89, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -40.59, -0.07, -65.58, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -42.38, -0.03, -70.66, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -26.32, -0.04, -72.02, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -31.59, -0.08, -75.11, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -25.13, -0.09, -81.39, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -21.97, -0.02, -77.95, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -25.13, -0.09, -81.39, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -31.59, -0.08, -75.11, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -26.32, -0.04, -72.02, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -42.38, -0.03, -70.66, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -40.59, -0.07, -65.58, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -45.67, -0.1, -68.89, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -43.44, -0.03, -63.98, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -48.31, -0.09, -64.45, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -50.31, -0.05, -71.23, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -55.18, -0.08, -68.87, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -52.13, -0.09, -67.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -45.6, -0.08, -64.23, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.22, -0.12, -71.27, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -19.87, -0.1, -81.6, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.83, -0.06, -89.82, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.92, 0.31, -108.07, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -17.73, 0.2, -93.36, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.57, -0.06, -86.7, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -16.33, -0.02, -89.7, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -6.85, -0.04, -92.47, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.33, -0.02, -96.4, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.38, -0.08, -100.95, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.54, -0.05, -100.43, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -1.62, -0.06, -97.75, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.18, -0.07, -104.91, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -7.95, -0.12, -95.86, 1, math.random(0,5))
end


