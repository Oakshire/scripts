--[[
    Script Name    : SpawnScripts/DownBelow/forgotten_soul3056.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.24 07:04:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 370
    local power1 = 130
    local difficulty2 = 6
    local hp2 = 275
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
	MovementLoopAddLocation(NPC, -183.62, -0.09, -74.08, 2, 3)
	MovementLoopAddLocation(NPC, -189.81, 0.15, -69.6, 2, 0)
	MovementLoopAddLocation(NPC, -191.58, -0.1, -60.49, 2, 0)
	MovementLoopAddLocation(NPC, -190.25, 0.15, -48.91, 2, 0)
	MovementLoopAddLocation(NPC, -181.55, -0.13, -39.71, 2, 0)
	MovementLoopAddLocation(NPC, -186.26, 0.14, -34.22, 2, 5)
	MovementLoopAddLocation(NPC, -182.55, -0.09, -37.44, 2, 0)
	MovementLoopAddLocation(NPC, -183.16, -0.15, -40.05, 2, 0)
	MovementLoopAddLocation(NPC, -190.29, 0.03, -49.23, 2, 0)
	MovementLoopAddLocation(NPC, -191.1, -0.06, -66.55, 2, 0)
	MovementLoopAddLocation(NPC, -185.36, -0.09, -73.11, 2, 0)
	MovementLoopAddLocation(NPC, -175.75, -0.27, -74.05, 2, 0)
	MovementLoopAddLocation(NPC, -177.57, -0.25, -83.77, 2, 0)
	MovementLoopAddLocation(NPC, -182.58, -0.11, -89.81, 2, 0)
	MovementLoopAddLocation(NPC, -189.46, -0.07, -93.07, 2, 0)
	MovementLoopAddLocation(NPC, -202.88, 0.44, -92.78, 2, 0)
	MovementLoopAddLocation(NPC, -210.77, -0.05, -90.24, 2, 0)
	MovementLoopAddLocation(NPC, -217.37, -0.1, -83.24, 2, 5)
	MovementLoopAddLocation(NPC, -218.46, -0.04, -74.9, 2, 0)
	MovementLoopAddLocation(NPC, -218.39, 0.01, -58.53, 2, 0)
	MovementLoopAddLocation(NPC, -213.74, 0.01, -52.86, 2, 0)
	MovementLoopAddLocation(NPC, -198.03, 0, -35.24, 2, 5)
	MovementLoopAddLocation(NPC, -214.27, -0.01, -51.47, 2, 0)
	MovementLoopAddLocation(NPC, -218.38, 0.01, -58.22, 2, 0)
	MovementLoopAddLocation(NPC, -218.59, -0.05, -79.7, 2, 0)
	MovementLoopAddLocation(NPC, -210.76, -0.04, -89.99, 2, 0)
	MovementLoopAddLocation(NPC, -189.07, -0.05, -93.23, 2, 0)
	MovementLoopAddLocation(NPC, -176.96, -0.24, -83.39, 2, 0)
	MovementLoopAddLocation(NPC, -176.23, -0.25, -74.62, 2, 0)
	MovementLoopAddLocation(NPC, -182.63, -0.12, -74.29, 2, 0)
	MovementLoopAddLocation(NPC, -187.4, 0.19, -72.47, 2, 5)
end

