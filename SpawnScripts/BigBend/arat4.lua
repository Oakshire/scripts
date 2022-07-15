--[[
    Script Name    : SpawnScripts/BigBend/arat4.lua
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
	MovementLoopAddLocation(NPC, 83, -2, -8.17, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 87.88, -2, -10.22, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 80.23, -2, 16.47, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 85.65, -2, 18.37, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 89.06, -2, 5.02, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 58.89, -2, 5.62, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 42.97, -1.48, 10.8, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 36.73, -1.32, -7.36, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 42.39, -1.34, 9.73, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 53.59, -2, 7.45, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 78.85, -2, 2.79, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 82.44, -2, -8.99, 2, math.random(8,12))
end
