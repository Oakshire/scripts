--[[
    Script Name    : SpawnScripts/DownBelow/aBloodsabermeddler_3027.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 12:04:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 110
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 65
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
	MovementLoopAddLocation(NPC, 12.33, 0.18, -102.84, 2, 5)
	MovementLoopAddLocation(NPC, 12.87, 0.14, -105.04, 2, 5)
	MovementLoopAddLocation(NPC, 9.05, -0.1, -107.02, 2, 5)
	MovementLoopAddLocation(NPC, 13.2, 0.15, -101.63, 2, 5)
	MovementLoopAddLocation(NPC, 10.98, -0.05, -107.84, 2, 0)
	MovementLoopAddLocation(NPC, 3.34, -0.02, -107.49, 2, 0)
	MovementLoopAddLocation(NPC, 0.17, -0.1, -102.94, 2, 0)
	MovementLoopAddLocation(NPC, -1.79, -0.08, -104.01, 2, 5)
	MovementLoopAddLocation(NPC, -0.39, -0.1, -103.46, 2, 0)
	MovementLoopAddLocation(NPC, 4.55, -0.07, -107.3, 2, 0)
	MovementLoopAddLocation(NPC, 9.22, -0.09, -107.01, 2, 5)
	MovementLoopAddLocation(NPC, 11.15, 0.08, -105.78, 2, 5)
end