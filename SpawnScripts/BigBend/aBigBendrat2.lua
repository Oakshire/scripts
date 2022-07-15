--[[
    Script Name    : SpawnScripts/BigBend/aBigBendrat2.lua
    Script Author  : torsten
    Script Date    : 2022.07.14 05:07:17
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
	MovementLoopAddLocation(NPC, 86.6, -2, 20.85, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 83.07, -2, 19.87, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 73.83, -2, 7.08, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 87.56, -2, 18.33, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 94.35, -2, 6.96, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 82.37, -2, -4.75, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 94.05, -2, -12.96, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 85.5, -2, 1.43, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 90.78, -2, 19.91, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 78.89, -2, 7.46, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 67.73, -2, 4.67, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 59.8, -2, 5.75, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 91.5, -2, 6.34, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 86.81, -2, 20.84, 2, math.random(8,12))
end

