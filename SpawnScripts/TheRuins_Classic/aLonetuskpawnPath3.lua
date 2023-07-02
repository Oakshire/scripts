--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskpawnPath3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.06.27 02:06:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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
	MovementLoopAddLocation(NPC, -107.71, -2.63, 21.18, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -101.53, -2.65, 22.66, 2, 0)
	MovementLoopAddLocation(NPC, -93.74, -2.66, 20.89, 2, 0)
	MovementLoopAddLocation(NPC, -87.03, -2.68, 22.27, 2, 0)
	MovementLoopAddLocation(NPC, -85.85, -2.69, 24.25, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -85.85, -2.69, 24.25, 2, 0)
	MovementLoopAddLocation(NPC, -85.85, -2.69, 24.25, 2, 0)
	MovementLoopAddLocation(NPC, -81.08, -2.7, 23.49, 2, 0)
	MovementLoopAddLocation(NPC, -77.19, -2.72, 26.16, 2, 0)
	MovementLoopAddLocation(NPC, -74.68, -2.59, 27.54, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -74.68, -2.59, 27.54, 2, 0)
	MovementLoopAddLocation(NPC, -76.18, -2.71, 27.64, 2, 0)
	MovementLoopAddLocation(NPC, -79.67, -2.73, 29.51, 2, 0)
	MovementLoopAddLocation(NPC, -84.2, -2.73, 32.33, 2, 0)
	MovementLoopAddLocation(NPC, -88.91, -2.72, 32.33, 2, 0)
	MovementLoopAddLocation(NPC, -92.67, -2.7, 29.44, 2, 0)
	MovementLoopAddLocation(NPC, -94.39, -2.68, 25.73, 2, 0)
	MovementLoopAddLocation(NPC, -98.51, -2.66, 23.94, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -98.51, -2.66, 23.94, 2, 0)
	MovementLoopAddLocation(NPC, -97.84, -2.65, 21.52, 2, 0)
	MovementLoopAddLocation(NPC, -97.87, -2.64, 19.01, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -97.87, -2.64, 19.01, 2, 0)
	MovementLoopAddLocation(NPC, -99.1, -2.64, 20.93, 2, 0)
	MovementLoopAddLocation(NPC, -102.72, -2.66, 24.77, 2, 0)
	MovementLoopAddLocation(NPC, -106, -2.7, 25.96, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -106, -2.7, 25.96, 2, 0)
	MovementLoopAddLocation(NPC, -107.54, -2.63, 22.43, 2, 0)
	MovementLoopAddLocation(NPC, -109.77, -2.62, 20.44, 2, 0)
	MovementLoopAddLocation(NPC, -114.03, -2.61, 19.5, 2, 0)
	MovementLoopAddLocation(NPC, -120.15, -2.59, 18.44, 2, 0)
	MovementLoopAddLocation(NPC, -123.54, -2.59, 19.34, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -123.54, -2.59, 19.34, 2, 0)
	MovementLoopAddLocation(NPC, -121.57, -2.59, 18.52, 2, 0)
	MovementLoopAddLocation(NPC, -116.21, -2.6, 19.25, 2, 0)
end

