--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427226.lua
	Script Purpose	:	Waypoint Path for areefturtle427226.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:26:59 
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
	MovementLoopAddLocation(NPC, -61.6, -11.32, -54.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -51.57, -10.29, -41.56, 2, 0)
	MovementLoopAddLocation(NPC, -45.22, -10.43, -31.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -53.04, -10.34, -25.3, 2, 0)
	MovementLoopAddLocation(NPC, -79.32, -10.48, -2.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.29, -11.55, -5.87, 2, 0)
	MovementLoopAddLocation(NPC, -92.59, -11.95, -13.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -83.17, -10.66, -8.14, 2, 0)
	MovementLoopAddLocation(NPC, -69.69, -10.43, -9.38, 2, 0)
	MovementLoopAddLocation(NPC, -45.95, -10.43, -10.91, 2, 0)
	MovementLoopAddLocation(NPC, -15.58, -11.43, -18.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.72, -10.27, -9.74, 2, 0)
	MovementLoopAddLocation(NPC, -55.73, -10.39, -8.05, 2, 0)
	MovementLoopAddLocation(NPC, -62.14, -10.31, -2.9, 2, 0)
	MovementLoopAddLocation(NPC, -72.1, -10.47, 2.26, 2, 0)
	MovementLoopAddLocation(NPC, -80.59, -10.46, 4.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -71.43, -10.2, 4.66, 2, 0)
	MovementLoopAddLocation(NPC, -52.33, -10.2, 6.01, 2, 0)
	MovementLoopAddLocation(NPC, -46.46, -10.62, 10.56, 2, 0)
	MovementLoopAddLocation(NPC, -42.03, -11.36, 14.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.98, -10.27, 4.56, 2, 0)
	MovementLoopAddLocation(NPC, -43.74, -10.51, -21.35, 2, 0)
	MovementLoopAddLocation(NPC, -42.91, -11.39, -27.47, 2, 0)
	MovementLoopAddLocation(NPC, -42.23, -11.78, -37.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.89, -10.65, -28.39, 2, 0)
	MovementLoopAddLocation(NPC, -55.79, -10.38, -18.55, 2, 0)
	MovementLoopAddLocation(NPC, -57.36, -10.74, -13.35, 2, 0)
	MovementLoopAddLocation(NPC, -56.47, -11.24, -6.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.26, -10.37, -14.36, 2, 0)
	MovementLoopAddLocation(NPC, -63.97, -10.31, -32.79, 2, 0)
	MovementLoopAddLocation(NPC, -65.28, -10.98, -42.44, 2, 0)
end

