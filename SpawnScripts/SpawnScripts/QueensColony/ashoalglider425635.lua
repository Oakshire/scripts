--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425635.lua
	Script Purpose	:	Waypoint Path for ashoalglider425635.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:47 
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
	MovementLoopAddLocation(NPC, -47.13, -11.49, 20.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40, -11.5, 17.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.97, -11.93, 21.1, 2, 0)
	MovementLoopAddLocation(NPC, -35.18, -12.28, 23.68, 2, 0)
	MovementLoopAddLocation(NPC, -32.11, -12.75, 25.38, 2, 0)
	MovementLoopAddLocation(NPC, -26.86, -13.16, 29.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.05, -12.97, 25.09, 2, 0)
	MovementLoopAddLocation(NPC, -27.69, -11.85, 15.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.23, -11.15, 15.99, 2, 0)
	MovementLoopAddLocation(NPC, -52.11, -10.7, 17.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.52, -10.7, 3.53, 2, 0)
	MovementLoopAddLocation(NPC, -52.7, -10.7, -2.03, 2, 0)
	MovementLoopAddLocation(NPC, -53.78, -10.7, -5.39, 2, 0)
	MovementLoopAddLocation(NPC, -53.72, -10.7, -16.51, 2, 0)
	MovementLoopAddLocation(NPC, -56.24, -10.7, -26.84, 2, 0)
	MovementLoopAddLocation(NPC, -53.47, -10.7, -40.44, 2, 0)
	MovementLoopAddLocation(NPC, -62, -10.7, -54.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.86, -10.7, -55.03, 2, 0)
	MovementLoopAddLocation(NPC, -47.71, -10.7, -61.45, 2, 0)
	MovementLoopAddLocation(NPC, -38.73, -10.7, -69.9, 2, 0)
	MovementLoopAddLocation(NPC, -32.59, -10.7, -71.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.42, -10.7, -64.87, 2, 0)
	MovementLoopAddLocation(NPC, -48.73, -10.7, -40.66, 2, 0)
	MovementLoopAddLocation(NPC, -51.67, -10.7, -33.37, 2, 0)
	MovementLoopAddLocation(NPC, -57.71, -10.7, -18.96, 2, 0)
	MovementLoopAddLocation(NPC, -65.15, -10.7, -5.9, 2, 0)
	MovementLoopAddLocation(NPC, -70.83, -10.7, 7.98, 2, 0)
	MovementLoopAddLocation(NPC, -75.16, -10.7, 12.66, 2, 0)
	MovementLoopAddLocation(NPC, -78.09, -10.7, 19.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -70.87, -10.7, 7.95, 2, 0)
	MovementLoopAddLocation(NPC, -57.71, -10.7, -6.91, 2, 0)
	MovementLoopAddLocation(NPC, -46.61, -10.7, -20.25, 2, 0)
	MovementLoopAddLocation(NPC, -31.57, -11.86, -33.95, 2, 0)
	MovementLoopAddLocation(NPC, -26.48, -12.26, -39.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.06, -12.28, -31.94, 2, 0)
	MovementLoopAddLocation(NPC, -25.97, -11.39, -19.4, 2, 0)
	MovementLoopAddLocation(NPC, -25.21, -11.11, -14.89, 2, 0)
	MovementLoopAddLocation(NPC, -24.74, -11.83, 0.99, 2, 0)
	MovementLoopAddLocation(NPC, -25.72, -12.07, 5.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.54, -11.76, 9.81, 2, 0)
	MovementLoopAddLocation(NPC, -32.91, -11.9, 12.77, 2, 0)
	MovementLoopAddLocation(NPC, -36.08, -11.98, 14.93, 2, 0)
	MovementLoopAddLocation(NPC, -38.57, -11.99, 15.78, 2, 0)
	MovementLoopAddLocation(NPC, -43.45, -12.05, 19.48, 2, 0)
end

