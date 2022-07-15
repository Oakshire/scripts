--[[
    Script Name    : SpawnScripts/BigBend/arat5.lua
    Script Author  : torsten
    Script Date    : 2022.07.14 05:07:06
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
	MovementLoopAddLocation(NPC, 37.69, -1.01, -11.63, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 32.48, -0.32, -15.69, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 25.58, 0.59, -19.72, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 11.96, 1.82, -27.66, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -0.84, 2.84, -31.29, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -2.88, 3, -35.7, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -2.88, 3, -35.7, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -2.87, 3, -44.64, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -2.86, 3, -63.36, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -3.68, 3, -52.04, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -4.21, 2.9, -31.63, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 5.03, 2.28, -29.91, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 12.39, 1.78, -26.75, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 36.16, -0.79, -13.3, 2, math.random(8,12))
end