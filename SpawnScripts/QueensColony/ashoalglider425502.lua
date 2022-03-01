--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425502.lua
	Script Purpose	:	Waypoint Path for ashoalglider425502.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:31:39 
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
	MovementLoopAddLocation(NPC, 34.86, -11.64, -3.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.16, -12.58, -1.93, 2, 0)
	MovementLoopAddLocation(NPC, 44.87, -12.89, 0.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.87, -13.2, -15.25, 2, 0)
	MovementLoopAddLocation(NPC, 23.92, -11.18, -36.11, 2, 0)
	MovementLoopAddLocation(NPC, 21.66, -11.04, -43.01, 2, 0)
	MovementLoopAddLocation(NPC, 16.93, -11.24, -49.03, 2, 0)
	MovementLoopAddLocation(NPC, 12.97, -11.46, -58.28, 2, 0)
	MovementLoopAddLocation(NPC, 4.07, -11.71, -75.88, 2, 0)
	MovementLoopAddLocation(NPC, 1.64, -11.51, -81.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.56, -11.47, -84.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.08, -11.98, -71.78, 2, 0)
	MovementLoopAddLocation(NPC, 7.16, -12.52, -67.59, 2, 0)
	MovementLoopAddLocation(NPC, 9.45, -12.49, -64.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.03, -11.82, -67.94, 2, 0)
	MovementLoopAddLocation(NPC, 0.49, -11.18, -79.98, 2, 0)
	MovementLoopAddLocation(NPC, -2.82, -11.34, -84.76, 2, 0)
	MovementLoopAddLocation(NPC, -8.63, -11.52, -95.46, 2, 0)
	MovementLoopAddLocation(NPC, -8.62, -11.52, -95.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.14, -10.7, -82.59, 2, 0)
	MovementLoopAddLocation(NPC, -5.37, -10.7, -78.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.98, -12.04, -41.46, 2, 0)
	MovementLoopAddLocation(NPC, 23.05, -13.78, -31.43, 2, 0)
	MovementLoopAddLocation(NPC, 28.3, -14.4, -28.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.52, -13.92, -25.06, 2, 0)
	MovementLoopAddLocation(NPC, 32.35, -11.92, -7.53, 2, 0)
end

