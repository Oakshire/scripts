--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskpawnPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.06.27 02:06:47
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
	MovementLoopAddLocation(NPC, -82.05, -2.72, 28.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -82.05, -2.72, 28.84, 2, 0)
	MovementLoopAddLocation(NPC, -74.84, -2.59, 28.51, 2, 0)
	MovementLoopAddLocation(NPC, -66.22, -2.56, 29, 2, 0)
	MovementLoopAddLocation(NPC, -63.17, -2.71, 26.56, 2, 0)
	MovementLoopAddLocation(NPC, -62.56, -2.84, 22.62, 2, 0)
	MovementLoopAddLocation(NPC, -62.67, -2.71, 19.63, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -62.67, -2.71, 19.63, 2, 0)
	MovementLoopAddLocation(NPC, -62.53, -2.8, 25.11, 2, 0)
	MovementLoopAddLocation(NPC, -64.09, -2.56, 27.5, 2, 0)
	MovementLoopAddLocation(NPC, -69.28, -2.56, 30.5, 2, 0)
	MovementLoopAddLocation(NPC, -74.5, -2.56, 30.81, 2, 0)
	MovementLoopAddLocation(NPC, -82.95, -2.76, 37.28, 2, 0)
	MovementLoopAddLocation(NPC, -89, -2.83, 41.91, 2, 0)
	MovementLoopAddLocation(NPC, -89.68, -2.94, 43.33, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -89.68, -2.94, 43.33, 2, 0)
	MovementLoopAddLocation(NPC, -88.63, -2.8, 39.88, 2, 0)
	MovementLoopAddLocation(NPC, -85.81, -2.72, 30.66, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -85.81, -2.72, 30.66, 2, 0)
	MovementLoopAddLocation(NPC, -85.84, -2.73, 32.34, 2, 0)
	MovementLoopAddLocation(NPC, -88.65, -2.72, 32.91, 2, 0)
	MovementLoopAddLocation(NPC, -91.73, -2.71, 30.29, 2, 0)
	MovementLoopAddLocation(NPC, -96.15, -2.65, 20.12, 2, 0)
	MovementLoopAddLocation(NPC, -97.77, -2.69, 17.04, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -97.77, -2.69, 17.04, 2, 0)
	MovementLoopAddLocation(NPC, -97.53, -2.64, 19.65, 2, 0)
	MovementLoopAddLocation(NPC, -96.3, -2.66, 22.73, 2, 0)
	MovementLoopAddLocation(NPC, -90.64, -2.71, 30.53, 2, 0)
	MovementLoopAddLocation(NPC, -83.09, -2.74, 33.91, 2, 0)
	MovementLoopAddLocation(NPC, -77.55, -2.72, 31.65, 2, 0)
	MovementLoopAddLocation(NPC, -76.7, -2.72, 26.62, 2, 0)
	MovementLoopAddLocation(NPC, -75.59, -2.71, 23.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -75.59, -2.71, 23.52, 2, 0)
	MovementLoopAddLocation(NPC, -76.04, -2.71, 27.09, 2, 0)
	MovementLoopAddLocation(NPC, -77.35, -2.73, 29.38, 2, 0)
	MovementLoopAddLocation(NPC, -82.05, -2.72, 28.84, 2, 0)
end

