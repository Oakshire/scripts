--[[
	Script Name		:	rifter_hatchling12.lua
	Script Purpose	:	Waypoint Path for rifter_hatchling12.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 02:05:00 AM
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
 spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -158.21, 0.48, -106.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -156.89, -0.09, -112.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -155.69, -0.06, -114.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -156.92, -0.07, -126.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -159, -0.03, -135.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -153.8, -0.05, -138.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -144.05, -0.12, -135.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -128.85, -0.1, -134.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -135.95, 0.32, -135.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -153.95, -0.09, -137.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -160.26, 0.01, -131.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -159.49, -0.01, -110.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -149.56, -0.12, -83.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -169.39, -0.25, -72.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.12, -0.26, -73.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.29, -0.27, -87.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -189.11, -0.08, -92.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.07, -0.07, -93.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.5, -0.06, -102.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.57, -0.12, -105.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.39, -0.09, -108.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -181.08, 1.04, -116.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -167, 0.11, -118.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -160.38, -0.11, -118.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -167, 0.11, -118.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -181.08, 1.04, -116.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.39, -0.09, -108.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.57, -0.12, -105.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.5, -0.06, -102.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.07, -0.07, -93.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -189.11, -0.08, -92.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.29, -0.27, -87.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.12, -0.26, -73.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -169.39, -0.25, -72.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -149.56, -0.12, -83.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -159.49, -0.01, -110.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -160.26, 0.01, -131.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -153.95, -0.09, -137.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -135.95, 0.32, -135.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -128.85, -0.1, -134.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -144.05, -0.12, -135.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -153.8, -0.05, -138.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -159, -0.03, -135.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -156.92, -0.07, -126.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -155.69, -0.06, -114.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -156.89, -0.09, -112.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -158.21, 0.48, -106.22, 2, math.random(0,5))
end


