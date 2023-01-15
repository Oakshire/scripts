--[[
    Script Name    : SpawnScripts/DownBelow_Classic/arabidshriller1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.14 06:01:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 8
    local hp1 = 485
    local power1 = 200
    local difficulty2 = 8
    local hp2 = 555
    local power2 = 240
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
	MovementLoopAddLocation(NPC, -204.55, 1.5, -42.7, 2, 0)
	MovementLoopAddLocation(NPC, -210.2, 1.5, -48.35, 2, 0)
	MovementLoopAddLocation(NPC, -213.77, 1.5, -51.82, 2, 0)
	MovementLoopAddLocation(NPC, -218.59, 1.5, -57.22, 2, 0)
	MovementLoopAddLocation(NPC, -218.91, 1.5, -68.38, 2, 0)
	MovementLoopAddLocation(NPC, -218.41, 1.5, -80.04, 2, 0)
	MovementLoopAddLocation(NPC, -217.11, 1.5, -84.38, 2, 0)
	MovementLoopAddLocation(NPC, -209.64, 1.5, -91.72, 2, 0)
	MovementLoopAddLocation(NPC, -206.32, 1.5, -93.2, 2, 0)
	MovementLoopAddLocation(NPC, -190.42, 1.5, -93.47, 2, 0)
	MovementLoopAddLocation(NPC, -185.25, 1.5, -91.86, 2, 0)
	MovementLoopAddLocation(NPC, -178.36, 1.5, -85.08, 2, 0)
	MovementLoopAddLocation(NPC, -176.37, 1.5, -78.9, 2, 0)
	MovementLoopAddLocation(NPC, -176.61, 1.5, -73.61, 2, 0)
	MovementLoopAddLocation(NPC, -184.85, 1.5, -73.9, 2, 0)
	MovementLoopAddLocation(NPC, -190.8, 1.5, -67.91, 2, 0)
	MovementLoopAddLocation(NPC, -190.85, 1.5, -50.42, 2, 0)
	MovementLoopAddLocation(NPC, -187.51, 1.5, -45.78, 2, 0)
	MovementLoopAddLocation(NPC, -181, 1.5, -38.67, 2, 0)
	MovementLoopAddLocation(NPC, -187.64, 1.5, -45.4, 2, 0)
	MovementLoopAddLocation(NPC, -190.87, 1.5, -50.13, 2, 0)
	MovementLoopAddLocation(NPC, -191.08, 1.5, -65.82, 2, 0)
	MovementLoopAddLocation(NPC, -190.28, 1.5, -68.28, 2, 0)
	MovementLoopAddLocation(NPC, -186.43, 1.5, -72.99, 2, 0)
	MovementLoopAddLocation(NPC, -182.22, 1.5, -73.6, 2, 0)
	MovementLoopAddLocation(NPC, -166.95, 1.5, -74.24, 2, 0)
	MovementLoopAddLocation(NPC, -152.88, 1.5, -82.16, 2, 0)
	MovementLoopAddLocation(NPC, -164.99, 1.5, -75.24, 2, 0)
    MovementLoopAddLocation(NPC, -172.22, 1.5, -73.68, 2, 0)
	MovementLoopAddLocation(NPC, -176.06, 1.5, -73.88, 2, 0)
	MovementLoopAddLocation(NPC, -177.23, 1.5, -84.01, 2, 0)
	MovementLoopAddLocation(NPC, -182.52, 1.5, -89.97, 2, 0)
	MovementLoopAddLocation(NPC, -189.55, 1.5, -93.15, 2, 0)
	MovementLoopAddLocation(NPC, -206.35, 1.5, -92.92, 2, 0)
	MovementLoopAddLocation(NPC, -210.5, 1.5, -90.78, 2, 0)
	MovementLoopAddLocation(NPC, -216.02, 1.5, -85.22, 2, 0)
	MovementLoopAddLocation(NPC, -218.59, 1.5, -81.23, 2, 0)
	MovementLoopAddLocation(NPC, -218.71, 1.51, -68.9, 2, 0)
	MovementLoopAddLocation(NPC, -218.29, 1.5, -59.07, 2, 0)
	MovementLoopAddLocation(NPC, -215.87, 1.5, -54.73, 2, 0)
	MovementLoopAddLocation(NPC, -213.87, 1.5, -52.18, 2, 0)
	MovementLoopAddLocation(NPC, -209.95, 1.5, -48.01, 2, 0)
	MovementLoopAddLocation(NPC, -205.48, 1.5, -43.68, 2, 0)
	MovementLoopAddLocation(NPC, -204.07, 1.5, -42.23, 2, 0)
end