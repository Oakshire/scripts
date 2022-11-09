--[[
	Script Name		:	crawler_hatchling2.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling2.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 10:52:53 PM
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
	MovementLoopAddLocation(NPC, 4.72, -0.02, -108.45, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 7.31, -0.07, -108.06, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.55, 0.23, -102.82, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.06, 0.17, -98.38, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 14.12, 0.18, -105.18, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.48, -0.07, -108.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.63, -0.09, -107.03, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.93, -0.07, -104.85, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.98, -0.06, -96.07, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -19.48, -0.08, -81.51, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.02, -0.09, -73.77, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -41.59, -0.03, -65.7, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -52.27, -0.09, -67.34, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -58.17, -0.07, -75.59, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -54.27, -0.08, -78.29, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -56.53, -0.07, -72.51, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -52, -0.05, -74.29, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -54.83, -0.08, -73.07, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -54.95, -0.08, -68.03, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -50.1, -0.05, -71.15, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -48.96, -0.09, -64.87, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -44, -0.04, -64.18, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -45.44, -0.1, -68.78, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -44.36, -0.1, -66.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -34.93, -0.09, -73.68, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.25, -0.04, -68.62, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -39.9, -0.09, -65.25, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -42.41, -0.03, -70.61, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.8, -0.01, -68.75, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -31.52, -0.07, -75.29, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.22, -0.03, -69.71, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -22.07, -0.06, -75.78, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -24.53, -0.09, -81.37, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -21.76, 0.05, -77.43, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -24.53, -0.09, -81.37, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -22.07, -0.06, -75.78, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.22, -0.03, -69.71, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -31.52, -0.07, -75.29, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.8, -0.01, -68.75, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -42.41, -0.03, -70.61, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -39.9, -0.09, -65.25, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.25, -0.04, -68.62, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -34.93, -0.09, -73.68, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -44.36, -0.1, -66.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -45.44, -0.1, -68.78, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -44, -0.04, -64.18, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -48.96, -0.09, -64.87, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -50.1, -0.05, -71.15, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -54.95, -0.08, -68.03, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -54.83, -0.08, -73.07, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -52, -0.05, -74.29, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -56.53, -0.07, -72.51, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -54.27, -0.08, -78.29, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -58.17, -0.07, -75.59, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -52.27, -0.09, -67.34, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -41.59, -0.03, -65.7, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.02, -0.09, -73.77, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -19.48, -0.08, -81.51, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.98, -0.06, -96.07, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.93, -0.07, -104.85, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.63, -0.09, -107.03, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.48, -0.07, -108.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 14.12, 0.18, -105.18, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.06, 0.17, -98.38, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.55, 0.23, -102.82, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 7.31, -0.07, -108.06, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.72, -0.02, -108.45, 1, math.random(0,5))
end


