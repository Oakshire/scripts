--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428517.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428517.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:40:35 
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
	MovementLoopAddLocation(NPC, -11.36, -11.68, -91.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.38, -10.7, -83.13, 2, 0)
	MovementLoopAddLocation(NPC, -3.2, -10.7, -70.71, 2, 0)
	MovementLoopAddLocation(NPC, 0.15, -11.56, -53.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.11, -11.16, -74.78, 2, 0)
	MovementLoopAddLocation(NPC, 8.34, -10.7, -81.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.38, -10.7, -73.08, 2, 0)
	MovementLoopAddLocation(NPC, 14.86, -10.7, -63.58, 2, 0)
	MovementLoopAddLocation(NPC, 21.78, -10.7, -47.44, 2, 0)
	MovementLoopAddLocation(NPC, 28.2, -11.39, -35.6, 2, 0)
	MovementLoopAddLocation(NPC, 32.95, -11.96, -29.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.23, -13.12, -21.86, 2, 0)
	MovementLoopAddLocation(NPC, 39.86, -13.13, -17.77, 2, 0)
	MovementLoopAddLocation(NPC, 47.73, -13.08, -15.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.61, -12.96, -17.72, 2, 0)
	MovementLoopAddLocation(NPC, 60.15, -12.71, -18.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.29, -13.08, -10.58, 2, 0)
	MovementLoopAddLocation(NPC, 43.95, -12.95, -7.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.18, -12.63, -10.01, 2, 0)
	MovementLoopAddLocation(NPC, 35.07, -12.44, -16.3, 2, 0)
	MovementLoopAddLocation(NPC, 27.18, -12.29, -19.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.11, -13.62, -26.78, 2, 0)
	MovementLoopAddLocation(NPC, 25, -13.69, -30.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.72, -12.61, -36.18, 2, 0)
	MovementLoopAddLocation(NPC, 14.43, -12.15, -41.05, 2, 0)
	MovementLoopAddLocation(NPC, 8.27, -11.97, -47.71, 2, 0)
	MovementLoopAddLocation(NPC, 5.93, -12.14, -50.78, 2, 0)
	MovementLoopAddLocation(NPC, 3.25, -13.16, -55.72, 2, 0)
	MovementLoopAddLocation(NPC, 1.42, -13.46, -60.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.3, -11.18, -69.81, 2, 0)
	MovementLoopAddLocation(NPC, -3.32, -11.03, -78.82, 2, 0)
end
