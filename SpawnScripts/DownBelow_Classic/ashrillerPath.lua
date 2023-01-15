--[[
    Script Name    : SpawnScripts/DownBelow_Classic/ashrillerPath.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.15 02:01:00
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
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -146, 1.5, -78.61, 2, 0)
	MovementLoopAddLocation(NPC, -156.39, 1.5, -102.37, 2, 0)
	MovementLoopAddLocation(NPC, -158.05, 1.5, -110.08, 2, 0)
	MovementLoopAddLocation(NPC, -158.77, 1.5, -125.77, 2, 0)
	MovementLoopAddLocation(NPC, -158.97, 1.5, -130.99, 2, 0)
	MovementLoopAddLocation(NPC, -157.47, 1.5, -133.94, 2, 0)
	MovementLoopAddLocation(NPC, -155.77, 1.5, -135.47, 2, 0)
	MovementLoopAddLocation(NPC, -153.24, 1.5, -136.16, 2, 0)
	MovementLoopAddLocation(NPC, -140.44, 1.5, -136.42, 2, 0)
	MovementLoopAddLocation(NPC, -132.18, 1.5, -136.46, 2, 0)
	MovementLoopAddLocation(NPC, -140.45, 1.5, -136.33, 2, 0)
	MovementLoopAddLocation(NPC, -150.57, 1.5, -136.39, 2, 0)
	MovementLoopAddLocation(NPC, -155.06, 1.5, -136.22, 2, 0)
	MovementLoopAddLocation(NPC, -157.06, 1.5, -135.18, 2, 0)
	MovementLoopAddLocation(NPC, -158.52, 1.5, -129.24, 2, 0)
	MovementLoopAddLocation(NPC, -158.4, 1.5, -111.11, 2, 0)
	MovementLoopAddLocation(NPC, -156.25, 1.5, -103.3, 2, 0)
	MovementLoopAddLocation(NPC, -146, 1.5, -78.61, 2, 0)
end

