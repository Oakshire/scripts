--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothbruteR2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.09 09:09:37
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin2.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 110
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 65
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
	MovementLoopAddLocation(NPC, 175.23, 1.72, -156.04, 4, 5)
	MovementLoopAddLocation(NPC, 211.45, -0.74, -152.61, 4, 0)
	MovementLoopAddLocation(NPC, 231.75, -0.81, -158.94, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 231.75, -0.81, -158.94, 4, 0)
	MovementLoopAddLocation(NPC, 189.91, -0.66, -156.27, 4, 0)
	MovementLoopAddLocation(NPC, 175.23, 1.72, -156.04, 4, 0)
end