--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425797.lua
	Script Purpose	:	Waypoint Path for atriggerfish425797.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:28:41 
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
	MovementLoopAddLocation(NPC, 6.79, -12.98, -65.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.77, -12.13, -69.24, 2, 0)
	MovementLoopAddLocation(NPC, 1.27, -11.62, -78.57, 2, 0)
	MovementLoopAddLocation(NPC, -5.61, -12.43, -85.87, 2, 0)
	MovementLoopAddLocation(NPC, -12.13, -12.28, -87.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.96, -11.94, -92.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.89, -12.03, -89.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.45, -10.45, -76.9, 2, 0)
	MovementLoopAddLocation(NPC, -11.85, -10.3, -70.27, 2, 0)
	MovementLoopAddLocation(NPC, -5.32, -12.4, -61.87, 2, 0)
	MovementLoopAddLocation(NPC, -1.32, -12.95, -58.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.84, -12.31, -56.3, 2, 0)
	MovementLoopAddLocation(NPC, -5.43, -12.04, -51.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.21, -11.52, -67.25, 2, 0)
	MovementLoopAddLocation(NPC, 3.61, -11.87, -73.08, 2, 0)
	MovementLoopAddLocation(NPC, 4.52, -11.82, -75.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.18, -12.31, -70.37, 2, 0)
	MovementLoopAddLocation(NPC, -2.29, -11.99, -56.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.73, -11.81, -69.24, 2, 0)
	MovementLoopAddLocation(NPC, 12.97, -10.98, -76.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.82, -10.32, -74.53, 2, 0)
	MovementLoopAddLocation(NPC, 16.94, -10.07, -65.69, 2, 0)
	MovementLoopAddLocation(NPC, 31.84, -11.51, -39.65, 2, 0)
	MovementLoopAddLocation(NPC, 34.86, -12.41, -34.87, 2, 0)
	MovementLoopAddLocation(NPC, 36.28, -12.7, -31.15, 2, 0)
	MovementLoopAddLocation(NPC, 43.56, -13.91, -17.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.2, -11.98, -15.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.92, -12.47, -0.2, 2, 0)
	MovementLoopAddLocation(NPC, 33.88, -11.94, 2.4, 2, 0)
	MovementLoopAddLocation(NPC, 34.32, -11.94, 4.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.92, -12.52, 0.78, 2, 0)
	MovementLoopAddLocation(NPC, 31.36, -12.67, -1.46, 2, 0)
	MovementLoopAddLocation(NPC, 21.21, -13.37, -29.65, 2, 0)
	MovementLoopAddLocation(NPC, 14.04, -12.44, -41.88, 2, 0)
	MovementLoopAddLocation(NPC, 10.3, -12.37, -52.2, 2, 0)
	MovementLoopAddLocation(NPC, 9.73, -12.45, -55.09, 2, 0)
end
