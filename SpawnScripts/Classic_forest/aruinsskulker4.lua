--[[
    Script Name    : SpawnScripts/Classic_forest/aruinsskulker4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.14 09:10:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local difficulty1 = 6
    local hp1 = 275
    local power1 = 110
    local difficulty2 = 6
    local hp2 = 370
    local power2 = 130
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
	MovementLoopAddLocation(NPC, 1064.87, -26.56, -942.02, 2, 0)
	MovementLoopAddLocation(NPC, 1059.72, -26.62, -935.99, 2, 0)
	MovementLoopAddLocation(NPC, 1069.99, -25.25, -907.32, 2, 0)
	MovementLoopAddLocation(NPC, 1071.54, -22.9, -893.86, 2, 6)
	MovementLoopAddLocation(NPC, 1071.54, -22.9, -893.86, 2, 0)
	MovementLoopAddLocation(NPC, 1078.19, -24.05, -903.38, 2, 0)
	MovementLoopAddLocation(NPC, 1078.52, -25.46, -915.88, 2, 0)
	MovementLoopAddLocation(NPC, 1075.65, -26.74, -930.11, 2, 0)
	MovementLoopAddLocation(NPC, 1063.86, -26.54, -934.78, 2, 0)
	MovementLoopAddLocation(NPC, 1064.87, -26.56, -942.02, 2, 6)
end