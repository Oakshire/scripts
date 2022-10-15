--[[
    Script Name    : SpawnScripts/Classic_forest/aruinsskulker3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.14 08:10:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local difficulty1 = 6
    local hp1 = 275
    local power1 = 110
    local difficulty2 = 6
    local hp2 = 370
    local power2 = 130
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
	MovementLoopAddLocation(NPC, 1069.47, -23.07, -893.81, 2, 0)
	MovementLoopAddLocation(NPC, 1061.61, -24.58, -898.59, 2, 0)
	MovementLoopAddLocation(NPC, 1040.07, -27, -908.29, 2, 0)
	MovementLoopAddLocation(NPC, 1023.16, -27.11, -910.79, 2, 0)
	MovementLoopAddLocation(NPC, 1010.08, -27.08, -913.19, 2, 0)
	MovementLoopAddLocation(NPC, 1006.12, -26.91, -912.17, 2, 6)
	MovementLoopAddLocation(NPC, 1006.12, -26.91, -912.17, 2, 0)
	MovementLoopAddLocation(NPC, 1016.61, -25.9, -899.67, 2, 0)
	MovementLoopAddLocation(NPC, 1034.67, -23.36, -887.13, 2, 0)
	MovementLoopAddLocation(NPC, 1044.44, -23.11, -887.22, 2, 0)
	MovementLoopAddLocation(NPC, 1062.17, -23.93, -894.95, 2, 0)
	MovementLoopAddLocation(NPC, 1069.47, -23.07, -893.81, 2, 6)
end

