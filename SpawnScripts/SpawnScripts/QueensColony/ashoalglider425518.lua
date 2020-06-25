--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425518.lua
	Script Purpose	:	Waypoint Path for ashoalglider425518.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:42 
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
	MovementLoopAddLocation(NPC, 67.98, -14.83, -12.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.61, -13.61, -14.97, 2, 0)
	MovementLoopAddLocation(NPC, 55.08, -12.79, -16.1, 2, 0)
	MovementLoopAddLocation(NPC, 52.17, -12.62, -17.16, 2, 0)
	MovementLoopAddLocation(NPC, 48.95, -12.44, -20.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.88, -12.44, -24.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.48, -12.85, -27.83, 2, 0)
	MovementLoopAddLocation(NPC, 20.78, -12.49, -38.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.67, -11.59, -36.58, 2, 0)
	MovementLoopAddLocation(NPC, 6.76, -11.49, -36.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.34, -11.56, -28.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.37, -11.51, -24.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.92, -12.33, -31.99, 2, 0)
	MovementLoopAddLocation(NPC, 21.72, -12.44, -41.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.34, -12.64, -11.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.28, -12.6, -15.77, 2, 0)
	MovementLoopAddLocation(NPC, 22.98, -12.06, -27.01, 2, 0)
	MovementLoopAddLocation(NPC, 20.11, -11.94, -31.15, 2, 0)
	MovementLoopAddLocation(NPC, 14.51, -12.31, -36.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.71, -12.62, -33.82, 2, 0)
	MovementLoopAddLocation(NPC, 39.34, -11.62, -27.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.75, -11.7, -22.38, 2, 0)
	MovementLoopAddLocation(NPC, 59.37, -12.08, -18.74, 2, 0)
	MovementLoopAddLocation(NPC, 65.05, -14.44, -13.51, 2, 0)
end

