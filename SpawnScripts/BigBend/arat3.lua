--[[
    Script Name    : SpawnScripts/BigBend/arat3.lua
    Script Author  : torsten
    Script Date    : 2022.07.14 05:07:10
    Script Purpose : 
                   : 
--]]

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
	MovementLoopAddLocation(NPC, -12.06, 0, 0.15, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -9.6, 0, 10.72, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -16.45, 0, -0.67, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -4.56, 0.06, 13.13, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 13.86, 0, 7.62, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 9.41, 0, -4.84, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 13.42, 0, 8.27, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 10.35, 0, 10.17, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 6.89, 0, -7.73, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -6.48, 0, -12.06, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -10.36, 0, -1.39, 2, math.random(8,12))
end

