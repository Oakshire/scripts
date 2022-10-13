--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper14.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 07:10:59
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
	MovementLoopAddLocation(NPC, 1143.22, -22.25, -715.03, 1, 0)
	MovementLoopAddLocation(NPC, 1148.32, -21.65, -713.9, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1148.32, -21.65, -713.9, 1, 0)
	MovementLoopAddLocation(NPC, 1142.7, -22.84, -714.25, 1, 0)
	MovementLoopAddLocation(NPC, 1140.42, -22.95, -721.4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1140.42, -22.95, -721.4, 1, 0)
	MovementLoopAddLocation(NPC, 1136.08, -22.83, -721.82, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1136.08, -22.83, -721.82, 1, 0)
	MovementLoopAddLocation(NPC, 1140.27, -22.37, -724.02, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1140.27, -22.37, -724.02, 1, 0)
	MovementLoopAddLocation(NPC, 1130.32, -22.86, -717.15, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1130.32, -22.86, -717.15, 1, 0)
	MovementLoopAddLocation(NPC, 1134.81, -22.9, -720.71, 1, 0)
	MovementLoopAddLocation(NPC, 1140.3, -22.81, -721.85, 1, 0)
	MovementLoopAddLocation(NPC, 1141.71, -22.85, -715.78, 1, 0)
	MovementLoopAddLocation(NPC, 1143.22, -22.25, -715.03, 1, math.random(5,10))
end

