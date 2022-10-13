--[[
    Script Name    : SpawnScripts/Classic_forest/abonecutterfishRoam6.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.13 03:10:11
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
	MovementLoopAddLocation(NPC, 1035.38, -24.37, -724.27, 1, 0)
	MovementLoopAddLocation(NPC, 1035.49, -24.34, -720.21, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1035.49, -24.37, -720.21, 1, 0)
	MovementLoopAddLocation(NPC, 1034.8, -24.36, -728.7, 1, 0)
	MovementLoopAddLocation(NPC, 1027.69, -24.37, -736.42, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1027.69, -24.37, -736.42, 1, 0)
	MovementLoopAddLocation(NPC, 1034.45, -24.34, -737.01, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1034.45, -24.37, -737.01, 1, 0)
	MovementLoopAddLocation(NPC, 1034.15, -24.33, -728.77, 1, 0)
	MovementLoopAddLocation(NPC, 1037.82, -24.32, -722.17, 1, 0)
	MovementLoopAddLocation(NPC, 1047.06, -24.34, -721.89, 1, 0)
	MovementLoopAddLocation(NPC, 1055.91, -24.32, -720.29, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1055.91, -24.37, -720.29, 1, 0)
	MovementLoopAddLocation(NPC, 1046.3, -24.37, -722.91, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1046.3, -24.37, -722.91, 1, 0)
	MovementLoopAddLocation(NPC, 1037.02, -24.33, -719.2, 1, 0)
	MovementLoopAddLocation(NPC, 1027.35, -24.33, -722.21, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1027.35, -24.37, -722.21, 1, 0)
	MovementLoopAddLocation(NPC, 1031.93, -24.33, -721.33, 1, 0)
	MovementLoopAddLocation(NPC, 1035.38, -24.37, -724.27, 1, math.random(5,10))
end

