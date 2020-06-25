--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425809.lua
	Script Purpose	:	Waypoint Path for atriggerfish425809.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:05 
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
	MovementLoopAddLocation(NPC, 25.51, -13.98, 7.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.64, -12.51, 2.99, 2, 0)
	MovementLoopAddLocation(NPC, 43.12, -12.17, 0.04, 2, 0)
	MovementLoopAddLocation(NPC, 50.03, -12.42, -2.24, 2, 0)
	MovementLoopAddLocation(NPC, 62.13, -12.91, -8.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.63, -13.43, -10.02, 2, 0)
	MovementLoopAddLocation(NPC, 39.03, -14.37, -12.44, 2, 0)
	MovementLoopAddLocation(NPC, 33.69, -14.79, -14.22, 2, 0)
	MovementLoopAddLocation(NPC, 31.38, -14.2, -14.35, 2, 0)
	MovementLoopAddLocation(NPC, 28.99, -14.34, -13.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.82, -12.79, -24.45, 2, 0)
	MovementLoopAddLocation(NPC, 37.61, -12.06, -32.97, 2, 0)
	MovementLoopAddLocation(NPC, 42.61, -12.02, -40.83, 2, 0)
	MovementLoopAddLocation(NPC, 46.06, -12.76, -46.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.94, -11.74, -41.44, 2, 0)
	MovementLoopAddLocation(NPC, 48.56, -12.2, -30.72, 2, 0)
	MovementLoopAddLocation(NPC, 50.57, -12.43, -23.8, 2, 0)
	MovementLoopAddLocation(NPC, 53.44, -12.95, -18.71, 2, 0)
	MovementLoopAddLocation(NPC, 56.96, -13.81, -15.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.36, -12.54, -11.4, 2, 0)
	MovementLoopAddLocation(NPC, 45.35, -12.04, -3.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.41, -12.28, -6.08, 2, 0)
	MovementLoopAddLocation(NPC, 36.35, -12.63, -8.91, 2, 0)
	MovementLoopAddLocation(NPC, 21.66, -12.38, -22.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.16, -13.31, -19.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.18, -13.39, -17.19, 2, 0)
	MovementLoopAddLocation(NPC, 50.18, -13.42, -16.41, 2, 0)
	MovementLoopAddLocation(NPC, 54.55, -13.7, -15.37, 2, 0)
	MovementLoopAddLocation(NPC, 61.9, -14.5, -14.37, 2, 0)
	MovementLoopAddLocation(NPC, 65.79, -14.81, -13.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.37, -14.51, -10.92, 2, 0)
	MovementLoopAddLocation(NPC, 60.45, -13, -6.53, 2, 0)
	MovementLoopAddLocation(NPC, 58.17, -12.85, -4.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.5, -13.22, -2.92, 2, 0)
	MovementLoopAddLocation(NPC, 45.09, -13.32, -1.19, 2, 0)
	MovementLoopAddLocation(NPC, 34.99, -13.11, 2.23, 2, 0)
end

