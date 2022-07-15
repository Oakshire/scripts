--[[
    Script Name    : SpawnScripts/BigBend/arat1.lua
    Script Author  : torsten
    Script Date    : 2022.07.14 05:07:00
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
	MovementLoopAddLocation(NPC, 62.15, -2, 4.86, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 55.61, -2, 5.92, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 44.95, -1.48, 9.83, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 34.13, -1.39, 14.65, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 25.45, -0.28, 16.37, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 21.81, -0.09, 15.23, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 34.14, -1.39, 14.9, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 44.31, -1.45, 9.87, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 47.8, -1.71, 8.91, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 60.9, -2, 6.62, 2, math.random(8,12))
end
