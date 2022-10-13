--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper10.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 07:10:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
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
	MovementLoopAddLocation(NPC, 1133.82, -22.61, -660.65, 1, 0)
	MovementLoopAddLocation(NPC, 1131.61, -20.28, -656.25, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1131.61, -20.28, -656.25, 1, 0)
	MovementLoopAddLocation(NPC, 1129.37, -23.23, -661.36, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1129.37, -23.23, -661.36, 1, 0)
	MovementLoopAddLocation(NPC, 1138.37, -23.22, -661.82, 1, 0)
	MovementLoopAddLocation(NPC, 1140.71, -22.26, -658.99, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1140.71, -22.26, -658.99, 1, 0)
	MovementLoopAddLocation(NPC, 1135.71, -21.58, -658.65, 1, 0)
	MovementLoopAddLocation(NPC, 1127.28, -21.49, -657.56, 1, 0)
	MovementLoopAddLocation(NPC, 1122.88, -20.34, -655.3, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1122.88, -20.34, -655.3, 1, 0)
	MovementLoopAddLocation(NPC, 1122.08, -23.91, -661.36, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1122.08, -23.91, -661.36, 1, 0)
	MovementLoopAddLocation(NPC, 1126.48, -23.55, -660.64, 1, 0)
	MovementLoopAddLocation(NPC, 1129.45, -22.13, -659.39, 1, 0)
	MovementLoopAddLocation(NPC, 1133.82, -22.61, -660.65, 1, math.random(5,10))
end

