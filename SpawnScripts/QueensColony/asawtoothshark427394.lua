--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427394.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427394.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:25 
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
	MovementLoopAddLocation(NPC, 89.5, -12.79, -21.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.56, -11.13, -31.68, 2, 0)
	MovementLoopAddLocation(NPC, 75.45, -10.7, -36.8, 2, 0)
	MovementLoopAddLocation(NPC, 45.5, -10.7, -67.03, 2, 0)
	MovementLoopAddLocation(NPC, 36.62, -10.7, -75.38, 2, 0)
	MovementLoopAddLocation(NPC, 29.55, -10.56, -82.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.41, -10.7, -89.33, 2, 0)
	MovementLoopAddLocation(NPC, 15.15, -11.19, -97.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.88, -11.6, -89.96, 2, 0)
	MovementLoopAddLocation(NPC, 25.21, -11.71, -87.16, 2, 0)
	MovementLoopAddLocation(NPC, 35.73, -11.84, -81.19, 2, 0)
	MovementLoopAddLocation(NPC, 44.73, -11.77, -77.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.59, -11.96, -57.21, 2, 0)
	MovementLoopAddLocation(NPC, 68.53, -11.86, -53.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.7, -12.25, -46.07, 2, 0)
	MovementLoopAddLocation(NPC, 79.06, -12.24, -44.48, 2, 0)
	MovementLoopAddLocation(NPC, 86.54, -12.44, -42.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.64, -11.5, -44.75, 2, 0)
	MovementLoopAddLocation(NPC, 77.36, -11.47, -47.95, 2, 0)
	MovementLoopAddLocation(NPC, 73.95, -11, -54.15, 2, 0)
	MovementLoopAddLocation(NPC, 73.86, -11.12, -58.97, 2, 0)
	MovementLoopAddLocation(NPC, 75.84, -11.67, -68.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.28, -11, -63.08, 2, 0)
	MovementLoopAddLocation(NPC, 75.27, -10.7, -56.8, 2, 0)
	MovementLoopAddLocation(NPC, 75.44, -11.01, -40.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.72, -11.79, -53.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.84, -11.94, -45.94, 2, 0)
	MovementLoopAddLocation(NPC, 82.76, -12.78, -35.77, 2, 0)
	MovementLoopAddLocation(NPC, 84.96, -12.7, -31.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.32, -11.91, -19.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.82, -12.03, -11.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.15, -12.08, -19.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.64, -11.45, -18.51, 2, math.random(10, 20))
end

