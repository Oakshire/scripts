--[[
    Script Name    : SpawnScripts/Classic_forest/abonecutterfishRoam2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.13 03:10:34
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
	MovementLoopAddLocation(NPC, 980.77, -24.37, -793.23, 1, 0)
	MovementLoopAddLocation(NPC, 983.03, -24.37, -781.99, 1, 0)
	MovementLoopAddLocation(NPC, 990.35, -24.33, -772.31, 1, 0)
	MovementLoopAddLocation(NPC, 993.63, -24.32, -766.31, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 993.63, -24.36, -766.31, 1, 0)
	MovementLoopAddLocation(NPC, 984.16, -24.34, -774.4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 984.16, -24.37, -774.4, 1, 0)
	MovementLoopAddLocation(NPC, 988.1, -24.33, -778.68, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 988.1, -24.35, -778.68, 1, 0)
	MovementLoopAddLocation(NPC, 982.75, -24.35, -784.42, 1, 0)
	MovementLoopAddLocation(NPC, 978.22, -24.3, -799.42, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 978.22, -24.36, -799.42, 1, 0)
	MovementLoopAddLocation(NPC, 980.77, -24.37, -793.23, 1, math.random(5,10))
end

