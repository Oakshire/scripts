--[[
    Script Name    : SpawnScripts/ScaleYard/Lachar.lua
    Script Author  : torsten
    Script Date    : 2022.07.25 12:07:30
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
	MovementLoopAddLocation(NPC, -1.46, -5.05, 3.24, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 4.12, -4.83, 8.33, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 12.24, -4.28, 11.01, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 16.45, -4.38, 9.6, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 26.9, -2.25, 13.57, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 29.18, 0, 5.11, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 24.51, 0, 2.64, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 32.42, 0, -5.4, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 35.57, -2.25, -13.78, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 38.89, -4.35, -22.61, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 43.22, -4.35, -34.13, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 39.91, -4.35, -39.86, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 40.4, -4.35, -23.37, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.02, -4.35, -13.86, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 69.02, 0, -4.48, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 80.91, 0, -2.34, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 78.5, 0, -11.64, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 73.94, 0, -13.01, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 70.16, 0, -4.92, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 53, -4.35, -12.69, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 35.35, -2.25, -14.67, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 32.59, 0, -5.85, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 24.53, 0, -1.93, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 28.83, 0, 6.38, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 24.62, -4.38, 23.4, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 17.44, -4.38, 13.8, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 1.76, -4.84, 4.62, 2, math.random(0,7))
end