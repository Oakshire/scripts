--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425503.lua
	Script Purpose	:	Waypoint Path for ashoalglider425503.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:31:58 
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
	MovementLoopAddLocation(NPC, 61.96, -14.2, -12.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.21, -13.78, -13.46, 2, 0)
	MovementLoopAddLocation(NPC, 55.27, -12.79, -15.92, 2, 0)
	MovementLoopAddLocation(NPC, 43.76, -12.66, -21, 2, 0)
	MovementLoopAddLocation(NPC, 38.42, -13.28, -24.34, 2, 0)
	MovementLoopAddLocation(NPC, 35.21, -13.49, -26.92, 2, 0)
	MovementLoopAddLocation(NPC, 31.53, -13.48, -28.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.15, -12.98, -34.12, 2, 0)
	MovementLoopAddLocation(NPC, 16.01, -12.05, -39.94, 2, 0)
	MovementLoopAddLocation(NPC, 10.08, -11.56, -45.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.76, -11.7, -33.65, 2, 0)
	MovementLoopAddLocation(NPC, 19.03, -11.85, -27.08, 2, 0)
	MovementLoopAddLocation(NPC, 29.34, -12.91, -7.78, 2, 0)
	MovementLoopAddLocation(NPC, 34.41, -12.5, -1.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.02, -12.09, -7.32, 2, 0)
	MovementLoopAddLocation(NPC, 33.94, -12.03, -12.42, 2, 0)
	MovementLoopAddLocation(NPC, 31.49, -12.95, -26.23, 2, 0)
	MovementLoopAddLocation(NPC, 28.64, -12.13, -36.67, 2, 0)
	MovementLoopAddLocation(NPC, 28.06, -11.56, -40.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.36, -11.63, -41.24, 2, 0)
	MovementLoopAddLocation(NPC, 16.08, -11.51, -45.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.96, -11.56, -48.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.26, -11.52, -37.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.38, -12.48, -34.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.91, -12.84, -29.51, 2, 0)
	MovementLoopAddLocation(NPC, 29.86, -12.87, -25.93, 2, 0)
	MovementLoopAddLocation(NPC, 25.22, -12.52, -9.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.71, -13.25, -10.52, 2, 0)
end

