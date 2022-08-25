--[[
    Script Name    : SpawnScripts/Antonica/ahazekodiak1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.08.24 08:08:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 17
    local level2 = 18
    local difficulty1 = 9
    local hp1 = 4030
    local power1 = 1670
    local difficulty2 = 9
    local hp2 = 4410
    local power2 = 1670
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
	MovementLoopAddLocation(NPC, -2054.62, -21.44, 699.98, 2, 0)
	MovementLoopAddLocation(NPC, -2059.91, -18.65, 708.2, 2, 0)
	MovementLoopAddLocation(NPC, -2068.19, -10.83, 719.65, 2, 0)
	MovementLoopAddLocation(NPC, -2074.11, 7.06, 751.33, 2, 0)
	MovementLoopAddLocation(NPC, -2083.86, 17.12, 773.29, 2, 0)
	MovementLoopAddLocation(NPC, -2084.55, 27.13, 793.21, 2, 0)
	MovementLoopAddLocation(NPC, -2074.77, 35.05, 812.54, 2, 0)
	MovementLoopAddLocation(NPC, -2075.63, 41.19, 854.43, 2, 0)
	MovementLoopAddLocation(NPC, -2064.66, 47.14, 914.09, 2, 0)
	MovementLoopAddLocation(NPC, -2066.7, 47.28, 915.5, 2, 0)
	MovementLoopAddLocation(NPC, -2069.28, 45.87, 903, 2, 0)
	MovementLoopAddLocation(NPC, -2076.25, 41.9, 861.22, 2, 0)
	MovementLoopAddLocation(NPC, -2075.51, 35.43, 813.85, 2, 0)
	MovementLoopAddLocation(NPC, -2083.79, 27.95, 795.27, 2, 0)
	MovementLoopAddLocation(NPC, -2086.19, 22.27, 782.97, 2, 0)
	MovementLoopAddLocation(NPC, -2083.85, 16.47, 771.58, 2, 0)
	MovementLoopAddLocation(NPC, -2075.66, 7.91, 752.08, 2, 0)
	MovementLoopAddLocation(NPC, -2070.44, -9.82, 720.59, 2, 0)
	MovementLoopAddLocation(NPC, -2056.01, -21.36, 700.71, 2, 0)
end

