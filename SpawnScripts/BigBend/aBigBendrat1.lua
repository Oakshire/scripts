--[[
    Script Name    : SpawnScripts/BigBend/aBigBendrat1.lua
    Script Author  : torsten
    Script Date    : 2022.07.14 05:07:15
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
	MovementLoopAddLocation(NPC, 90.88, -2, -12.11, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 96.6, -2, -12.5, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 92.39, -2, -11.06, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 90.87, -2, 5.1, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 96.43, -2, 3.65, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 69.54, -2, 4.66, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 76.71, -2, 9.2, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 88.34, -2, 16.57, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 89.49, -2, 6.24, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 82.97, -2, -7.06, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 77.34, -2, 6.06, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 82.75, -2, 20.84, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 97.09, -2, 24.39, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 91.58, -2, 22.79, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 90.62, -2, 15.76, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 89.33, -2, 6.42, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 81.57, -2, 1.93, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 85.95, -2, -12.18, 2, math.random(8,12))
end



