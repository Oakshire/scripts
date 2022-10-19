--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper11.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 07:10:40
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
	MovementLoopAddLocation(NPC, 1145.93, -22.36, -657.25, 1, 0)
	MovementLoopAddLocation(NPC, 1151.33, -22.01, -656.62, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1151.33, -22.01, -656.62, 1, 0)
	MovementLoopAddLocation(NPC, 1149.01, -20.21, -653.7, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1149.01, -20.21, -653.7, 1, 0)
	MovementLoopAddLocation(NPC, 1142.3, -22.38, -658.72, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1142.3, -22.38, -658.72, 1, 0)
	MovementLoopAddLocation(NPC, 1146.89, -23.36, -660.55, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1146.89, -23.36, -660.55, 1, 0)
	MovementLoopAddLocation(NPC, 1139.43, -22.11, -659.1, 1, 0)
	MovementLoopAddLocation(NPC, 1134.2, -21.75, -658.95, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1134.2, -21.75, -658.95, 1, 0)
	MovementLoopAddLocation(NPC, 1131.32, -19.44, -654.62, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1131.32, -19.44, -654.62, 1, 0)
	MovementLoopAddLocation(NPC, 1128.61, -24.02, -662.75, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1128.61, -24.02, -662.75, 1, 0)
	MovementLoopAddLocation(NPC, 1135.2, -23.08, -661.77, 1, 0)
	MovementLoopAddLocation(NPC, 1141.96, -22.95, -660.36, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1141.96, -22.95, -660.36, 1, 0)
	MovementLoopAddLocation(NPC, 1149.25, -22.71, -658.64, 1, 0)
	MovementLoopAddLocation(NPC, 1151.42, -21.09, -655.47, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1151.42, -21.09, -655.47, 1, 0)
	MovementLoopAddLocation(NPC, 1145.93, -22.36, -657.25, 1, math.random(5,10))
end

