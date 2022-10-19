--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper9.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 06:10:06
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
	MovementLoopAddLocation(NPC, 1117.85, -22.91, -660.81, 1, 0)
	MovementLoopAddLocation(NPC, 1115.06, -22.84, -661.54, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1115.06, -22.84, -661.54, 1, 0)
	MovementLoopAddLocation(NPC, 1120.84, -22.57, -659.72, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1120.84, -22.57, -659.72, 1, 0)
	MovementLoopAddLocation(NPC, 1123.91, -21.27, -657.26, 1, 0)
	MovementLoopAddLocation(NPC, 1127.22, -21.07, -656.96, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1127.22, -21.07, -656.96, 1, 0)
	MovementLoopAddLocation(NPC, 1128.81, -23.2, -661.06, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1128.81, -23.2, -661.06, 1, 0)
	MovementLoopAddLocation(NPC, 1123.13, -23.02, -659.92, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1123.13, -23.02, -659.92, 1, 0)
	MovementLoopAddLocation(NPC, 1117.35, -21.18, -657.81, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1117.35, -21.18, -657.81, 1, 0)
	MovementLoopAddLocation(NPC, 1113.76, -23.06, -662.75, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1113.76, -23.06, -662.75, 1, 0)
	MovementLoopAddLocation(NPC, 1117.85, -22.91, -660.81, 1, math.random(5,10))
end

