--[[
    Script Name    : SpawnScripts/Classic_forest/aruinsskulker2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.14 08:10:01
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
	MovementLoopAddLocation(NPC, 997.99, -26.5, -907.33, 2, 0)
	MovementLoopAddLocation(NPC, 980.26, -26.69, -899.13, 2, 0)
	MovementLoopAddLocation(NPC, 957.91, -27.04, -884.64, 2, 0)
	MovementLoopAddLocation(NPC, 946.25, -24.76, -850.75, 2, 6)
	MovementLoopAddLocation(NPC, 946.25, -24.76, -850.75, 2, 0)
	MovementLoopAddLocation(NPC, 954.38, -25.36, -858, 2, 0)
	MovementLoopAddLocation(NPC, 973.92, -24.38, -871.07, 2, 0)
	MovementLoopAddLocation(NPC, 981.75, -24.57, -878.75, 2, 0)
	MovementLoopAddLocation(NPC, 993.5, -23.89, -880.54, 2, 0)
	MovementLoopAddLocation(NPC, 998.83, -25.05, -890.62, 2, 0)
	MovementLoopAddLocation(NPC, 997.99, -26.5, -907.33, 2, 6)
end

