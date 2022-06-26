--[[
    Script Name    : SpawnScripts/DownBelow/venom_spitter3034.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.05 01:04:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 6
    local hp1 = 200
    local power1 = 90
    local difficulty2 = 6
    local hp2 = 240
    local power2 = 100
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
	MovementLoopAddLocation(NPC, -106.69, 0, -202.59, 2, 5)
	MovementLoopAddLocation(NPC, -106.64, 0, -207.19, 2, 5)
	MovementLoopAddLocation(NPC, -126.84, 0, -200.86, 2, 5)
	MovementLoopAddLocation(NPC, -124.12, 0, -193.29, 2, 0)
	MovementLoopAddLocation(NPC, -121.2, 0, -196.72, 2, 5)
	MovementLoopAddLocation(NPC, -121.45, 0, -201.67, 2, 0)
	MovementLoopAddLocation(NPC, -118.39, 0, -203.78, 2, 0)
	MovementLoopAddLocation(NPC, -108.61, 0, -207.11, 2, 5)
	MovementLoopAddLocation(NPC, -116.29, 0, -204.38, 2, 0)
	MovementLoopAddLocation(NPC, -122.2, 0, -201.7, 2, 0)
	MovementLoopAddLocation(NPC, -123.45, 0, -202.91, 2, 5)
	MovementLoopAddLocation(NPC, -118.56, 0, -203.86, 2, 0)
	MovementLoopAddLocation(NPC, -107.48, 0, -202.5, 2, 0)
end