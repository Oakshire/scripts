--[[
    Script Name    : SpawnScripts/IsleRefuge1/asupplyrunner2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 07:09:42
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")

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
	MovementLoopAddLocation(NPC, 257.39, -6, 128.08, 5,  math.random(5,10))
	MovementLoopAddLocation(NPC, 255.3, -6.83, 102.28, 5,  math.random(5,10))
	MovementLoopAddLocation(NPC, 255.3, -6.83, 102.28, 5,  0)
	MovementLoopAddLocation(NPC, 239.3, -6.91, 92.24, 5,  math.random(5,10))
	MovementLoopAddLocation(NPC, 239.3, -6.91, 92.24, 5,  0)
	MovementLoopAddLocation(NPC, 259.9, -6.83, 105.77, 5,  math.random(5,10))
	MovementLoopAddLocation(NPC, 259.9, -6.83, 105.77, 5,  0)
	MovementLoopAddLocation(NPC, 248.11, -5.09, 134.55, 5,  math.random(5,10))
	MovementLoopAddLocation(NPC, 248.11, -5.09, 134.55, 0, 0)
	MovementLoopAddLocation(NPC, 257.39, -6, 128.08, 4,  math.random(5,10))
	MovementLoopAddLocation(NPC, 257.39, -6, 128.08, 4,  0)
end
