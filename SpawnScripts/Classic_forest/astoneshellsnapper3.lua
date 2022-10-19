--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 03:10:07
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
	MovementLoopAddLocation(NPC, 976.17, -23.45, -580.24, 1, 0)
	MovementLoopAddLocation(NPC, 979.7, -23.71, -583.1, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 979.7, -23.71, -583.1, 1, 0)
	MovementLoopAddLocation(NPC, 981.75, -26.42, -590.58, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 981.75, -26.42, -590.58, 1, 0)
	MovementLoopAddLocation(NPC, 977.68, -27.56, -589.67, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 977.68, -27.56, -589.67, 1, 0)
	MovementLoopAddLocation(NPC, 974.24, -25.72, -584.54, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 974.24, -25.72, -584.54, 1, 0)
	MovementLoopAddLocation(NPC, 969.13, -25.5, -582.86, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 969.13, -25.5, -582.86, 1, 0)
	MovementLoopAddLocation(NPC, 978.36, -24.98, -585.25, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 978.36, -24.98, -585.25, 1, 0)
	MovementLoopAddLocation(NPC, 982.95, -24.95, -589.41, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 982.95, -24.95, -589.41, 1, 0)
	MovementLoopAddLocation(NPC, 984.07, -26.2, -594.11, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 984.07, -26.2, -594.11, 1, 0)
	MovementLoopAddLocation(NPC, 986.65, -24.05, -593.13, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 986.65, -24.05, -593.13, 1, 0)
	MovementLoopAddLocation(NPC, 982.84, -23.85, -586.01, 1, 0)
	MovementLoopAddLocation(NPC, 970.29, -23.43, -578.79, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 970.29, -23.43, -578.79, 1, 0)
	MovementLoopAddLocation(NPC, 976.18, -23.44, -580.2, 1, math.random(5,10))
end

