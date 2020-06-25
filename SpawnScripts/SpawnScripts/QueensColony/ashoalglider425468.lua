--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425468.lua
	Script Purpose	:	Waypoint Path for ashoalglider425468.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:50 
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
	MovementLoopAddLocation(NPC, -3.24, -12.32, -63.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.65, -11.53, -57.02, 2, 0)
	MovementLoopAddLocation(NPC, -9.55, -11.35, -45.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.89, -11.75, -27.48, 2, 0)
	MovementLoopAddLocation(NPC, -13.83, -11.9, -17.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.91, -12.15, -33.02, 2, 0)
	MovementLoopAddLocation(NPC, -36.32, -12.42, -46.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.18, -11.41, -49.83, 2, 0)
	MovementLoopAddLocation(NPC, -40.57, -11.12, -52.52, 2, 0)
	MovementLoopAddLocation(NPC, -44.19, -11.11, -55.44, 2, 0)
	MovementLoopAddLocation(NPC, -48.04, -11.42, -57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.67, -10.99, -56.91, 2, 0)
	MovementLoopAddLocation(NPC, -22.83, -10.7, -50.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.91, -10.7, -56.17, 2, 0)
	MovementLoopAddLocation(NPC, -24.36, -10.7, -68.07, 2, 0)
	MovementLoopAddLocation(NPC, -22.89, -10.7, -79.2, 2, 0)
	MovementLoopAddLocation(NPC, -17.9, -11.14, -90.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.59, -11.42, -83.19, 2, 0)
	MovementLoopAddLocation(NPC, -28.28, -11.12, -79.24, 2, 0)
	MovementLoopAddLocation(NPC, -29.18, -10.7, -75.98, 2, 0)
	MovementLoopAddLocation(NPC, -35.58, -10.7, -64.55, 2, 0)
	MovementLoopAddLocation(NPC, -37.72, -10.7, -53.86, 2, 0)
	MovementLoopAddLocation(NPC, -39.88, -11.37, -35.13, 2, 0)
	MovementLoopAddLocation(NPC, -39.43, -11.62, -27.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.13, -11.58, -42.46, 2, 0)
	MovementLoopAddLocation(NPC, -16.77, -11.61, -45.05, 2, 0)
	MovementLoopAddLocation(NPC, -2.61, -12.06, -45.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.11, -11.65, -45.41, 2, 0)
	MovementLoopAddLocation(NPC, -47.66, -10.7, -40.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.55, -11.01, -44.05, 2, 0)
	MovementLoopAddLocation(NPC, -23.5, -10.7, -52.97, 2, 0)
	MovementLoopAddLocation(NPC, -13.05, -10.7, -57.4, 2, 0)
	MovementLoopAddLocation(NPC, -7.02, -11.85, -61, 2, 0)
end

