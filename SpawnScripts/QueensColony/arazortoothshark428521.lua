--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428521.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428521.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:25 
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
	MovementLoopAddLocation(NPC, 40.26, -13.66, -1.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.65, -13.68, -5.8, 2, 0)
	MovementLoopAddLocation(NPC, 24.03, -13.8, -13.56, 2, 0)
	MovementLoopAddLocation(NPC, 19.19, -13.92, -18.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.78, -14.54, -21.07, 2, 0)
	MovementLoopAddLocation(NPC, 36.45, -14.82, -20.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.87, -14.53, -16.61, 2, 0)
	MovementLoopAddLocation(NPC, 24.08, -12.21, -10.71, 2, 0)
	MovementLoopAddLocation(NPC, 20.67, -11.9, -6.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.08, -13.27, -9.34, 2, 0)
	MovementLoopAddLocation(NPC, 36.78, -13.29, -9.75, 2, 0)
	MovementLoopAddLocation(NPC, 52.7, -12.81, -8.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.15, -11.6, -12.99, 2, 0)
	MovementLoopAddLocation(NPC, 76.91, -11.68, -15.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.58, -12.57, -15.04, 2, 0)
	MovementLoopAddLocation(NPC, 64.12, -11.66, -15.84, 2, 0)
	MovementLoopAddLocation(NPC, 61.39, -11.61, -16.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.52, -11.28, -18.76, 2, 0)
	MovementLoopAddLocation(NPC, 55.87, -10.7, -21.51, 2, 0)
	MovementLoopAddLocation(NPC, 51.23, -10.7, -28.12, 2, 0)
	MovementLoopAddLocation(NPC, 48.96, -10.7, -36.32, 2, 0)
	MovementLoopAddLocation(NPC, 47.81, -12.64, -43.66, 2, 0)
	MovementLoopAddLocation(NPC, 46.27, -12.9, -46.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.3, -11.7, -40.8, 2, 0)
	MovementLoopAddLocation(NPC, 48.89, -11.39, -30, 2, 0)
	MovementLoopAddLocation(NPC, 50.18, -11.77, -25.32, 2, 0)
	MovementLoopAddLocation(NPC, 55.43, -12.87, -18.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.83, -13.04, -10.81, 2, 0)
	MovementLoopAddLocation(NPC, 45.95, -13.15, -4.69, 2, 0)
	MovementLoopAddLocation(NPC, 34.28, -12.94, 6.42, 2, math.random(10, 20))
end

