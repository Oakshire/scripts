--[[
    Script Name    : SpawnScripts/BeggarsCourt/a_rat_e.lua
    Script Author  : torsten
    Script Date    : 2022.07.18 08:07:42
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
	MovementLoopAddLocation(NPC, 15.53, -6.27, 45.72, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, -4.13, -6.25, 38.3, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, -17.3, -7, 32.83, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, -10, -5.25, 18.87, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 9.56, -5.5, 31.36, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 28.61, -5.73, 33.96, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 35.19, -6, 43.19, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, -10.11, -7, 54.27, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 7.11, -7, 55.12, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 10.12, -0.89, 72.58, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 13.67, -7, 58.78, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 40.4, -7, 51.5, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 28.29, -5.5, 31.66, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 4.63, -5.75, 31.09, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 4.14, -7, 53.79, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, -8.53, -7, 55.68, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, -12.35, -3, 68.41, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, -1.67, -7, 50.79, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 7.11, -5.75, 32.52, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 15.53, -5.52, 33.3, 4, math.random(8,12))
	MovementLoopAddLocation(NPC, 14.83, -6.5, 46.04, 4, math.random(8,12))
end
