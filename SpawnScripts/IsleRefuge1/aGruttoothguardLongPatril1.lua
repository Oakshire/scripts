--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothguardLongPatril1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.07 08:09:36
    Script Purpose : 
                   : 
--]]

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
	MovementLoopAddLocation(NPC, 215.84, -3.36, 141.45, 2, 0)
	MovementLoopAddLocation(NPC, 222.77, -4.69, 141.48, 2, 0)
	MovementLoopAddLocation(NPC, 242.84, -5.27, 133.04, 2, 0)
	MovementLoopAddLocation(NPC, 245.66, -5.28, 127.09, 2, 0)
	MovementLoopAddLocation(NPC, 245.37, -5.82, 122.26, 2, 0)
	MovementLoopAddLocation(NPC, 243.16, -6.85, 110.76, 2, 0)
	MovementLoopAddLocation(NPC, 243.73, -6.98, 102.48, 2, 0)
	MovementLoopAddLocation(NPC, 246.65, -7.23, 92.07, 2, 0)
	MovementLoopAddLocation(NPC, 248.62, -4.24, 59.52, 2, 0)
	MovementLoopAddLocation(NPC, 251.84, -4.13, 53.43, 2, 0)
	MovementLoopAddLocation(NPC, 252.44, -4.13, 47.5, 2, 0)
	MovementLoopAddLocation(NPC, 249.06, -4.12, 42.2, 2, 0)
	MovementLoopAddLocation(NPC, 244.14, -4.1, 36.62, 2, 0)
	MovementLoopAddLocation(NPC, 234.74, -4.06, 29.58, 2, 0)
	MovementLoopAddLocation(NPC, 232.08, -4.05, 24.86, 2, 0)
	MovementLoopAddLocation(NPC, 229.99, -4.04, 11.67, 2, 0)
	MovementLoopAddLocation(NPC, 230.1, -4.04, 8.51, 2, 0)
	MovementLoopAddLocation(NPC, 231.93, -4.05, 5.48, 2, 0)
	MovementLoopAddLocation(NPC, 236.08, -4.06, 1.04, 2, 0)
	MovementLoopAddLocation(NPC, 245.2, -4.09, -3.96, 2, 0)
	MovementLoopAddLocation(NPC, 255.09, -3.94, -5.09, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 255.09, -3.94, -5.09, 2, 0)
	MovementLoopAddLocation(NPC, 247.4, -4.1, -4.67, 2, 0)
	MovementLoopAddLocation(NPC, 237.02, -4.06, -0.27, 2, 0)
	MovementLoopAddLocation(NPC, 233.22, -4.01, 3.67, 2, 0)
	MovementLoopAddLocation(NPC, 230.16, -4.04, 9.28, 2, 0)
	MovementLoopAddLocation(NPC, 231.57, -4.05, 24.18, 2, 0)
	MovementLoopAddLocation(NPC, 233.93, -4.06, 28.12, 2, 0)
	MovementLoopAddLocation(NPC, 246.26, -4.11, 38.17, 2, 0)
	MovementLoopAddLocation(NPC, 252.16, -4.13, 46.81, 2, 0)
	MovementLoopAddLocation(NPC, 251.68, -4.13, 53.6, 2, 0)
	MovementLoopAddLocation(NPC, 249.25, -4.12, 57.49, 2, 0)
	MovementLoopAddLocation(NPC, 248.69, -4.5, 62.53, 2, 0)
	MovementLoopAddLocation(NPC, 246.69, -6.98, 84.92, 2, 0)
	MovementLoopAddLocation(NPC, 246.63, -7.23, 91.39, 2, 0)
	MovementLoopAddLocation(NPC, 243.49, -6.97, 103.01, 2, 0)
	MovementLoopAddLocation(NPC, 243.36, -6.67, 111.83, 2, 0)
	MovementLoopAddLocation(NPC, 246.05, -5.69, 123.22, 2, 0)
	MovementLoopAddLocation(NPC, 245.64, -5.28, 128.81, 2, 0)
	MovementLoopAddLocation(NPC, 243.24, -5.27, 132.73, 2, 0)
	MovementLoopAddLocation(NPC, 225.5, -5.2, 141.4, 2, 0)
	MovementLoopAddLocation(NPC, 215.84, -3.36, 141.45, 2, math.random(5,10))
end

