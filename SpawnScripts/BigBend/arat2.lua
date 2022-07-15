--[[
    Script Name    : SpawnScripts/BigBend/arat2.lua
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
	MovementLoopAddLocation(NPC, 13.64, 0, 11.49, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 9.95, 0.03, 15.27, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 5.99, 0, 11.12, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -7.9, 0.05, 18.58, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -17.53, 0, -7.39, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -10.49, 0, 7.2, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -13.3, 0, -1.31, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -4.87, 0, -11.6, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 7.68, 0, -4.88, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 12.29, 0, -2.26, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 11.35, 0, 2.51, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 16.88, 0, 12.97, 2, math.random(8,12))
end
