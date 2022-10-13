--[[
    Script Name    : SpawnScripts/Classic_forest/abonecutterfishRoam9.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.13 03:10:41
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
	MovementLoopAddLocation(NPC, 1083.37, -24.37, -717.98, 1, 0)
	MovementLoopAddLocation(NPC, 1081.6, -24.35, -713.96, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1081.6, -24.37, -713.96, 1, 0)
	MovementLoopAddLocation(NPC, 1088.8, -24.33, -720.23, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1088.8, -24.35, -720.23, 1, 0)
	MovementLoopAddLocation(NPC, 1083.39, -24.37, -726.23, 1, 0)
	MovementLoopAddLocation(NPC, 1080.72, -24.34, -726.81, 1, 0)
	MovementLoopAddLocation(NPC, 1073.84, -24.3, -721.44, 1, 0)
	MovementLoopAddLocation(NPC, 1067.19, -24.32, -721.58, 1, 0)
	MovementLoopAddLocation(NPC, 1060.5, -24.3, -723.35, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1060.5, -24.3, -723.35, 1, 0)
	MovementLoopAddLocation(NPC, 1076.68, -24.37, -718.26, 1, 0)
	MovementLoopAddLocation(NPC, 1085.4, -24.31, -720.39, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1085.4, -24.31, -720.39, 1, 0)
	MovementLoopAddLocation(NPC, 1081.63, -24.35, -714.44, 1, 0)
	MovementLoopAddLocation(NPC, 1086.29, -24.36, -709.1, 1, 0)
	MovementLoopAddLocation(NPC, 1096.5, -24.31, -701.87, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1096.5, -24.31, -701.87, 1, 0)
	MovementLoopAddLocation(NPC, 1086.32, -24.3, -708.23, 1, 0)
	MovementLoopAddLocation(NPC, 1083.37, -24.37, -717.98, 1, math.random(5,10))
end

