--[[
    Script Name    : SpawnScripts/Antonica/ahazekodiak4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.08.24 08:08:22
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
	MovementLoopAddLocation(NPC, -2064.64, 47.51, 917.66, 2, 5)
	MovementLoopAddLocation(NPC, -2075.53, 35.48, 814.21, 2, 0)
	MovementLoopAddLocation(NPC, -2076.71, 33.54, 808.92, 2, 0)
	MovementLoopAddLocation(NPC, -2084.7, 27.07, 793.08, 2, 0)
	MovementLoopAddLocation(NPC, -2086.21, 22.1, 782.63, 2, 0)
	MovementLoopAddLocation(NPC, -2084.61, 17.32, 773.34, 2, 0)
	MovementLoopAddLocation(NPC, -2075.67, 8.05, 752.65, 2, 0)
	MovementLoopAddLocation(NPC, -2070.19, -9.6, 721.18, 2, 0)
	MovementLoopAddLocation(NPC, -2057.11, -21.33, 700.91, 2, 0)
	MovementLoopAddLocation(NPC, -2054.01, -20.33, 703.32, 2, 0)
	MovementLoopAddLocation(NPC, -2059.36, -16.89, 710.5, 2, 0)
	MovementLoopAddLocation(NPC, -2066.95, -10.68, 719.96, 2, 0)
	MovementLoopAddLocation(NPC, -2073.01, 7.43, 752.1, 2, 0)
	MovementLoopAddLocation(NPC, -2082.8, 16.75, 772.67, 2, 0)
	MovementLoopAddLocation(NPC, -2084.88, 20.19, 779.11, 2, 0)
	MovementLoopAddLocation(NPC, -2083.57, 26.9, 792.29, 2, 0)
	MovementLoopAddLocation(NPC, -2074.26, 35.34, 813.17, 2, 0)
	MovementLoopAddLocation(NPC, -2074.18, 41.69, 857.9, 2, 0)
	MovementLoopAddLocation(NPC, -2064.64, 47.51, 917.66, 2, 0)
end

