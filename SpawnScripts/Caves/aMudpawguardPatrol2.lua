--[[
    Script Name    : SpawnScripts/Caves/aMudpawguardPatrol2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.04 07:10:36
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 240
    local power1 = 100
    local difficulty2 = 6
    local hp2 = 290
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


function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 47.86, 12.08, -90.9, 2, 6)
	MovementLoopAddLocation(NPC, 47.86, 12.08, -90.9, 2, 0)
	MovementLoopAddLocation(NPC, 53.08, 12.38, -88.33, 2, 0)
	MovementLoopAddLocation(NPC, 54.67, 12.38, -79.65, 2, 0)
	MovementLoopAddLocation(NPC, 59.06, 13.21, -75.33, 2, 0)
	MovementLoopAddLocation(NPC, 63.13, 12.45, -74.57, 2, 6)
	MovementLoopAddLocation(NPC, 63.13, 12.45, -74.57, 2, 0)
	MovementLoopAddLocation(NPC, 65.42, 12.43, -68.8, 2, 6)
	MovementLoopAddLocation(NPC, 65.42, 12.43, -68.8, 2, 0)
	MovementLoopAddLocation(NPC, 63.55, 12.42, -71.94, 2, 0)
	MovementLoopAddLocation(NPC, 61.66, 12.41, -71.8, 2, 6)
	MovementLoopAddLocation(NPC, 61.66, 12.41, -71.8, 2, 0)
	MovementLoopAddLocation(NPC, 59.29, 13.18, -74.63, 2, 0)
	MovementLoopAddLocation(NPC, 55.7, 12.39, -78.18, 2, 0)
	MovementLoopAddLocation(NPC, 55.24, 12.38, -84.96, 2, 0)
	MovementLoopAddLocation(NPC, 47.86, 12.08, -90.9, 2, 0)
end

