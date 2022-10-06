--[[
    Script Name    : SpawnScripts/Caves/aMudpawlookoutRoam2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.04 06:10:49
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

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 33.07, 11.93, -101.24, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 26.63, 11.93, -89.47, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 26.63, 11.93, -89.47, 2, 0)
	MovementLoopAddLocation(NPC, 24.02, 12.38, -82.38, 2, 0)
	MovementLoopAddLocation(NPC, 4.61, 15.12, -79.04, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 4.61, 15.12, -79.04, 2, 0)
	MovementLoopAddLocation(NPC, 17.89, 12.38, -79.6, 2, 0)
	MovementLoopAddLocation(NPC, 32.68, 11.93, -97.67, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 32.68, 11.93, -97.67, 2, 0)
	MovementLoopAddLocation(NPC, 15.92, 14.15, -90.05, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 15.92, 14.15, -90.05, 2, 0)
	MovementLoopAddLocation(NPC, 26.22, 12.38, -74.63, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 26.22, 12.38, -74.63, 2, 0)
	MovementLoopAddLocation(NPC, 24.78, 12.38, -79.95, 2, 0)
	MovementLoopAddLocation(NPC, 33.07, 11.93, -101.24, 2, 0)
end

