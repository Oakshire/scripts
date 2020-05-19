--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425816.lua
	Script Purpose	:	Waypoint Path for atriggerfish425816.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:24:26 
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
	MovementLoopAddLocation(NPC, 15.8, -12.98, 18.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.37, -12.12, 18.01, 2, 0)
	MovementLoopAddLocation(NPC, 52.82, -12.88, 18.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.87, -12.2, 20.41, 2, 0)
	MovementLoopAddLocation(NPC, 54.23, -11.72, 24.56, 2, 0)
	MovementLoopAddLocation(NPC, 56.29, -11.45, 36.35, 2, 0)
	MovementLoopAddLocation(NPC, 58.33, -11.97, 39.1, 2, 0)
	MovementLoopAddLocation(NPC, 60.09, -12.16, 40.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.74, -12.66, 40.09, 2, 0)
	MovementLoopAddLocation(NPC, 69, -12.75, 38.84, 2, 0)
	MovementLoopAddLocation(NPC, 72.57, -13.36, 35.3, 2, 0)
	MovementLoopAddLocation(NPC, 73.13, -13.89, 30.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.08, -13.55, 33.93, 2, 0)
	MovementLoopAddLocation(NPC, 70.69, -13.28, 37.06, 2, 0)
	MovementLoopAddLocation(NPC, 65.3, -13, 39.32, 2, 0)
	MovementLoopAddLocation(NPC, 62.98, -12.78, 40.8, 2, 0)
	MovementLoopAddLocation(NPC, 59.45, -12.52, 43.08, 2, 0)
	MovementLoopAddLocation(NPC, 53.21, -11.6, 43.39, 2, 0)
	MovementLoopAddLocation(NPC, 48.04, -11.62, 43.13, 2, 0)
	MovementLoopAddLocation(NPC, 44.26, -11.81, 41.7, 2, 0)
	MovementLoopAddLocation(NPC, 25.71, -13.88, 33.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.77, -12.42, 37.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.77, -13.37, 32.12, 2, 0)
	MovementLoopAddLocation(NPC, 18.81, -13.9, 31.02, 2, 0)
	MovementLoopAddLocation(NPC, 21.17, -13.93, 31.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.71, -13.59, 32.08, 2, 0)
	MovementLoopAddLocation(NPC, 4.03, -12.81, 38.42, 2, 0)
	MovementLoopAddLocation(NPC, -3.44, -12.12, 43.79, 2, 0)
	MovementLoopAddLocation(NPC, -8.58, -11.86, 46.82, 2, 0)
	MovementLoopAddLocation(NPC, -14.65, -11.93, 49.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.79, -12.07, 46.75, 2, 0)
	MovementLoopAddLocation(NPC, 2.56, -13.23, 42.94, 2, 0)
	MovementLoopAddLocation(NPC, 5.73, -13.83, 40.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.54, -13.96, 43.43, 2, math.random(10, 20))
end

