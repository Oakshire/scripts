--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427603.lua
	Script Purpose	:	Waypoint Path for aneedlefang427603.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:34:38 
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
	MovementLoopAddLocation(NPC, 9.92, -12.74, -42.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.62, -12.08, -43.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.2, -11.09, -42.28, 2, 0)
	MovementLoopAddLocation(NPC, 40.69, -11.04, -42.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.33, -11.61, -30.93, 2, 0)
	MovementLoopAddLocation(NPC, 33.33, -12.68, -12.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.14, -10.39, -43.13, 2, 0)
	MovementLoopAddLocation(NPC, 40.78, -10.3, -53.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.6, -10.45, -47.81, 2, 0)
	MovementLoopAddLocation(NPC, 30.5, -11.17, -40.83, 2, 0)
	MovementLoopAddLocation(NPC, 27.92, -11.79, -37.96, 2, 0)
	MovementLoopAddLocation(NPC, 22.19, -12.61, -35.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.95, -13.06, -33.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.71, -12.42, -38.21, 2, 0)
	MovementLoopAddLocation(NPC, 17.77, -12.08, -43.7, 2, 0)
	MovementLoopAddLocation(NPC, 14.31, -11.98, -49.64, 2, 0)
	MovementLoopAddLocation(NPC, 9.92, -12.33, -56.18, 2, 0)
	MovementLoopAddLocation(NPC, 6.5, -12.67, -63.52, 2, 0)
	MovementLoopAddLocation(NPC, 2.52, -12.95, -69.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.36, -11.31, -72.6, 2, 0)
	MovementLoopAddLocation(NPC, -4.4, -11.07, -79.16, 2, 0)
	MovementLoopAddLocation(NPC, -10.86, -11.19, -84.78, 2, 0)
	MovementLoopAddLocation(NPC, -18.98, -11.91, -88.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.23, -10.38, -84.22, 2, 0)
	MovementLoopAddLocation(NPC, -14.57, -10.3, -67.15, 2, 0)
	MovementLoopAddLocation(NPC, -13.42, -10.3, -58.32, 2, 0)
	MovementLoopAddLocation(NPC, -13.63, -11.11, -53.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.83, -11.07, -52, 2, 0)
	MovementLoopAddLocation(NPC, 12.3, -11.04, -42.96, 2, 0)
	MovementLoopAddLocation(NPC, 27.56, -11.96, -32.13, 2, 0)
	MovementLoopAddLocation(NPC, 31.99, -12.72, -27.87, 2, 0)
	MovementLoopAddLocation(NPC, 36.93, -14.29, -22.65, 2, 0)
	MovementLoopAddLocation(NPC, 41.33, -14.59, -19.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.58, -12.05, -16.8, 2, 0)
	MovementLoopAddLocation(NPC, 18.71, -12.19, -10.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.98, -11.74, -37.19, 2, 0)
	MovementLoopAddLocation(NPC, 15.49, -11.71, -50.32, 2, math.random(10, 20))
end

