--[[
    Script Name    : SpawnScripts/BeggarsCourt/a_rat_d.lua
    Script Author  : torsten
    Script Date    : 2022.07.18 08:07:16
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
	MovementLoopAddLocation(NPC, -31.88, -5.75, 24.54, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, -9.57, -6.75, 39.16, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, -0.71, -7, 69.58, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, -2.16, -7, 44.94, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 4.95, -5.5, 28.71, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, -9.21, -5.25, 19.38, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, -16, -7, 33.57, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 22.21, -6.51, 48.29, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 48.73, -5.5, 45.24, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 49.86, -6.93, 63.93, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 39.29, -5, 30.89, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 31.78, -5, 30.06, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 34.48, -6, 44.59, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 50.49, -6.93, 65.33, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 61.86, -7.08, 96.79, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 51.07, -6.94, 64.87, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 39.06, -6.5, 47.88, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 15.05, -7, 57.08, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, 10.2, -7, 49.77, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, -8.22, -6.5, 37.34, 5, math.random(8,12))
	MovementLoopAddLocation(NPC, -31.25, -5.75, 25.61, 5, math.random(8,12))
end