--[[
    Script Name    : SpawnScripts/BigBend/aBigBendrat3.lua
    Script Author  : torsten
    Script Date    : 2022.07.14 05:07:49
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
	MovementLoopAddLocation(NPC, 87.79, -2, 6.06, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 89.79, -2, 1.13, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 90.86, -2, -5.4, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 91.86, -2, -11.48, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 87.81, -2, -11.61, 2, math.random(7,12))
	MovementLoopAddLocation(NPC, 82.96, -2, -11.39, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 78.56, -2, -7.08, 2, math.random(1,12))
	MovementLoopAddLocation(NPC, 76.56, -2, -0.27, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 76.94, -2, 4.58, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 88.26, -2, 13.25, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 92.35, -2, 21.8, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 89.18, -2, 22.37, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 80.42, -2, 15.4, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 81.34, -2, 11.48, 2, math.random(2,12))
	MovementLoopAddLocation(NPC, 88.5, -2, 7, 2, math.random(8,12))
end