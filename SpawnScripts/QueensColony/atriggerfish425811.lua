--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425811.lua
	Script Purpose	:	Waypoint Path for atriggerfish425811.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:52 
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
	MovementLoopAddLocation(NPC, -11.71, -12, -89.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.59, -11.94, -85.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.56, -11.69, -89.18, 2, 0)
	MovementLoopAddLocation(NPC, -26.68, -11.87, -95.33, 2, 0)
	MovementLoopAddLocation(NPC, -26.64, -11.87, -95.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.61, -11.41, -87.77, 2, 0)
	MovementLoopAddLocation(NPC, -8.61, -11.03, -82.52, 2, 0)
	MovementLoopAddLocation(NPC, -1.32, -11.5, -76.87, 2, 0)
	MovementLoopAddLocation(NPC, 0.07, -11.95, -74.45, 2, 0)
	MovementLoopAddLocation(NPC, -0.03, -12.04, -72.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.73, -12.55, -69.01, 2, 0)
	MovementLoopAddLocation(NPC, 5.99, -12.99, -63.82, 2, 0)
	MovementLoopAddLocation(NPC, 9.41, -13.35, -56.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.83, -13.06, -55.73, 2, 0)
	MovementLoopAddLocation(NPC, 18.44, -11.64, -55.35, 2, 0)
	MovementLoopAddLocation(NPC, 23.14, -10.57, -53.74, 2, 0)
	MovementLoopAddLocation(NPC, 34.91, -10.53, -50.98, 2, 0)
	MovementLoopAddLocation(NPC, 42.84, -12.32, -49.22, 2, 0)
	MovementLoopAddLocation(NPC, 45.63, -12.68, -47.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.12, -12.05, -43.24, 2, 0)
	MovementLoopAddLocation(NPC, 43.64, -12.02, -40.73, 2, 0)
	MovementLoopAddLocation(NPC, 41.26, -12.24, -37.8, 2, 0)
	MovementLoopAddLocation(NPC, 36.65, -12.39, -30.89, 2, 0)
	MovementLoopAddLocation(NPC, 28.09, -13.08, -22.83, 2, 0)
	MovementLoopAddLocation(NPC, 23.95, -13.33, -21.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.07, -13.14, -21.63, 2, 0)
	MovementLoopAddLocation(NPC, 43.66, -13.09, -19.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41, -13.45, -19.09, 2, 0)
	MovementLoopAddLocation(NPC, 28.22, -13.23, -18.07, 2, 0)
	MovementLoopAddLocation(NPC, 23, -13, -16.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.53, -13.06, -19.85, 2, 0)
	MovementLoopAddLocation(NPC, 19.54, -12.71, -25.4, 2, 0)
	MovementLoopAddLocation(NPC, 17.35, -12.35, -31.51, 2, 0)
	MovementLoopAddLocation(NPC, 15.1, -12.21, -35.62, 2, 0)
	MovementLoopAddLocation(NPC, 13.32, -12.15, -37.39, 2, 0)
	MovementLoopAddLocation(NPC, 10.39, -11.98, -38.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.48, -11.88, -51.44, 2, 0)
	MovementLoopAddLocation(NPC, -4.55, -11.07, -79.59, 2, 0)
	MovementLoopAddLocation(NPC, -8.54, -11.47, -84.9, 2, 0)
end

