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
	MovementLoopAddLocation(NPC, -89.52, -2.68, 23.61, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -89.52, -2.68, 23.61, 2, 0)
	MovementLoopAddLocation(NPC, -87.3, -2.69, 25.82, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -87.3, -2.69, 25.82, 2, 0)
	MovementLoopAddLocation(NPC, -89.33, -2.68, 24.98, 2, 0)
	MovementLoopAddLocation(NPC, -92.02, -2.69, 26.23, 2, 0)
	MovementLoopAddLocation(NPC, -95.46, -2.7, 31.45, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -95.46, -2.7, 31.45, 2, 0)
	MovementLoopAddLocation(NPC, -91.9, -2.69, 27.23, 2, 0)
	MovementLoopAddLocation(NPC, -89.04, -2.69, 26.08, 2, 0)
	MovementLoopAddLocation(NPC, -87.54, -2.7, 26.64, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -87.54, -2.7, 26.64, 2, 0)
	MovementLoopAddLocation(NPC, -88.32, -2.68, 24.14, 2, 0)
	MovementLoopAddLocation(NPC, -87.64, -2.67, 20.09, 2, 0)
	MovementLoopAddLocation(NPC, -86.5, -2.66, 18.56, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -86.5, -2.66, 18.56, 2, 0)
	MovementLoopAddLocation(NPC, -88.83, -2.67, 20.77, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -88.83, -2.67, 20.77, 2, 0)
	MovementLoopAddLocation(NPC, -88.02, -2.67, 21.55, 2, 0)
	MovementLoopAddLocation(NPC, -87.38, -2.68, 24.06, 2, 0)
	MovementLoopAddLocation(NPC, -87.67, -2.7, 27.01, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -87.67, -2.7, 27.01, 2, 0)
	MovementLoopAddLocation(NPC, -88.72, -2.69, 25.7, 2, 0)
	MovementLoopAddLocation(NPC, -91.63, -2.67, 23.77, 2, 0)
	MovementLoopAddLocation(NPC, -96.21, -2.66, 22.17, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -96.21, -2.66, 22.17, 2, 0)
	MovementLoopAddLocation(NPC, -94.73, -2.67, 24.62, 2, 0)
	MovementLoopAddLocation(NPC, -94.19, -2.69, 29.19, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -94.19, -2.69, 29.19, 2, 0)
	MovementLoopAddLocation(NPC, -90.23, -2.69, 27.02, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -90.23, -2.69, 27.02, 2, 0)
	MovementLoopAddLocation(NPC, -92.12, -2.67, 23.34, 2, 0)
end

