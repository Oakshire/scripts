--[[
    Script Name    : SpawnScripts/ScaleYard/Ivashko.lua
    Script Author  : torsten
    Script Date    : 2022.07.25 12:07:27
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
	MovementLoopAddLocation(NPC, -4.36, -5.24, 1.67, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, -0.35, -5.07, 4.42, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 6.18, -4.75, 8.15, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 27.4, -2.25, 14.04, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 30.47, 0, 6.05, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 24.62, 0, -1.35, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 31.76, 0, -5.53, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 36.71, -2.25, -15.72, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 41.62, -4.35, -25.46, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 44.88, -4.35, -34.8, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 50.99, -4.35, -43.18, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 66.9, -4.35, -36.63, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 61.77, -4.35, -23.91, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 62.06, -2.51, -9.62, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 63.04, -1.97, -6.65, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 70.7, 0, -4.58, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 68.74, -2.25, 4.41, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 76.28, -4.37, 6.56, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 68.75, -4.37, 16.27, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 77.56, -4.37, 7.53, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 68.53, -2.25, 3.47, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 70.92, 0, -4.18, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 36.58, -2.25, -14.86, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 31.45, 0, -4.1, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 29.14, 0, 6.45, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 23.15, -4.38, 22.58, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, 10.25, -4.2, 10.43, 2, math.random(0, 4))
	MovementLoopAddLocation(NPC, -5.29, -5.2, 0.99, 2, math.random(0, 4))
end