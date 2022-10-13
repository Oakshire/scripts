--[[
    Script Name    : SpawnScripts/Classic_forest/abonecutterfishRoam7.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.13 03:10:20
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
	MovementLoopAddLocation(NPC, 1058.27, -24.4, -721.66, 1, 0)
	MovementLoopAddLocation(NPC, 1060.48, -24.35, -723.04, 1, 0)
	MovementLoopAddLocation(NPC, 1069.93, -24.37, -721.3, 1, 0)
	MovementLoopAddLocation(NPC, 1074.44, -24.33, -721.42, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1074.44, -24.37, -721.42, 1, 0)
	MovementLoopAddLocation(NPC, 1068.17, -24.32, -721.63, 1, 0)
	MovementLoopAddLocation(NPC, 1060.32, -24.33, -723.72, 1, 0)
	MovementLoopAddLocation(NPC, 1056.2, -24.37, -720.1, 1, 0)
	MovementLoopAddLocation(NPC, 1051.07, -24.32, -721.66, 1, 0)
	MovementLoopAddLocation(NPC, 1043.23, -24.34, -722.33, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1043.23, -24.36, -722.33, 1, 0)
	MovementLoopAddLocation(NPC, 1047.97, -24.33, -722, 1, 0)
	MovementLoopAddLocation(NPC, 1055.11, -24.32, -720.47, 1, 0)
	MovementLoopAddLocation(NPC, 1057.61, -24.35, -722.69, 1, 0)
	MovementLoopAddLocation(NPC, 1055.81, -24.37, -725.46, 1, 0)
	MovementLoopAddLocation(NPC, 1047.09, -24.34, -732.62, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1047.09, -24.36, -732.62, 1, 0)
	MovementLoopAddLocation(NPC, 1057.65, -24.31, -724.75, 1, 0)
	MovementLoopAddLocation(NPC, 1059.67, -24.36, -718.06, 1, 0)
	MovementLoopAddLocation(NPC, 1066.51, -24.3, -714.28, 1, 0)
	MovementLoopAddLocation(NPC, 1068.47, -24.33, -709.91, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1068.47, -24.35, -709.91, 1, 0)
	MovementLoopAddLocation(NPC, 1066.12, -24.34, -713.87, 1, 0)
	MovementLoopAddLocation(NPC, 1059.28, -24.31, -718.38, 1, 0)
	MovementLoopAddLocation(NPC, 1058.27, -24.4, -721.66, 1, math.random(5,10))
end

