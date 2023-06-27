--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskguardPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.06.27 02:06:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 80
    local difficulty2 = 6
    local hp2 = 200
    local power2 = 90
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
	MovementLoopAddLocation(NPC, -90.61, -2.69, 16.64, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -90.61, -2.69, 16.64, 2, 0)
	MovementLoopAddLocation(NPC, -89.1, -2.67, 21.35, 2, 0)
	MovementLoopAddLocation(NPC, -86.19, -2.68, 22.44, 2, 0)
	MovementLoopAddLocation(NPC, -82.36, -2.69, 22.42, 2, 0)
	MovementLoopAddLocation(NPC, -79.09, -2.7, 22.88, 2, 0)
	MovementLoopAddLocation(NPC, -77.05, -2.72, 25.86, 2, 0)
	MovementLoopAddLocation(NPC, -76.45, -2.72, 27.8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -76.45, -2.72, 27.8, 2, 0)
	MovementLoopAddLocation(NPC, -76.74, -2.72, 26.04, 2, 0)
	MovementLoopAddLocation(NPC, -76.4, -2.69, 19.78, 2, 0)
	MovementLoopAddLocation(NPC, -74.62, -2.81, 14.01, 2, 0)
	MovementLoopAddLocation(NPC, -71.78, -2.87, 12.58, 2, 0)
	MovementLoopAddLocation(NPC, -70.21, -2.71, 13.14, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -70.21, -2.71, 13.14, 2, 0)
	MovementLoopAddLocation(NPC, -72.97, -2.84, 12.23, 2, 0)
	MovementLoopAddLocation(NPC, -75.26, -2.71, 15.66, 2, 0)
	MovementLoopAddLocation(NPC, -76.66, -2.69, 19.92, 2, 0)
	MovementLoopAddLocation(NPC, -78.88, -2.7, 23.24, 2, 0)
	MovementLoopAddLocation(NPC, -82.66, -2.69, 22.77, 2, 0)
	MovementLoopAddLocation(NPC, -86.82, -2.68, 23.03, 2, 0)
	MovementLoopAddLocation(NPC, -90.5, -2.68, 24.95, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -90.5, -2.68, 24.95, 2, 0)
	MovementLoopAddLocation(NPC, -89.15, -2.68, 22.84, 2, 0)
	MovementLoopAddLocation(NPC, -86.96, -2.65, 17.3, 2, 0)
	MovementLoopAddLocation(NPC, -82.3, -2.67, 10.96, 2, 0)
	MovementLoopAddLocation(NPC, -82.93, -2.67, 9.4, 2, 0)
	MovementLoopAddLocation(NPC, -84.26, -2.51, 8.38, 2, 0)
	MovementLoopAddLocation(NPC, -84.26, -2.51, 8.38, 2, 0)
	MovementLoopAddLocation(NPC, -91.11, -2.7, 28.27, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -91.11, -2.7, 28.27, 2, 0)
	MovementLoopAddLocation(NPC, -89.34, -2.69, 26.69, 2, 0)
	MovementLoopAddLocation(NPC, -87.94, -2.67, 20.5, 2, 0)
	MovementLoopAddLocation(NPC, -90.2, -2.69, 14.37, 2, 0)
	MovementLoopAddLocation(NPC, -90.61, -2.69, 16.64, 2, 0)
end

