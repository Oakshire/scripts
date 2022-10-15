--[[
    Script Name    : SpawnScripts/Classic_forest/aruinsskulker1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.14 08:10:06
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
	MovementLoopAddLocation(NPC, 950.19, -24.76, -848.69, 2, 0)
	MovementLoopAddLocation(NPC, 966.13, -24.65, -851.21, 2, 0)
	MovementLoopAddLocation(NPC, 979.06, -22.44, -831.84, 2, 0)
	MovementLoopAddLocation(NPC, 1003.02, -21.36, -818.01, 2, 0)
	MovementLoopAddLocation(NPC, 1016.22, -20.18, -796.25, 2, 0)
	MovementLoopAddLocation(NPC, 1016.02, -18.86, -773.61, 2, 6)
	MovementLoopAddLocation(NPC, 1016.02, -18.86, -773.61, 2, 0)
	MovementLoopAddLocation(NPC, 1017.51, -19.7, -788.73, 2, 0)
	MovementLoopAddLocation(NPC, 1003.33, -21.31, -812.48, 2, 0)
	MovementLoopAddLocation(NPC, 982.47, -22.49, -828.86, 2, 0)
	MovementLoopAddLocation(NPC, 970.01, -23.8, -846.36, 2, 0)
	MovementLoopAddLocation(NPC, 964.41, -24.61, -850.44, 2, 0)
	MovementLoopAddLocation(NPC, 950.19, -24.76, -848.69, 2, 6)
end

