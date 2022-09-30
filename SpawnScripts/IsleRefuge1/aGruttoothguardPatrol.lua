--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothguardPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.06 08:09:52
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin2.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 3
    local level2 = 4
    local difficulty1 = 6
    local hp1 = 75
    local power1 = 45
    local difficulty2 = 6
    local hp2 = 110
    local power2 = 55
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
	MovementLoopAddLocation(NPC, 236.07, -4.98, -13.29, 2, 5)
	MovementLoopAddLocation(NPC, 241.23, -3.88, -11.7, 2, 0)
	MovementLoopAddLocation(NPC, 248.24, -4.1, -16.27, 2, 0)
	MovementLoopAddLocation(NPC, 246.84, -4.09, -21.95, 2, 0)
	MovementLoopAddLocation(NPC, 237.62, -4.06, -31.12, 2, 0)
	MovementLoopAddLocation(NPC, 236.15, -4.05, -34.65, 2, 0)
	MovementLoopAddLocation(NPC, 234.66, -1.22, -51.2, 2, 0)
	MovementLoopAddLocation(NPC, 237.83, -1.05, -64.93, 2, 0)
	MovementLoopAddLocation(NPC, 237.26, -1.05, -71.26, 2, 0)
	MovementLoopAddLocation(NPC, 226.8, -1.01, -93.55, 2, 0)
	MovementLoopAddLocation(NPC, 218.61, -0.89, -99.58, 2, 0)
	MovementLoopAddLocation(NPC, 213.62, -0.96, -102.6, 2, 0)
	MovementLoopAddLocation(NPC, 209.35, -0.75, -112.45, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 209.35, -0.75, -112.45, 2, 0)
	MovementLoopAddLocation(NPC, 210.85, -0.75, -108.15, 2, 0)
	MovementLoopAddLocation(NPC, 214.66, -0.96, -102.82, 2, 0)
	MovementLoopAddLocation(NPC, 218.18, -0.89, -100.06, 2, 0)
	MovementLoopAddLocation(NPC, 224.6, -1, -96.03, 2, 0)
	MovementLoopAddLocation(NPC, 231.18, -1.02, -87.54, 2, 0)
	MovementLoopAddLocation(NPC, 237.18, -1.05, -68.58, 2, 0)
	MovementLoopAddLocation(NPC, 237.1, -1.05, -63.46, 2, 0)
	MovementLoopAddLocation(NPC, 235.12, -1.04, -56.15, 2, 0)
	MovementLoopAddLocation(NPC, 235.68, -4.05, -36.39, 2, 0)
	MovementLoopAddLocation(NPC, 237.94, -4.06, -31.08, 2, 0)
	MovementLoopAddLocation(NPC, 243.4, -4.08, -25.68, 2, 0)
	MovementLoopAddLocation(NPC, 247.8, -4.1, -19.6, 2, 0)
	MovementLoopAddLocation(NPC, 247.53, -4.1, -10.27, 2, 0)
	MovementLoopAddLocation(NPC, 242.35, -3.89, -10.1, 2, 0)
end

