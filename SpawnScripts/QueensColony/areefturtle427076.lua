--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427076.lua
	Script Purpose	:	Waypoint Path for areefturtle427076.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:34:59 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 6.16, -12.62, -67.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.3, -12.57, -61.61, 2, 0)
	MovementLoopAddLocation(NPC, 15.84, -12.09, -57.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.72, -11.46, -63.22, 2, 0)
	MovementLoopAddLocation(NPC, 6.01, -11.3, -84.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.47, -11.28, -77.51, 2, 0)
	MovementLoopAddLocation(NPC, 2.84, -12.58, -64.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.67, -12.02, -74.56, 2, 0)
	MovementLoopAddLocation(NPC, -0.95, -11.98, -79.82, 2, 0)
	MovementLoopAddLocation(NPC, -3.25, -11.97, -85.14, 2, 0)
	MovementLoopAddLocation(NPC, -6.84, -11.85, -95.21, 2, 0)
	MovementLoopAddLocation(NPC, -6.78, -11.85, -95.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.67, -10.5, -81.54, 2, 0)
	MovementLoopAddLocation(NPC, 12.19, -10.2, -70.67, 2, 0)
	MovementLoopAddLocation(NPC, 13.99, -10.2, -68.26, 2, 0)
	MovementLoopAddLocation(NPC, 21.33, -10.97, -56.57, 2, 0)
	MovementLoopAddLocation(NPC, 24.67, -10.45, -52.98, 2, 0)
	MovementLoopAddLocation(NPC, 32.29, -10.24, -49.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.31, -10.97, -52.11, 2, 0)
	MovementLoopAddLocation(NPC, 13.5, -11.18, -55.32, 2, 0)
	MovementLoopAddLocation(NPC, 7.55, -11.15, -56.35, 2, 0)
	MovementLoopAddLocation(NPC, 1.58, -11.69, -56.62, 2, 0)
	MovementLoopAddLocation(NPC, -3.36, -11.89, -55.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.23, -12.26, -63.12, 2, 0)
	MovementLoopAddLocation(NPC, 3.6, -12.57, -67.44, 2, 0)
	MovementLoopAddLocation(NPC, 6.22, -12.42, -69.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.32, -12.44, -63.69, 2, 0)
	MovementLoopAddLocation(NPC, 14.61, -11.96, -58.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.36, -11.46, -62.8, 2, 0)
	MovementLoopAddLocation(NPC, 9, -10.98, -75, 2, 0)
	MovementLoopAddLocation(NPC, 8.24, -11.58, -81.95, 2, 0)
	MovementLoopAddLocation(NPC, 8.7, -11.78, -84.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.55, -11.36, -79.5, 2, 0)
	MovementLoopAddLocation(NPC, 5.61, -11.35, -76.36, 2, 0)
	MovementLoopAddLocation(NPC, 2.57, -12.55, -64.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.66, -11.33, -80.87, 2, math.random(10, 20))
end

