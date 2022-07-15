--[[
    Script Name    : SpawnScripts/BigBend/arat6.lua
    Script Author  : torsten
    Script Date    : 2022.07.14 05:07:28
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
	MovementLoopAddLocation(NPC, -51.61, 2.03, 12.97, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -48.76, 1.06, 16.9, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -42.47, -0.49, 26.91, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -37.16, -0.7, 36.36, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -29.35, -1.21, 41.08, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -38.11, -0.75, 37.62, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -41.6, -0.95, 29.88, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -46.24, 0.29, 22.88, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -54.54, 3.56, 1.94, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -50.23, 1.78, 13.46, 2, math.random(8,12))
end