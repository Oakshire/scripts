--[[
    Script Name    : SpawnScripts/Caves/aMudpawguardPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.04 06:10:26
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 240
    local power1 = 100
    local difficulty2 = 6
    local hp2 = 290
    local power2 = 110
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
	MovementLoopAddLocation(NPC, 45.09, 12.12, -93.56, 2, 6)
	MovementLoopAddLocation(NPC, 45.09, 12.12, -93.56, 2, 0)
	MovementLoopAddLocation(NPC, 51.55, 12.38, -97.69, 2, 0)
	MovementLoopAddLocation(NPC, 55.23, 12.38, -101.99, 2, 0)
	MovementLoopAddLocation(NPC, 57.71, 12.35, -103.29, 2, 0)
	MovementLoopAddLocation(NPC, 60.49, 12.35, -103.38, 2, 0)
	MovementLoopAddLocation(NPC, 61.81, 13.37, -99.64, 2, 0)
	MovementLoopAddLocation(NPC, 64.15, 15.07, -94.64, 2, 0)
	MovementLoopAddLocation(NPC, 64.78, 15.67, -92.7, 2, 0)
	MovementLoopAddLocation(NPC, 65.14, 17.13, -87.78, 2, 0)
	MovementLoopAddLocation(NPC, 64.04, 19.39, -81.57, 2, 0)
	MovementLoopAddLocation(NPC, 62.56, 20.91, -78.5, 2, 0)
	MovementLoopAddLocation(NPC, 59.02, 23.29, -73.89, 2, 0)
	MovementLoopAddLocation(NPC, 57.47, 24.2, -71.24, 2, 0)
	MovementLoopAddLocation(NPC, 57.64, 24.31, -69.97, 2, 0)
	MovementLoopAddLocation(NPC, 59.93, 24.56, -65.22, 2, 0)
	MovementLoopAddLocation(NPC, 62.61, 25.98, -59.85, 2, 0)
	MovementLoopAddLocation(NPC, 65.81, 27.5, -55.78, 2, 0)
	MovementLoopAddLocation(NPC, 69.54, 28.12, -54.58, 2, 0)
	MovementLoopAddLocation(NPC, 73.49, 28.87, -54.84, 2, 0)
	MovementLoopAddLocation(NPC, 77.28, 30.72, -58.78, 2, 0)
	MovementLoopAddLocation(NPC, 80.1, 34.02, -64.35, 2, 0)
	MovementLoopAddLocation(NPC, 80.13, 34.54, -66.15, 2, 0)
	MovementLoopAddLocation(NPC, 80.13, 34.54, -66.15, 2, 0)
	MovementLoopAddLocation(NPC, 80.02, 33.89, -64.13, 2, 0)
	MovementLoopAddLocation(NPC, 78.5, 31.81, -60.84, 2, 0)
	MovementLoopAddLocation(NPC, 75.78, 29.99, -57.01, 2, 0)
	MovementLoopAddLocation(NPC, 72.96, 28.73, -54.97, 2, 0)
	MovementLoopAddLocation(NPC, 70.4, 28.24, -54.8, 2, 0)
	MovementLoopAddLocation(NPC, 66.93, 27.84, -55.51, 2, 0)
	MovementLoopAddLocation(NPC, 64.95, 27, -56.91, 2, 0)
	MovementLoopAddLocation(NPC, 60.97, 25.03, -63.14, 2, 0)
	MovementLoopAddLocation(NPC, 59.27, 24.45, -67.22, 2, 0)
	MovementLoopAddLocation(NPC, 57.75, 24.32, -68.83, 2, 0)
	MovementLoopAddLocation(NPC, 57.87, 24.03, -71.85, 2, 0)
	MovementLoopAddLocation(NPC, 61.41, 22.24, -76.26, 2, 0)
	MovementLoopAddLocation(NPC, 63.04, 20.68, -78.9, 2, 0)
	MovementLoopAddLocation(NPC, 65.6, 17.42, -87.04, 2, 0)
	MovementLoopAddLocation(NPC, 65.51, 15.89, -91.97, 2, 0)
	MovementLoopAddLocation(NPC, 62.83, 14.24, -97.02, 2, 0)
	MovementLoopAddLocation(NPC, 61.67, 13.07, -100.55, 2, 0)
	MovementLoopAddLocation(NPC, 61.38, 12.36, -103.21, 2, 0)
	MovementLoopAddLocation(NPC, 60.44, 12.32, -104.15, 2, 0)
	MovementLoopAddLocation(NPC, 59.52, 12.32, -104.19, 2, 0)
	MovementLoopAddLocation(NPC, 52.6, 12.38, -98.46, 2, 0)
	MovementLoopAddLocation(NPC, 45.09, 12.12, -93.56, 2, 0)
end

