--[[
    Script Name    : SpawnScripts/BeggarsCourt/a_rat_c.lua
    Script Author  : torsten
    Script Date    : 2022.07.18 08:07:05
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
	MovementLoopAddLocation(NPC, 24.12, 5.25, -12.54, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 49.81, 4, -5.33, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 63.12, 5, -18.48, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 50.93, 5, -25.94, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 18.65, 3.5, 10.93, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 1.98, 2.51, 4.91, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, -25.18, 2.5, -21.95, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 13.09, 2.5, 14.1, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 36.7, 7, 12.12, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 51.75, 3, 7.41, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 54.65, 5, -17.09, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 45.24, 5.25, -16.41, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 18.18, 3.5, 6.86, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 0.01, 2.86, 2.29, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, -17.55, 3, -19.15, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, -4.48, 3.85, -30.29, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 11.24, 4.75, -24.55, 7, math.random(4,12))
	MovementLoopAddLocation(NPC, 23.98, 5.25, -13.68, 7, math.random(4,12))
end