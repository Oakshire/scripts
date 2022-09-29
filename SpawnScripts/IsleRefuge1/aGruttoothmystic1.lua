--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothmystic1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.06 12:09:45
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

waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 101.49, 1.61, 97.87, 4,  math.random(5,10))
	MovementLoopAddLocation(NPC, 117.94, 1.56, 82.54, 4,  math.random(5,10))
	MovementLoopAddLocation(NPC, 117.94, 1.56, 82.54, 4, 0)
	MovementLoopAddLocation(NPC, 114.95, 1.56, 89.91, 4,  math.random(5,10))
	MovementLoopAddLocation(NPC, 114.95, 1.56, 89.91, 4, 0)
	MovementLoopAddLocation(NPC, 126.73, 1.52, 84.83, 4,  math.random(5,10))
	MovementLoopAddLocation(NPC, 126.73, 1.52, 84.83, 4, 0)
	MovementLoopAddLocation(NPC, 122.26, 1.53, 101.79, 4,  math.random(5,10))
	MovementLoopAddLocation(NPC, 122.26, 1.53, 101.79, 4, 0)
	MovementLoopAddLocation(NPC, 122.44, 1.53, 89.65, 4,  math.random(5,10))
	MovementLoopAddLocation(NPC, 122.44, 1.53, 89.65, 4, 0)
	MovementLoopAddLocation(NPC, 103.1, 1.6, 103.53, 4,  math.random(5,10))
	MovementLoopAddLocation(NPC, 103.1, 1.6, 103.53, 4, 0)
end

