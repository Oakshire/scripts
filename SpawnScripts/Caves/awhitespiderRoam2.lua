--[[
    Script Name    : SpawnScripts/Caves/awhitespiderRoam2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.04 06:10:23
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
	MovementLoopAddLocation(NPC, -10.14, 12.81, -56.64, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -5.33, 12.8, -53.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -5.33, 12.8, -53.41, 2, 0)
	MovementLoopAddLocation(NPC, -9.14, 12.91, -56.67, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -9.14, 12.91, -56.67, 2, 0)
	MovementLoopAddLocation(NPC, -5.62, 13.73, -66.29, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -5.62, 13.73, -66.29, 2, 0)
	MovementLoopAddLocation(NPC, 4.76, 14.16, -69.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 4.76, 14.16, -69.52, 2, 0)
	MovementLoopAddLocation(NPC, 3.72, 14.97, -76.16, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 3.72, 14.97, -76.16, 2, 0)
	MovementLoopAddLocation(NPC, -0.55, 13.73, -66.3, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -0.55, 13.73, -66.3, 2, 0)
	MovementLoopAddLocation(NPC, -8.1, 14.7, -74.11, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -8.1, 14.7, -74.11, 2, 0)
	MovementLoopAddLocation(NPC, 3.24, 15.47, -80.77, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 3.24, 15.47, -80.77, 2, 0)
	MovementLoopAddLocation(NPC, 5.15, 15.34, -92.45, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 5.15, 15.34, -92.45, 2, 0)
	MovementLoopAddLocation(NPC, -6.48, 17.19, -84.14, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -6.48, 17.19, -84.14, 2, 0)
	MovementLoopAddLocation(NPC, -5.14, 13.71, -66.22, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -5.14, 13.71, -66.22, 2, 0)
	MovementLoopAddLocation(NPC, -9.78, 12.99, -59.6, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -9.78, 12.99, -59.6, 2, 0)
	MovementLoopAddLocation(NPC, -12.33, 12.95, -52.74, 2, 0)
	MovementLoopAddLocation(NPC, -12.28, 12.97, -51.17, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -12.28, 12.97, -51.17, 2, 0)
	MovementLoopAddLocation(NPC, -12.27, 12.96, -51.99, 2, 0)
	MovementLoopAddLocation(NPC, -10.14, 12.81, -56.64, 2, 0)
end

