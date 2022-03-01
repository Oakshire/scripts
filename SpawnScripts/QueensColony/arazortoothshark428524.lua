--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428524.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428524.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:08 
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
	MovementLoopAddLocation(NPC, -29.18, -11.67, -89.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.04, -11.05, -83.45, 2, 0)
	MovementLoopAddLocation(NPC, -18.09, -10.7, -76.89, 2, 0)
	MovementLoopAddLocation(NPC, -11.78, -10.7, -71.16, 2, 0)
	MovementLoopAddLocation(NPC, -3.99, -11.13, -67.15, 2, 0)
	MovementLoopAddLocation(NPC, 2.61, -12.83, -62.12, 2, 0)
	MovementLoopAddLocation(NPC, 3.43, -12.83, -59.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.42, -11.03, -68.21, 2, 0)
	MovementLoopAddLocation(NPC, -4.08, -10.7, -72.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.71, -11.15, -67.31, 2, 0)
	MovementLoopAddLocation(NPC, 28.31, -11.28, -40.24, 2, 0)
	MovementLoopAddLocation(NPC, 32.45, -11.33, -37.33, 2, 0)
	MovementLoopAddLocation(NPC, 37.8, -11.37, -35.26, 2, 0)
	MovementLoopAddLocation(NPC, 44.23, -11.38, -30.14, 2, 0)
	MovementLoopAddLocation(NPC, 48.44, -11.17, -25.34, 2, 0)
	MovementLoopAddLocation(NPC, 55.35, -11.3, -19.61, 2, 0)
	MovementLoopAddLocation(NPC, 62.29, -12.61, -15.44, 2, 0)
	MovementLoopAddLocation(NPC, 69.7, -13.98, -11.6, 2, 0)
	MovementLoopAddLocation(NPC, 72.17, -13.98, -7.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.38, -14.13, -7.94, 2, 0)
	MovementLoopAddLocation(NPC, 49.81, -13.18, -3.64, 2, 0)
	MovementLoopAddLocation(NPC, 40.66, -12.3, -0.16, 2, 0)
	MovementLoopAddLocation(NPC, 35, -11.82, -0.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.03, -13.66, -3.16, 2, 0)
	MovementLoopAddLocation(NPC, 23.44, -13.78, -6.77, 2, 4)
	MovementLoopAddLocation(NPC, 36.63, -12.93, -17.25, 2, 0)
	MovementLoopAddLocation(NPC, 44.2, -12.55, -21.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.26, -14.51, -16.81, 2, 0)
	MovementLoopAddLocation(NPC, 26.33, -14.87, -14.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.08, -14.41, -8.89, 2, 0)
	MovementLoopAddLocation(NPC, 31.1, -13.13, -2.25, 2, 0)
	MovementLoopAddLocation(NPC, 35.87, -12.88, 5.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.78, -12.8, -7.57, 2, 0)
	MovementLoopAddLocation(NPC, 11.08, -11.5, -44.92, 2, 0)
	MovementLoopAddLocation(NPC, 7.3, -11.43, -49.91, 2, 0)
	MovementLoopAddLocation(NPC, -1.16, -11.23, -57.96, 2, 0)
	MovementLoopAddLocation(NPC, -11.98, -10.7, -68.05, 2, 0)
	MovementLoopAddLocation(NPC, -16.13, -10.7, -72.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.6, -10.7, -80.84, 2, 0)
	MovementLoopAddLocation(NPC, -26.71, -11.55, -85, 2, 0)
end

