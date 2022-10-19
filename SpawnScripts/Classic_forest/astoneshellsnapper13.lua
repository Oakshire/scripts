--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper13.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 07:10:10
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
	MovementLoopAddLocation(NPC, 1130.55, -22.33, -719.45, 1, 0)
	MovementLoopAddLocation(NPC, 1135.6, -22.73, -722.05, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1135.6, -22.73, -722.05, 1, 0)
	MovementLoopAddLocation(NPC, 1126.28, -21.07, -718.65, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1126.28, -21.07, -718.65, 1, 0)
	MovementLoopAddLocation(NPC, 1129.75, -22.84, -716.2, 1, 0)
	MovementLoopAddLocation(NPC, 1125.18, -22.7, -710.89, 1, 0)
	MovementLoopAddLocation(NPC, 1120.83, -21.92, -707.67, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1120.83, -21.92, -707.67, 1, 0)
	MovementLoopAddLocation(NPC, 1126.74, -21.52, -714.59, 1, 0)
	MovementLoopAddLocation(NPC, 1128.22, -21.54, -720.27, 1, 0)
	MovementLoopAddLocation(NPC, 1130.69, -21.53, -722.83, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1130.69, -21.53, -722.83, 1, 0)
	MovementLoopAddLocation(NPC, 1138.43, -22.88, -721.78, 1, 0)
	MovementLoopAddLocation(NPC, 1140.64, -23.02, -719.74, 1, 0)
	MovementLoopAddLocation(NPC, 1141.72, -22.25, -718.01, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1141.72, -22.25, -718.01, 1, 0)
	MovementLoopAddLocation(NPC, 1140.07, -23.34, -720.42, 1, 0)
	MovementLoopAddLocation(NPC, 1136.44, -22.89, -721.58, 1, 0)
	MovementLoopAddLocation(NPC, 1130.38, -22.94, -716.87, 1, 0)
	MovementLoopAddLocation(NPC, 1128.58, -22.21, -716.5, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1128.58, -22.21, -716.5, 1, 0)
	MovementLoopAddLocation(NPC, 1130.42, -21.66, -721.96, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1130.42, -21.66, -721.96, 1, 0)
	MovementLoopAddLocation(NPC, 1130.55, -22.33, -719.45, 1, math.random(5,10))
end

