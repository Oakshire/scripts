--[[
    Script Name    : SpawnScripts/ScaleYard/Ivan.lua
    Script Author  : torsten
    Script Date    : 2022.07.25 12:07:25
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
	MovementLoopAddLocation(NPC, 80.18, -4.37, 16.45, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 83.4, -4.37, 16.62, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 93.77, -4.37, 17.17, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 94.65, -4.37, 20.29, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 92.89, -4.37, 22.06, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 89.61, -4.37, 19.75, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 85.98, -4.37, 17.2, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 83.56, -4.37, 16.66, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 81.94, -4.37, 22.14, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 79.04, -4.37, 7.18, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 77.07, -4.37, 3.66, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 74.32, -4.37, 11.31, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 71.05, -4.37, 12.91, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 75.07, -4.37, 13.22, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 89.34, -4.37, 14.29, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 80.08, -4.37, 16.02, 2, math.random(4,12))
end