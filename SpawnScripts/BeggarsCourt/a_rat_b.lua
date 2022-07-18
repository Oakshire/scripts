--[[
    Script Name    : SpawnScripts/BeggarsCourt/a_rat_b.lua
    Script Author  : torsten
    Script Date    : 2022.07.18 07:07:49
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
	MovementLoopAddLocation(NPC, -21.16, 2.5, -15.72, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, -4.01, 3, -3.27, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 15.56, 3.36, 11.83, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 44.96, 5, 16.14, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 18.99, 3.5, 5.19, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 16.26, 3.5, -6.33, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 61.47, 5, -12.93, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 59.27, 3.75, 1.67, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 50.84, 3.77, -1.31, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 40.06, 5.25, -12.7, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 22.82, 5.25, -11.84, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 13.72, 4.75, -23.46, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 21.11, 5.25, -38.69, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, 17.16, 3.5, -4.36, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, -3.96, 3, -2.33, 5, math.random(3,12))
	MovementLoopAddLocation(NPC, -18.78, 2.5, -15.35, 5, math.random(3,12))
end