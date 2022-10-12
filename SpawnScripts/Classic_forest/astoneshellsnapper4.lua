--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 04:10:28
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
	MovementLoopAddLocation(NPC, 986.43, -23.64, -589.79, 1, 0)
	MovementLoopAddLocation(NPC, 986.47, -24.75, -597.75, 1, 0)
	MovementLoopAddLocation(NPC, 986.47, -24.75, -597.75, 1, 0)
	MovementLoopAddLocation(NPC, 984.55, -24.2, -589.41, 1, 0)
	MovementLoopAddLocation(NPC, 978.9, -25.02, -585.73, 1, 0)
	MovementLoopAddLocation(NPC, 971.06, -25.45, -583.25, 1, 0)
	MovementLoopAddLocation(NPC, 971.06, -25.45, -583.25, 1, 0)
	MovementLoopAddLocation(NPC, 973.85, -26.72, -586.33, 1, 0)
	MovementLoopAddLocation(NPC, 973.85, -26.72, -586.33, 1, 0)
	MovementLoopAddLocation(NPC, 980.02, -27.32, -590.26, 1, 0)
	MovementLoopAddLocation(NPC, 980.02, -27.32, -590.26, 1, 0)
	MovementLoopAddLocation(NPC, 983.3, -25.49, -591.43, 1, 0)
	MovementLoopAddLocation(NPC, 983.3, -25.49, -591.43, 1, 0)
	MovementLoopAddLocation(NPC, 983.47, -23.82, -586.33, 1, 0)
	MovementLoopAddLocation(NPC, 983.47, -23.82, -586.33, 1, 0)
end

