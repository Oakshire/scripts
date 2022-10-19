--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper8.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 06:10:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local level3 = 7
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
    local difficulty3 =6
    local hp3 = 200
    local power3 = 90
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
     elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
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
	MovementLoopAddLocation(NPC, 1109.2, -22.29, -675.84, 1, 0)
	MovementLoopAddLocation(NPC, 1109.77, -22.6, -684.51, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1109.77, -22.6, -684.51, 1, 0)
	MovementLoopAddLocation(NPC, 1107.11, -20.11, -685.53, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1107.11, -20.11, -685.53, 1, 0)
	MovementLoopAddLocation(NPC, 1107.47, -20.77, -677.18, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1107.47, -20.77, -677.18, 1, 0)
	MovementLoopAddLocation(NPC, 1109.71, -23.79, -671.39, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1109.71, -23.79, -671.39, 1, 0)
	MovementLoopAddLocation(NPC, 1109.31, -23.36, -667.97, 1, 0)
	MovementLoopAddLocation(NPC, 1112.52, -22.8, -663.1, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1112.52, -22.8, -663.1, 1, 0)
	MovementLoopAddLocation(NPC, 1109.17, -22.07, -663.87, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1109.17, -22.07, -663.87, 1, 0)
	MovementLoopAddLocation(NPC, 1106.67, -21.91, -667.83, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1109.2, -22.29, -675.84, 1, 0)
end

