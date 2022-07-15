--[[
    Script Name    : SpawnScripts/BigBend/arat7.lua
    Script Author  : torsten
    Script Date    : 2022.07.14 05:07:25
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
	MovementLoopAddLocation(NPC, -39.6, -0.38, 26.9, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -36.75, 0, 22.54, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -25.5, 0, 17.52, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -14, 0, 8.28, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -10.01, 0, -14.56, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -11.49, 0, 6.09, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -15.28, 0.04, 20.42, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -25.04, -0.14, 31.13, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -23.5, -2.17, 43.36, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -22.17, -1.88, 40.96, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -26.43, -1.87, 42.24, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -37.59, -0.53, 38.99, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -39.05, -0.86, 33.93, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -38.75, -0.48, 28.15, 2, math.random(8,12))
end