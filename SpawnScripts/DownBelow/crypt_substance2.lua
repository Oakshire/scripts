--[[
	Script Name		:	crypt_substance2.lua
	Script Purpose	:	Waypoint Path for crypt_substance2.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 08:12:11 PM
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
	MovementLoopAddLocation(NPC, 1.01, -0.06, -29.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.84, -0.08, -27.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.85, -0.1, -28.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.88, -0.08, -34.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.92, -0.08, -34.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.01, -0.06, -30.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.01, -0.08, -33.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.18, -0.04, -37.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.73, -0.02, -39.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.63, 0.09, -42.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -17.71, -0.02, -43.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.33, 0.59, -45.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.1, -0.07, -49.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.23, 0.51, -52.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.3, -0.1, -60.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.8, -0.09, -60.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.3, -0.08, -62.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.36, -0.04, -58.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.48, -0.06, -63.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.53, -0.07, -58.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.91, -0.08, -64.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.01, -0.05, -61.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.64, -0.1, -59.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.36, -0.04, -61.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -3.35, -0.08, -56.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.34, -0.08, -56.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.95, 0.53, -52.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.49, -0.07, -51.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.95, 0.53, -52.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.34, -0.08, -56.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -3.35, -0.08, -56.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.36, -0.04, -61.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.64, -0.1, -59.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.01, -0.05, -61.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.91, -0.08, -64.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.53, -0.07, -58.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.48, -0.06, -63.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.36, -0.04, -58.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.3, -0.08, -62.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.8, -0.09, -60.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.3, -0.1, -60.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.23, 0.51, -52.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.1, -0.07, -49.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.33, 0.59, -45.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -17.71, -0.02, -43.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.63, 0.09, -42.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.73, -0.02, -39.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.18, -0.04, -37.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.01, -0.08, -33.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.01, -0.06, -30.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.92, -0.08, -34.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.88, -0.08, -34.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.85, -0.1, -28.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.84, -0.08, -27.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.01, -0.06, -29.9, 2, math.random(0,5))
end


