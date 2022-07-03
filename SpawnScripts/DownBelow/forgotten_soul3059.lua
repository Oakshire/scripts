--[[
    Script Name    : SpawnScripts/DownBelow/forgotten_soul3059.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.24 07:04:29
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -213.09, -0.13, -50.92, 2, 0)
	MovementLoopAddLocation(NPC, -217.78, 0.03, -56.4, 2, 0)
	MovementLoopAddLocation(NPC, -219.08, -0.04, -76.79, 2, 0)
	MovementLoopAddLocation(NPC, -216.47, -0.07, -83.98, 2, 0)
	MovementLoopAddLocation(NPC, -208.04, -0.08, -92.25, 2, 0)
	MovementLoopAddLocation(NPC, -188.43, -0.05, -92.93, 2, 0)
	MovementLoopAddLocation(NPC, -179.78, -0.31, -87.74, 2, 0)
	MovementLoopAddLocation(NPC, -175.24, -0.23, -78.04, 2, 0)
	MovementLoopAddLocation(NPC, -175.91, -0.25, -73.11, 2, 0)
	MovementLoopAddLocation(NPC, -189.07, 0.41, -71.84, 2, 0)
	MovementLoopAddLocation(NPC, -191.94, -0.11, -62.75, 2, 0)
	MovementLoopAddLocation(NPC, -190.56, 0.46, -47.61, 2, 0)
	MovementLoopAddLocation(NPC, -181.95, -0.16, -39.35, 2, 0)
	MovementLoopAddLocation(NPC, -189.66, 0, -31.12, 2, 0)
	MovementLoopAddLocation(NPC, -199.15, 0, -37.34, 2, 0)
	MovementLoopAddLocation(NPC, -211.24, -0.65, -49.38, 2, 0)
end

