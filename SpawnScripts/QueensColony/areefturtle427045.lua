--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427045.lua
	Script Purpose	:	Waypoint Path for areefturtle427045.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:20 
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
	MovementLoopAddLocation(NPC, -5.7, -11.82, -34.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.19, -11.91, -40.83, 2, 0)
	MovementLoopAddLocation(NPC, -18.45, -12.47, -45.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.9, -11.42, -51.99, 2, 0)
	MovementLoopAddLocation(NPC, -12.85, -11.21, -56.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.09, -11.47, -52.43, 2, 0)
	MovementLoopAddLocation(NPC, -18.74, -12.21, -48.22, 2, 0)
	MovementLoopAddLocation(NPC, -29.86, -11.53, -38.33, 2, 0)
	MovementLoopAddLocation(NPC, -38.85, -11.35, -34.68, 2, 0)
	MovementLoopAddLocation(NPC, -46.84, -10.66, -29.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.33, -10.2, -24.79, 2, 0)
	MovementLoopAddLocation(NPC, -63.76, -10.2, -16.33, 2, 0)
	MovementLoopAddLocation(NPC, -74.52, -10.14, -5.21, 2, 0)
	MovementLoopAddLocation(NPC, -79.88, -10.52, -1.07, 2, 0)
	MovementLoopAddLocation(NPC, -85.95, -11.82, 1.87, 2, 0)
	MovementLoopAddLocation(NPC, -89.01, -11.85, 1.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -80.74, -11.39, -1.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -76.71, -10.52, -2.16, 2, 0)
	MovementLoopAddLocation(NPC, -71.83, -10.34, -2.58, 2, 0)
	MovementLoopAddLocation(NPC, -53.49, -10.2, -9.79, 2, 0)
	MovementLoopAddLocation(NPC, -26.14, -10.54, -27.8, 2, 0)
	MovementLoopAddLocation(NPC, -18.01, -11.69, -31.9, 2, 0)
	MovementLoopAddLocation(NPC, -14.27, -11.7, -36.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.55, -11.5, -14.16, 2, math.random(10, 20))
end

