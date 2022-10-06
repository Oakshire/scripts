--[[
    Script Name    : SpawnScripts/Caves/aMudpawlookoutRoam3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.04 06:10:07
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
	Spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 15.17, 12.38, -72.08, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 12.28, 12.38, -64.99, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 12.28, 12.38, -64.99, 2, 0)
	MovementLoopAddLocation(NPC, 13.73, 12.38, -72.32, 2, 0)
	MovementLoopAddLocation(NPC, 8.54, 13.84, -76.15, 2, 0)
	MovementLoopAddLocation(NPC, 10.04, 14.13, -92.25, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 10.04, 14.13, -92.25, 2, 0)
	MovementLoopAddLocation(NPC, 10.79, 14.05, -84.96, 2, 0)
	MovementLoopAddLocation(NPC, 26.97, 12.38, -73.86, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 26.97, 12.38, -73.86, 2, 0)
	MovementLoopAddLocation(NPC, 24.87, 12.38, -74.74, 2, 0)
	MovementLoopAddLocation(NPC, 11.9, 12.33, -62.51, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 11.9, 12.33, -62.51, 2, 0)
	MovementLoopAddLocation(NPC, 12.98, 12.38, -66.5, 2, 0)
	MovementLoopAddLocation(NPC, 2.56, 14.62, -72.7, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 2.56, 14.62, -72.7, 2, 0)
	MovementLoopAddLocation(NPC, 11.27, 12.38, -67.23, 2, 0)
	MovementLoopAddLocation(NPC, 15.17, 12.38, -72.08, 2, 0)
end

