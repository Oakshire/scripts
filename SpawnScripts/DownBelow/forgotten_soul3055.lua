--[[
    Script Name    : SpawnScripts/DownBelow/forgotten_soul3055.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.24 07:04:53
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
	MovementLoopAddLocation(NPC, -189.26, 0.32, -47.02, 2, 0)
	MovementLoopAddLocation(NPC, -191.47, -0.12, -53.65, 2, 0)
	MovementLoopAddLocation(NPC, -191.33, -0.07, -66, 2, 0)
	MovementLoopAddLocation(NPC, -186.79, -0.09, -73.02, 2, 0)
	MovementLoopAddLocation(NPC, -176.75, -0.27, -73.44, 2, 7)
	MovementLoopAddLocation(NPC, -177.41, -0.26, -84.62, 2, 0)
	MovementLoopAddLocation(NPC, -185.92, -0.02, -92.03, 2, 0)
	MovementLoopAddLocation(NPC, -196.96, -0.05, -93.43, 2, 0)
	MovementLoopAddLocation(NPC, -208.74, -0.1, -91.94, 2, 0)
	MovementLoopAddLocation(NPC, -212.65, -0.05, -87.93, 2, 2)
	MovementLoopAddLocation(NPC, -219.17, -0.1, -93.25, 2, 7)
	MovementLoopAddLocation(NPC, -213.18, -0.05, -88.98, 2, 0)
	MovementLoopAddLocation(NPC, -218.95, -0.09, -81.92, 2, 0)
	MovementLoopAddLocation(NPC, -218.38, 0.02, -57.63, 2, 0)
	MovementLoopAddLocation(NPC, -209.03, -0.9, -47.12, 2, 0)
	MovementLoopAddLocation(NPC, -191.83, 0, -29.67, 2, 0)
	MovementLoopAddLocation(NPC, -182.6, -0.12, -38.11, 2, 5)
	MovementLoopAddLocation(NPC, -184.64, -0.15, -41.73, 2, 0)
	MovementLoopAddLocation(NPC, -189.35, 0.36, -47.14, 2, 0)
end

