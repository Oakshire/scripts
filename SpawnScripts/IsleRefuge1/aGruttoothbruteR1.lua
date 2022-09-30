--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothbruteR1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.09 09:09:09
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
	MovementLoopAddLocation(NPC, 210.34, -0.75, -126.85, 4, 5)
	MovementLoopAddLocation(NPC, 212.94, -0.75, -135.43, 4, 0)
	MovementLoopAddLocation(NPC, 219.28, -0.77, -186.7, 4, 0)
	MovementLoopAddLocation(NPC, 218.06, -0.76, -189.27, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 218.06, -0.76, -189.27, 4, 0)
	MovementLoopAddLocation(NPC, 218.94, -0.76, -187.36, 4, 0)
	MovementLoopAddLocation(NPC, 207.88, -0.73, -136.6, 4, 0)
	MovementLoopAddLocation(NPC, 210.34, -0.75, -126.85, 4, 0)
end

