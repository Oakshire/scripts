--[[
    Script Name    : SpawnScripts/IsleRefuge1/asupplyrunner1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 07:09:53
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
	MovementLoopAddLocation(NPC, 267.18, -6.19, 132.99, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 267.18, -6.19, 132.99, 4, 0)
	MovementLoopAddLocation(NPC, 246.82, -5.09, 142.2, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 246.82, -5.09, 142.2, 4, 0)
	MovementLoopAddLocation(NPC, 259.08, -6.27, 142.39, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 259.08, -6.27, 142.39, 4, 0)
	MovementLoopAddLocation(NPC, 235.91, -3.33, 153.76, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 235.91, -3.33, 153.76, 4, 0)
	MovementLoopAddLocation(NPC, 244.84, -5.08, 138.73, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 244.84, -5.08, 138.73, 4, 0)
	MovementLoopAddLocation(NPC, 270.33, -5.74, 119.87, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 270.33, -5.74, 119.87, 4, 0)
	
end

