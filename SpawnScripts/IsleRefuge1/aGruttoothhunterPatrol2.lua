--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothhunterPatrol2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.14 05:09:09
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
	MovementLoopAddLocation(NPC, -21.36, 1.79, -187, 2, 5)
	MovementLoopAddLocation(NPC, -21.48, 1.73, -187.1, 2, 0)
	MovementLoopAddLocation(NPC, -21.09, 1.73, -187.62, 2, 0)
	MovementLoopAddLocation(NPC, -18.36, 2.27, -189.16, 2, 0)
	MovementLoopAddLocation(NPC, -8.7, 2.06, -195.82, 2, 0)
	MovementLoopAddLocation(NPC, -6.44, 1.73, -199.2, 2, 0)
	MovementLoopAddLocation(NPC, -4.04, 1.95, -203.58, 2, 0)
	MovementLoopAddLocation(NPC, -2.06, 2.05, -209.39, 2, 0)
	MovementLoopAddLocation(NPC, -2.11, 1.91, -211.29, 2, 0)
	MovementLoopAddLocation(NPC, -3.52, 1.17, -212.42, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -3.52, 1.17, -212.42, 2, 0)
	MovementLoopAddLocation(NPC, -2.66, 1.66, -211.42, 2, 0)
	MovementLoopAddLocation(NPC, -2.93, 2.05, -206.82, 2, 0)
	MovementLoopAddLocation(NPC, -4.88, 1.81, -200.73, 2, 0)
	MovementLoopAddLocation(NPC, -7.74, 2.05, -195.97, 2, 0)
	MovementLoopAddLocation(NPC, -4.24, 2.62, -175.16, 2, 0)
	MovementLoopAddLocation(NPC, -8.23, 2.63, -165.62, 4, 0)
	MovementLoopAddLocation(NPC, -11.02, 1.28, -162.47, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, -11.02, 1.28, -162.47, 2, 0)
	MovementLoopAddLocation(NPC, -11.35, 1.45, -163.31, 2, 0)
	MovementLoopAddLocation(NPC, -6.33, 2.62, -171.88, 2, 0)
	MovementLoopAddLocation(NPC, -5.8, 2.62, -175.57, 2, 0)
	MovementLoopAddLocation(NPC, -10.52, 2.64, -187.17, 2, 0)
	MovementLoopAddLocation(NPC, -13.32, 2.65, -188.57, 2, 0)
	MovementLoopAddLocation(NPC, -16.87, 2.62, -186.95, 2, 0)
	MovementLoopAddLocation(NPC, -19.6, 2.47, -186.06, 2, 0)
	MovementLoopAddLocation(NPC, -21.36, 1.79, -187, 2, 0)
end

