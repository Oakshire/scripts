--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427088.lua
	Script Purpose	:	Waypoint Path for areefturtle427088.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:36 
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
	MovementLoopAddLocation(NPC, 71.71, -15.15, -6.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60, -13.97, -12.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.13, -13.47, -6.2, 2, 0)
	MovementLoopAddLocation(NPC, 41.02, -13.99, -2.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.63, -14.28, -14.68, 2, 0)
	MovementLoopAddLocation(NPC, 39.47, -13.81, -23.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.58, -13.41, -28.62, 2, 0)
	MovementLoopAddLocation(NPC, 32.95, -12.73, -35.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.12, -11.37, -39.96, 2, 0)
	MovementLoopAddLocation(NPC, 27.25, -11.11, -41.88, 2, 0)
	MovementLoopAddLocation(NPC, 25.11, -11.15, -45.27, 2, 0)
	MovementLoopAddLocation(NPC, 23.07, -11.48, -51.6, 2, 0)
	MovementLoopAddLocation(NPC, 20.16, -11.8, -54.85, 2, 0)
	MovementLoopAddLocation(NPC, 16.6, -12.21, -57.29, 2, 0)
	MovementLoopAddLocation(NPC, 8.47, -12.58, -67.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.05, -11.64, -66.62, 2, 0)
	MovementLoopAddLocation(NPC, 15.71, -11.04, -62.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.45, -10.62, -54.03, 2, 0)
	MovementLoopAddLocation(NPC, 20.03, -10.46, -39.18, 2, 0)
	MovementLoopAddLocation(NPC, 23.1, -11.6, -27.06, 2, 0)
	MovementLoopAddLocation(NPC, 27.39, -11.88, -20.82, 2, 0)
	MovementLoopAddLocation(NPC, 32.69, -12.24, -15.83, 2, 0)
	MovementLoopAddLocation(NPC, 34.32, -11.6, -13.11, 2, 0)
	MovementLoopAddLocation(NPC, 34.96, -11.29, -10.58, 2, 0)
	MovementLoopAddLocation(NPC, 35.56, -11.92, 4.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49, -12.42, -16.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.37, -11.79, -7.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43, -11.96, -7.68, 2, 0)
	MovementLoopAddLocation(NPC, 42.53, -13.16, -14.75, 2, 0)
	MovementLoopAddLocation(NPC, 38.97, -14.42, -24.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.66, -13.63, -22.16, 2, 0)
	MovementLoopAddLocation(NPC, 45.03, -13.41, -19.94, 2, 0)
	MovementLoopAddLocation(NPC, 49.24, -13.34, -16.41, 2, 0)
	MovementLoopAddLocation(NPC, 55.23, -13.45, -14.34, 2, 0)
	MovementLoopAddLocation(NPC, 60.59, -14.7, -11.27, 2, 0)
end
