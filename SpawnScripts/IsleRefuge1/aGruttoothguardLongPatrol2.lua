--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothguardLongPatrol2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.07 09:09:00
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
	MovementLoopAddLocation(NPC, 254.02, -3.93, -7.45, 2, 0)
	MovementLoopAddLocation(NPC, 248.86, -4.11, -7.79, 2, 0)
	MovementLoopAddLocation(NPC, 246.84, -4.1, -4.82, 2, 0)
	MovementLoopAddLocation(NPC, 237.22, -4.06, -0.25, 2, 0)
	MovementLoopAddLocation(NPC, 231.05, -4.04, 6.71, 2, 0)
	MovementLoopAddLocation(NPC, 230.29, -4.04, 11.09, 2, 0)
	MovementLoopAddLocation(NPC, 231.68, -4.05, 24.8, 2, 0)
	MovementLoopAddLocation(NPC, 234.27, -4.06, 29.08, 2, 0)
	MovementLoopAddLocation(NPC, 246.2, -4.1, 38.27, 2, 0)
	MovementLoopAddLocation(NPC, 251.93, -4.13, 45.71, 2, 0)
	MovementLoopAddLocation(NPC, 252.11, -4.13, 50.64, 2, 0)
	MovementLoopAddLocation(NPC, 251.49, -4.13, 54.4, 2, 0)
	MovementLoopAddLocation(NPC, 249.33, -4.12, 57.47, 2, 0)
	MovementLoopAddLocation(NPC, 247, -6.98, 85.22, 2, 0)
	MovementLoopAddLocation(NPC, 246.9, -7.23, 91.17, 2, 0)
	MovementLoopAddLocation(NPC, 244, -7.1, 101.03, 2, 0)
	MovementLoopAddLocation(NPC, 243.16, -6.75, 111.3, 2, 0)
	MovementLoopAddLocation(NPC, 245.8, -5.57, 123.63, 2, 0)
	MovementLoopAddLocation(NPC, 245.19, -5.27, 130, 2, 0)
	MovementLoopAddLocation(NPC, 243, -5.27, 132.75, 2, 0)
	MovementLoopAddLocation(NPC, 225.99, -5.21, 141.58, 2, 0)
	MovementLoopAddLocation(NPC, 215.18, -3.3, 141.56, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 215.18, -3.3, 141.56, 2, 0)
	MovementLoopAddLocation(NPC, 223.97, -4.98, 141.75, 2, 0)
	MovementLoopAddLocation(NPC, 243.54, -5.27, 132.55, 2, 0)
	MovementLoopAddLocation(NPC, 245.45, -5.28, 126.37, 2, 0)
	MovementLoopAddLocation(NPC, 245.1, -5.85, 121.63, 2, 0)
	MovementLoopAddLocation(NPC, 243.25, -6.56, 113.18, 2, 0)
	MovementLoopAddLocation(NPC, 243.59, -6.97, 103.38, 2, 0)
	MovementLoopAddLocation(NPC, 245.93, -7.23, 94.61, 2, 0)
	MovementLoopAddLocation(NPC, 246.66, -7.04, 86.87, 2, 0)
	MovementLoopAddLocation(NPC, 247.27, -6.88, 77.94, 2, 0)
	MovementLoopAddLocation(NPC, 248.9, -4.19, 59.35, 2, 0)
	MovementLoopAddLocation(NPC, 251.43, -4.13, 54.56, 2, 0)
	MovementLoopAddLocation(NPC, 252.42, -4.13, 48.54, 2, 0)
	MovementLoopAddLocation(NPC, 249.81, -4.12, 43.32, 2, 0)
	MovementLoopAddLocation(NPC, 244.62, -4.1, 37.02, 2, 0)
	MovementLoopAddLocation(NPC, 234.56, -4.06, 29.6, 2, 0)
	MovementLoopAddLocation(NPC, 232.26, -4.05, 25.99, 2, 0)
	MovementLoopAddLocation(NPC, 229.79, -4.04, 12.18, 2, 0)
	MovementLoopAddLocation(NPC, 230.48, -4.04, 7.75, 2, 0)
	MovementLoopAddLocation(NPC, 232.91, -3.98, 4.02, 2, 0)
	MovementLoopAddLocation(NPC, 243.76, -4.09, -3.45, 2, 0)
	MovementLoopAddLocation(NPC, 247.69, -4.1, -7.16, 2, 0)
	MovementLoopAddLocation(NPC, 254.02, -3.93, -7.45, 2, math.random(5,10))
end

