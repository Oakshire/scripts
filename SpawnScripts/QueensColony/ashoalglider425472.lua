--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425472.lua
	Script Purpose	:	Waypoint Path for ashoalglider425472.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:07 
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
	MovementLoopAddLocation(NPC, -35.24, -11.44, 13.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.51, -10.7, 3.97, 2, 0)
	MovementLoopAddLocation(NPC, -36.77, -10.7, -10.61, 2, 0)
	MovementLoopAddLocation(NPC, -44.03, -10.7, -24.71, 2, 0)
	MovementLoopAddLocation(NPC, -45.66, -10.96, -35.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.31, -11.02, -25.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.18, -10.7, -49.52, 2, 0)
	MovementLoopAddLocation(NPC, -19.38, -10.7, -74.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.59, -10.7, -78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.08, -10.7, -73.78, 2, 0)
	MovementLoopAddLocation(NPC, -9.76, -10.7, -69.67, 2, 0)
	MovementLoopAddLocation(NPC, -0.72, -12.56, -65.21, 2, 0)
	MovementLoopAddLocation(NPC, 2.01, -12.77, -61.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.12, -11.49, -58.49, 2, 0)
	MovementLoopAddLocation(NPC, -12.18, -11.13, -55.58, 2, 0)
	MovementLoopAddLocation(NPC, -16.56, -11.22, -50.57, 2, 0)
	MovementLoopAddLocation(NPC, -20.15, -11.33, -47.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.3, -10.7, -48.99, 2, 0)
	MovementLoopAddLocation(NPC, -33.2, -10.7, -52.8, 2, 0)
	MovementLoopAddLocation(NPC, -40.06, -10.7, -54.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.22, -11.23, -47.64, 2, 0)
	MovementLoopAddLocation(NPC, -16.98, -11.03, -42.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.16, -11.12, -34.88, 2, 0)
	MovementLoopAddLocation(NPC, -26.8, -11.03, -30.61, 2, 0)
	MovementLoopAddLocation(NPC, -35.18, -11.46, -18.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.87, -10.7, -14.57, 2, 0)
	MovementLoopAddLocation(NPC, -35.93, -10.7, 2.94, 2, 0)
end

