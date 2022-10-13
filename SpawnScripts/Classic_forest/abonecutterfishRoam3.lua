--[[
    Script Name    : SpawnScripts/Classic_forest/abonecutterfishRoam3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.13 03:10:43
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
	MovementLoopAddLocation(NPC, 984.75, -24.37, -781.6, 1, 0)
	MovementLoopAddLocation(NPC, 983.32, -24.35, -776.16, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 983.32, -24.36, -776.16, 1, 0)
	MovementLoopAddLocation(NPC, 987.39, -24.36, -781.28, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 987.39, -24.36, -781.28, 1, 0)
	MovementLoopAddLocation(NPC, 987, -24.37, -777.59, 1, 0)
	MovementLoopAddLocation(NPC, 987.23, -24.34, -773.78, 1, 0)
	MovementLoopAddLocation(NPC, 993.85, -24.49, -766.19, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 993.85, -24.49, -766.19, 1, 0)
	MovementLoopAddLocation(NPC, 985.53, -24.32, -774.67, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 985.53, -24.37, -774.67, 1, 0)
	MovementLoopAddLocation(NPC, 984.75, -24.37, -781.6, 1, math.random(5,10))
end

