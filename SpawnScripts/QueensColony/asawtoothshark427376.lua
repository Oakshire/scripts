--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427376.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427376.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:39 
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
	MovementLoopAddLocation(NPC, -39.72, -11.89, -43.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.46, -11.71, -29.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.26, -11.45, -22.5, 2, 0)
	MovementLoopAddLocation(NPC, -45, -10.51, -26.8, 2, 0)
	MovementLoopAddLocation(NPC, -54.32, -10.57, -27.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.62, -10.66, -19.87, 2, 0)
	MovementLoopAddLocation(NPC, -53.13, -10.7, -13.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.61, -10.7, -22.03, 2, 0)
	MovementLoopAddLocation(NPC, -39.91, -10.7, -36.09, 2, 0)
	MovementLoopAddLocation(NPC, -33.09, -11.36, -44.94, 2, 0)
	MovementLoopAddLocation(NPC, -25.07, -11.13, -49.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.5, -11.9, -41.41, 2, 0)
	MovementLoopAddLocation(NPC, -40.13, -11.77, -34.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.9, -11.91, -32.09, 2, 0)
	MovementLoopAddLocation(NPC, -22.21, -11.78, -24.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.8, -11.56, -30.14, 2, 0)
	MovementLoopAddLocation(NPC, -20.09, -11.52, -34.38, 2, 0)
	MovementLoopAddLocation(NPC, -18.03, -11.7, -41.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.32, -11.96, -44, 2, 0)
	MovementLoopAddLocation(NPC, -40.73, -11.66, -44.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.79, -11.83, -21.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.95, -11.32, -20.16, 2, 0)
	MovementLoopAddLocation(NPC, -41.01, -10.7, -18.47, 2, 0)
	MovementLoopAddLocation(NPC, -50.38, -10.7, -17, 2, 0)
	MovementLoopAddLocation(NPC, -58.49, -10.7, -9.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.11, -10.7, -16.5, 2, 0)
	MovementLoopAddLocation(NPC, -34.35, -11.3, -43.29, 2, 0)
	MovementLoopAddLocation(NPC, -29.3, -11.64, -47.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.03, -11.77, -34.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.64, -11.91, -24.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.15, -11.74, -30.3, 2, 0)
	MovementLoopAddLocation(NPC, -20.28, -11.7, -34.51, 2, 0)
	MovementLoopAddLocation(NPC, -18.09, -11.7, -41.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.57, -12.07, -44.27, 2, 0)
end

