--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425678.lua
	Script Purpose	:	Waypoint Path for ashoalglider425678.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:08 
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
	MovementLoopAddLocation(NPC, -73.62, -10.7, -57.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -70.76, -10.5, -53.13, 2, 0)
	MovementLoopAddLocation(NPC, -62.69, -10.5, -38.04, 2, 0)
	MovementLoopAddLocation(NPC, -52.57, -10.7, -24.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.23, -10.7, -21.87, 2, 0)
	MovementLoopAddLocation(NPC, -64.78, -10.7, -14.06, 2, 0)
	MovementLoopAddLocation(NPC, -69.22, -10.7, -6.51, 2, 0)
	MovementLoopAddLocation(NPC, -75.64, -10.7, -2.29, 2, 0)
	MovementLoopAddLocation(NPC, -80.6, -11.24, 5.25, 2, 0)
	MovementLoopAddLocation(NPC, -86.25, -11.47, 7.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -89.46, -11.42, 1.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -89.69, -11.51, 10.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -77.64, -10.7, 1.38, 2, 0)
	MovementLoopAddLocation(NPC, -69.39, -10.7, -3.45, 2, 0)
	MovementLoopAddLocation(NPC, -62.7, -10.7, -10.61, 2, 0)
	MovementLoopAddLocation(NPC, -59.18, -10.7, -11.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.85, -10.7, -18.75, 2, 0)
	MovementLoopAddLocation(NPC, -56.42, -10.7, -24.93, 2, 0)
	MovementLoopAddLocation(NPC, -53.4, -10.7, -39.27, 2, 0)
	MovementLoopAddLocation(NPC, -52.22, -10.7, -49.46, 2, 0)
	MovementLoopAddLocation(NPC, -47.9, -11.42, -59.99, 2, 0)
	MovementLoopAddLocation(NPC, -43.23, -11.74, -66.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.3, -10.7, -54.23, 2, 0)
	MovementLoopAddLocation(NPC, -44.92, -10.7, -47.79, 2, 0)
	MovementLoopAddLocation(NPC, -44.28, -10.7, -36.12, 2, 0)
	MovementLoopAddLocation(NPC, -42.8, -10.7, -30.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.47, -10.7, -34.15, 2, 0)
	MovementLoopAddLocation(NPC, -48.24, -10.7, -38.29, 2, 0)
	MovementLoopAddLocation(NPC, -51.75, -10.7, -41.72, 2, 0)
	MovementLoopAddLocation(NPC, -63.76, -10.7, -48.54, 2, 0)
end

