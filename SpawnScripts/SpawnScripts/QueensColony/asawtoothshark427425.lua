--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427425.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427425.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:04 
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
	MovementLoopAddLocation(NPC, -23.39, -11.7, -92.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.47, -11.36, -89.95, 2, 0)
	MovementLoopAddLocation(NPC, -11.46, -11.33, -87.4, 2, 0)
	MovementLoopAddLocation(NPC, -4.13, -11.52, -82.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.66, -11.26, -68.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.52, -11.35, -56.71, 2, 0)
	MovementLoopAddLocation(NPC, 23.85, -11.71, -7.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.57, -12.15, -13.85, 2, 0)
	MovementLoopAddLocation(NPC, 31.04, -12.14, -30.61, 2, 0)
	MovementLoopAddLocation(NPC, 32.13, -11.35, -37.66, 2, 0)
	MovementLoopAddLocation(NPC, 37.02, -10.7, -49.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.75, -10.89, -44.63, 2, 0)
	MovementLoopAddLocation(NPC, 38.36, -11.63, -31.16, 2, 0)
	MovementLoopAddLocation(NPC, 41.89, -11.7, -25.17, 2, 0)
	MovementLoopAddLocation(NPC, 46.25, -11.84, -21.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.88, -11.62, -25.5, 2, 0)
	MovementLoopAddLocation(NPC, 39.72, -10.7, -34.2, 2, 0)
	MovementLoopAddLocation(NPC, 34.43, -10.7, -39.33, 2, 0)
	MovementLoopAddLocation(NPC, 22.04, -11.03, -52.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.37, -11.44, -40.72, 2, 0)
	MovementLoopAddLocation(NPC, 28.98, -14.76, -16.78, 2, 0)
	MovementLoopAddLocation(NPC, 30.99, -14.95, -12.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.49, -12.71, -12.99, 2, 0)
	MovementLoopAddLocation(NPC, 50.44, -12.88, -12.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.87, -12.73, -12.53, 2, 0)
	MovementLoopAddLocation(NPC, 74.37, -11.55, -13.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.23, -11.73, -2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.17, -12.12, -8.54, 2, 0)
	MovementLoopAddLocation(NPC, 20.57, -12.63, -33.48, 2, 0)
	MovementLoopAddLocation(NPC, 7.6, -11.18, -56.35, 2, 0)
	MovementLoopAddLocation(NPC, -2.88, -10.7, -72.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.71, -10.7, -78.73, 2, 0)
	MovementLoopAddLocation(NPC, -11.86, -11.32, -87.68, 2, 0)
end

