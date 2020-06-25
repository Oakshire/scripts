--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428442.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428442.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:37 
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
	MovementLoopAddLocation(NPC, -85.11, -11.67, 14.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -83.45, -11.46, 15.32, 2, 0)
	MovementLoopAddLocation(NPC, -78.6, -10.72, 17.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -76.39, -10.7, 2.52, 2, 0)
	MovementLoopAddLocation(NPC, -71.41, -10.7, -29.49, 2, 0)
	MovementLoopAddLocation(NPC, -69.87, -10.7, -35.15, 2, 0)
	MovementLoopAddLocation(NPC, -68.22, -10.7, -42.96, 2, 0)
	MovementLoopAddLocation(NPC, -64.8, -11.18, -47.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -59.2, -10.7, -45.73, 2, 0)
	MovementLoopAddLocation(NPC, -43.05, -10.7, -43.62, 2, 0)
	MovementLoopAddLocation(NPC, -34.42, -11.45, -46.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.62, -10.7, -48.63, 2, 0)
	MovementLoopAddLocation(NPC, -56.31, -10.7, -51.87, 2, 0)
	MovementLoopAddLocation(NPC, -65.93, -11.69, -56.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.76, -11.38, -54.24, 2, 0)
	MovementLoopAddLocation(NPC, -50.26, -11.26, -55.17, 2, 0)
	MovementLoopAddLocation(NPC, -44.37, -11.32, -60.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.68, -11.34, -67.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.86, -10.7, -60.01, 2, 0)
	MovementLoopAddLocation(NPC, -58.34, -10.7, -51.23, 2, 0)
	MovementLoopAddLocation(NPC, -69.12, -10.7, -42.25, 2, 0)
	MovementLoopAddLocation(NPC, -71.45, -10.7, -21.18, 2, 0)
	MovementLoopAddLocation(NPC, -81.51, -10.68, -9.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -86.36, -11.89, -0.98, 2, 0)
	MovementLoopAddLocation(NPC, -89.53, -11.74, 10.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -89.79, -11.11, 20.37, 2, 0)
	MovementLoopAddLocation(NPC, -88.2, -10.7, 24.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -81.42, -10.97, 21.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -91.31, -11.61, -16.2, 2, math.random(10, 20))
end
