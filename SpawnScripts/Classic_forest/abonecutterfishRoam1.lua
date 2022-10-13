--[[
    Script Name    : SpawnScripts/Classic_forest/abonecutterfishRoam1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.13 03:10:26
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
	MovementLoopAddLocation(NPC, 979.91, -24.37, -803.71, 1, 0)
	MovementLoopAddLocation(NPC, 978.9, -24.35, -807, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 978.9, -24.36, -807, 1, 0)
	MovementLoopAddLocation(NPC, 981.75, -24.37, -786.14, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 981.75, -24.37, -786.14, 1, 0)
	MovementLoopAddLocation(NPC, 987.51, -24.34, -781.46, 1, 0)
	MovementLoopAddLocation(NPC, 985.46, -24.34, -777.43, 1, 0)
	MovementLoopAddLocation(NPC, 978.35, -24.31, -797.4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 978.35, -24.35, -797.4, 1, 0)
	MovementLoopAddLocation(NPC, 985.79, -24.33, -800.54, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 985.79, -24.36, -800.54, 1, 0)
	MovementLoopAddLocation(NPC, 979.91, -24.37, -803.71, 2, math.random(5,10))
end

