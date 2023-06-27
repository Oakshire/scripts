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
	MovementLoopAddLocation(NPC, -104.94, -2.64, 21.57, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -104.94, -2.64, 21.57, 2, 0)
	MovementLoopAddLocation(NPC, -95.77, -2.67, 23.82, 2, 0)
	MovementLoopAddLocation(NPC, -93.92, -2.68, 26.92, 2, 0)
	MovementLoopAddLocation(NPC, -92.67, -2.72, 34.57, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -92.67, -2.72, 34.57, 2, 0)
	MovementLoopAddLocation(NPC, -94.47, -2.71, 33.2, 2, 0)
	MovementLoopAddLocation(NPC, -97.57, -2.71, 33.58, 2, 0)
	MovementLoopAddLocation(NPC, -103.09, -2.54, 38.86, 2, 0)
	MovementLoopAddLocation(NPC, -102.05, -2.54, 37.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -102.05, -2.54, 37.84, 2, 0)
	MovementLoopAddLocation(NPC, -98.7, -2.76, 32.29, 2, 0)
	MovementLoopAddLocation(NPC, -96.44, -2.7, 31.23, 2, 0)
	MovementLoopAddLocation(NPC, -89.57, -2.7, 27.34, 2, 0)
	MovementLoopAddLocation(NPC, -87.43, -2.7, 27.49, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -87.43, -2.7, 27.49, 2, 0)
	MovementLoopAddLocation(NPC, -89.53, -2.69, 26.64, 2, 0)
	MovementLoopAddLocation(NPC, -108.89, -2.62, 20.5, 2, 0)
	MovementLoopAddLocation(NPC, -114.43, -2.61, 19.56, 2, 0)
	MovementLoopAddLocation(NPC, -116.04, -2.61, 20.39, 2, 0)
	MovementLoopAddLocation(NPC, -117.65, -2.45, 25.02, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -117.65, -2.45, 25.02, 2, 0)
	MovementLoopAddLocation(NPC, -116.29, -2.61, 20.3, 2, 0)
	MovementLoopAddLocation(NPC, -114.84, -2.6, 19.74, 2, 0)
	MovementLoopAddLocation(NPC, -104.94, -2.64, 21.57, 2, 0)
end

