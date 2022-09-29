--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothmystic3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.06 12:09:58
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 3
    local level2 = 4
    local difficulty1 = 6
    local hp1 = 75
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 110
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
    
end

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 100.74, 1.61, 111.93, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 124.7, 1.32, 94.17, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 124.7, 1.32, 94.17, 4, 0)
	MovementLoopAddLocation(NPC, 104.1, 1.59, 119.04, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 104.1, 1.59, 119.04, 4, 0)
	MovementLoopAddLocation(NPC, 95.18, 1.63, 116.37, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 95.18, 1.63, 116.37, 4, 0)
	MovementLoopAddLocation(NPC, 94.19, 1.63, 122.53, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 94.19, 1.63, 122.53, 4, 0)
	MovementLoopAddLocation(NPC, 97.76, 1.62, 109.18, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 97.76, 1.62, 109.18, 4, 0)
	MovementLoopAddLocation(NPC, 125.06, 1.32, 94.38, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 125.06, 1.32, 94.38, 4, 0)
end

