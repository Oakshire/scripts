--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427071.lua
	Script Purpose	:	Waypoint Path for areefturtle427071.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:28:59 
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
	MovementLoopAddLocation(NPC, 0.8, -12.64, -59.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.67, -11.42, -66.93, 2, 0)
	MovementLoopAddLocation(NPC, -3.52, -10.35, -70.08, 2, 0)
	MovementLoopAddLocation(NPC, -6.76, -10.2, -76.97, 2, 0)
	MovementLoopAddLocation(NPC, -8.1, -10.4, -82.1, 2, 0)
	MovementLoopAddLocation(NPC, -14.59, -11.77, -92.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.82, -11.3, -88.36, 2, 0)
	MovementLoopAddLocation(NPC, 0.8, -11.74, -78.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.01, -11.38, -80.86, 2, 0)
	MovementLoopAddLocation(NPC, -9.85, -11.27, -87.81, 2, 0)
	MovementLoopAddLocation(NPC, -20.83, -11.76, -95.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.26, -11.3, -82.87, 2, 0)
	MovementLoopAddLocation(NPC, -17.9, -10.61, -78.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.37, -10.11, -76.53, 2, 0)
	MovementLoopAddLocation(NPC, 9.14, -10.52, -54.61, 2, 0)
	MovementLoopAddLocation(NPC, 23.17, -11, -42.43, 2, 0)
	MovementLoopAddLocation(NPC, 27.57, -11.27, -36.59, 2, 0)
	MovementLoopAddLocation(NPC, 36.75, -12.21, -26.61, 2, 0)
	MovementLoopAddLocation(NPC, 44.5, -12.31, -17.82, 2, 0)
	MovementLoopAddLocation(NPC, 48.43, -12.42, -15.04, 2, 0)
	MovementLoopAddLocation(NPC, 55.91, -12.71, -9.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.97, -12.93, -12.21, 2, 0)
	MovementLoopAddLocation(NPC, 46.72, -12.7, -15.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.6, -12.78, -15.87, 2, 0)
	MovementLoopAddLocation(NPC, 22.49, -11.73, -17.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.24, -12.2, -15.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.53, -11.8, -15.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.29, -12.21, -23.5, 2, 0)
	MovementLoopAddLocation(NPC, 41.46, -12.14, -26.47, 2, 0)
	MovementLoopAddLocation(NPC, 37.27, -11.75, -37.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.95, -11.79, -41.22, 2, 0)
	MovementLoopAddLocation(NPC, 11.85, -12.26, -53.13, 2, 0)
	MovementLoopAddLocation(NPC, 7.96, -12.69, -55.93, 2, 0)
	MovementLoopAddLocation(NPC, 3.36, -13.15, -57.34, 2, 0)
end

