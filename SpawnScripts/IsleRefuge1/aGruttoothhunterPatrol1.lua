--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothhunterPatrol1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.14 05:09:28
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 110
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 65
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
	MovementLoopAddLocation(NPC, 22.71, 2, -248.69, 2, 5)
	MovementLoopAddLocation(NPC, 22.15, 2.01, -248.65, 2, 0)
	MovementLoopAddLocation(NPC, 24.71, 1.98, -249.08, 2, 0)
	MovementLoopAddLocation(NPC, 25.58, 1.96, -248.02, 2, 0)
	MovementLoopAddLocation(NPC, 24.55, 1.96, -245.69, 2, 0)
	MovementLoopAddLocation(NPC, 22.71, 1.82, -239.91, 2, 0)
	MovementLoopAddLocation(NPC, 21.06, 1.92, -236.05, 2, 0)
	MovementLoopAddLocation(NPC, 16.92, 1.59, -232.89, 2, 0)
	MovementLoopAddLocation(NPC, 14.36, 2.01, -230.9, 2, 0)
	MovementLoopAddLocation(NPC, 13.91, 2.15, -228.92, 2, 0)
	MovementLoopAddLocation(NPC, 10.28, 2.2, -225.08, 2, 0)
	MovementLoopAddLocation(NPC, 8.97, 2.33, -225.16, 2, 0)
	MovementLoopAddLocation(NPC, 7.85, 3.01, -224.57, 2, 0)
	MovementLoopAddLocation(NPC, 6.52, 3.01, -223.93, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 6.52, 3.01, -223.93, 2, 0)
	MovementLoopAddLocation(NPC, 8.04, 2.99, -224.77, 2, 0)
	MovementLoopAddLocation(NPC, 13.7, 2.17, -229.26, 2, 0)
	MovementLoopAddLocation(NPC, 14.67, 1.95, -231.22, 2, 0)
	MovementLoopAddLocation(NPC, 20.22, 1.88, -235.07, 2, 0)
	MovementLoopAddLocation(NPC, 21.87, 2.02, -237.25, 2, 0)
	MovementLoopAddLocation(NPC, 24.6, 1.91, -242.66, 2, 0)
	MovementLoopAddLocation(NPC, 25.86, 1.96, -247.11, 2, 0)
	MovementLoopAddLocation(NPC, 25.18, 1.96, -248.72, 2, 0)
	MovementLoopAddLocation(NPC, 22.71, 2, -248.69, 2, 0)
end

