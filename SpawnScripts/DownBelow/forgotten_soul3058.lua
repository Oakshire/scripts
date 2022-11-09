--[[
    Script Name    : SpawnScripts/DownBelow/forgotten_soul3058.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.24 07:04:19
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
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -218.89, 0, -67.59, 2, 0)
	MovementLoopAddLocation(NPC, -219.03, -0.02, -78.21, 2, 0)
	MovementLoopAddLocation(NPC, -217.12, -0.09, -83.63, 2, 0)
	MovementLoopAddLocation(NPC, -208.97, -0.09, -92.01, 2, 0)
	MovementLoopAddLocation(NPC, -198.3, -0.06, -93.07, 2, 5)
	MovementLoopAddLocation(NPC, -186.71, -0.03, -92.97, 2, 0)
	MovementLoopAddLocation(NPC, -177.62, -0.25, -83.64, 2, 0)
	MovementLoopAddLocation(NPC, -175.67, -0.27, -73.6, 2, 6)
	MovementLoopAddLocation(NPC, -185.77, -0.09, -73.26, 2, 0)
	MovementLoopAddLocation(NPC, -191.11, -0.09, -65.91, 2, 0)
	MovementLoopAddLocation(NPC, -191.89, -0.09, -60.93, 2, 2)
	MovementLoopAddLocation(NPC, -199.89, -0.08, -60.75, 2, 6)
	MovementLoopAddLocation(NPC, -191.63, -0.1, -60.61, 2, 0)
	MovementLoopAddLocation(NPC, -189.76, 0.45, -47.76, 2, 0)
	MovementLoopAddLocation(NPC, -180.99, -0.16, -38.62, 2, 0)
	MovementLoopAddLocation(NPC, -189.76, 0.46, -47.8, 2, 4)
	MovementLoopAddLocation(NPC, -191.27, -0.11, -60.34, 2, 0)
	MovementLoopAddLocation(NPC, -188.67, 0.41, -70.41, 2, 0)
	MovementLoopAddLocation(NPC, -176.55, -0.27, -73.83, 2, 0)
	MovementLoopAddLocation(NPC, -177.8, -0.26, -85.09, 2, 0)
	MovementLoopAddLocation(NPC, -189.62, -0.07, -93.15, 2, 0)
	MovementLoopAddLocation(NPC, -197.95, -0.07, -93.16, 2, 2)
	MovementLoopAddLocation(NPC, -197.24, -0.09, -102.33, 2, 0)
	MovementLoopAddLocation(NPC, -191.17, -0.12, -105.1, 2, 5)
	MovementLoopAddLocation(NPC, -196.05, -0.04, -103.76, 2, 0)
	MovementLoopAddLocation(NPC, -197.66, -0.05, -92.96, 2, 0)
	MovementLoopAddLocation(NPC, -208.55, -0.07, -92.55, 2, 0)
	MovementLoopAddLocation(NPC, -217.52, -0.09, -84.23, 2, 0)
	MovementLoopAddLocation(NPC, -218.41, 0.01, -58.56, 2, 0)
	MovementLoopAddLocation(NPC, -208.83, -0.9, -46.78, 2, 0)
	MovementLoopAddLocation(NPC, -199.23, 0, -37.17, 2, 5)
	MovementLoopAddLocation(NPC, -216.1, 0.02, -53.91, 2, 0)
	MovementLoopAddLocation(NPC, -218.73, 0.03, -63.04, 2, 0)
end

