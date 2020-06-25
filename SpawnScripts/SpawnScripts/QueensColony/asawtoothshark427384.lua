--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427384.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427384.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:20:32 
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
	MovementLoopAddLocation(NPC, -38.52, -11.68, -25.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.81, -10.7, -19.31, 2, 0)
	MovementLoopAddLocation(NPC, -68.82, -10.7, 0.3, 2, 0)
	MovementLoopAddLocation(NPC, -82.73, -10.7, 19.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -69.23, -10.7, 3.33, 2, 0)
	MovementLoopAddLocation(NPC, -52.1, -10.7, -31.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.36, -10.7, -48.81, 2, 0)
	MovementLoopAddLocation(NPC, -39.72, -10.7, -55.72, 2, 0)
	MovementLoopAddLocation(NPC, -34.02, -10.59, -71.72, 2, 0)
	MovementLoopAddLocation(NPC, -29.36, -11.79, -80.81, 2, 0)
	MovementLoopAddLocation(NPC, -27.13, -11.95, -83.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.21, -11.56, -77.63, 2, 0)
	MovementLoopAddLocation(NPC, -35.9, -10.58, -70.04, 2, 0)
	MovementLoopAddLocation(NPC, -40.89, -10.51, -58.42, 2, 0)
	MovementLoopAddLocation(NPC, -44.12, -10.7, -50.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.79, -10.7, -43.59, 2, 0)
	MovementLoopAddLocation(NPC, -20.47, -11.31, -39.3, 2, 0)
	MovementLoopAddLocation(NPC, -13.26, -11.63, -34.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.23, -11.24, -31.33, 2, 0)
	MovementLoopAddLocation(NPC, -24.57, -11.3, -25.74, 2, 0)
	MovementLoopAddLocation(NPC, -27.96, -11.23, -22.78, 2, 0)
	MovementLoopAddLocation(NPC, -32.85, -11.23, -20.1, 2, 0)
	MovementLoopAddLocation(NPC, -37.81, -10.63, -15.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.19, -10.68, -23.1, 2, 0)
	MovementLoopAddLocation(NPC, -43.31, -11.07, -46.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -54.26, -10.7, -32.45, 2, 0)
	MovementLoopAddLocation(NPC, -58.65, -10.7, -13.58, 2, 0)
	MovementLoopAddLocation(NPC, -65.38, -10.7, -2.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -75.59, -10.7, -5.41, 2, 0)
	MovementLoopAddLocation(NPC, -82.99, -11.31, -8.85, 2, 0)
	MovementLoopAddLocation(NPC, -85.8, -11.59, -13.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -91.55, -11.72, -5.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -85.45, -10.7, -9.96, 2, 0)
	MovementLoopAddLocation(NPC, -67.52, -10.7, -14.65, 2, 0)
	MovementLoopAddLocation(NPC, -57.63, -10.67, -15.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.59, -10.7, -12.76, 2, 0)
	MovementLoopAddLocation(NPC, -32.44, -10.7, -13.01, 2, 0)
	MovementLoopAddLocation(NPC, -8.53, -12.79, -15.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.92, -12.23, -20.3, 2, 0)
end

