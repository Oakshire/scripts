--[[
    Script Name    : SpawnScripts/DownBelow/forgotten_soul3060.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.24 07:04:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 370
    local power1 = 130
    local difficulty2 = 6
    local hp2 = 275
    local power2 = 110
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

	MovementLoopAddLocation(NPC, -190.24, 0, -31, 2, 0)
	MovementLoopAddLocation(NPC, -182.96, -0.09, -37.79, 2, 0)
	MovementLoopAddLocation(NPC, -184.09, -0.15, -41.19, 2, 0)
	MovementLoopAddLocation(NPC, -190.75, -0.09, -49.17, 2, 0)
	MovementLoopAddLocation(NPC, -191.14, -0.14, -54.12, 2, 0)
	MovementLoopAddLocation(NPC, -191.11, -0.11, -60.12, 2, 2)
	MovementLoopAddLocation(NPC, -199.69, -0.09, -60.34, 2, 7)
	MovementLoopAddLocation(NPC, -192.06, -0.08, -60.4, 2, 0)
	MovementLoopAddLocation(NPC, -191.16, -0.05, -67.81, 2, 0)
	MovementLoopAddLocation(NPC, -184.95, -0.08, -73.4, 2, 0)
	MovementLoopAddLocation(NPC, -176.7, -0.26, -73.16, 2, 0)
	MovementLoopAddLocation(NPC, -176.35, -0.24, -78.64, 2, 0)
	MovementLoopAddLocation(NPC, -179.35, -0.29, -86.67, 2, 0)
	MovementLoopAddLocation(NPC, -188.82, -0.05, -93.01, 2, 0)
	MovementLoopAddLocation(NPC, -203.06, 0.51, -93.19, 2, 0)
	MovementLoopAddLocation(NPC, -208.45, -0.09, -92.06, 2, 0)
	MovementLoopAddLocation(NPC, -216.99, -0.09, -84.24, 2, 0)
	MovementLoopAddLocation(NPC, -219.22, -0.04, -77.66, 2, 0)
	MovementLoopAddLocation(NPC, -219.84, 0.17, -65.21, 2, 5)
	MovementLoopAddLocation(NPC, -216.68, -0.02, -57.33, 2, 0)
	MovementLoopAddLocation(NPC, -212.45, -0.42, -49.58, 2, 0)
	MovementLoopAddLocation(NPC, -192.46, 0, -30.13, 2, 5)
	MovementLoopAddLocation(NPC, -190.24, 0, -31, 2, 0)
end

