--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425514.lua
	Script Purpose	:	Waypoint Path for ashoalglider425514.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:15 
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
	MovementLoopAddLocation(NPC, 37.24, -11.43, -1.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.35, -11.22, -5.95, 2, 0)
	MovementLoopAddLocation(NPC, 15.91, -10.79, -8.02, 2, 0)
	MovementLoopAddLocation(NPC, 10.17, -10.7, -10.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.46, -10.99, -10.06, 2, 0)
	MovementLoopAddLocation(NPC, 18.6, -11.28, -9.84, 2, 0)
	MovementLoopAddLocation(NPC, 26.32, -11.99, -10.69, 2, 0)
	MovementLoopAddLocation(NPC, 40.49, -11.66, -11.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.67, -12.57, -17.47, 2, 0)
	MovementLoopAddLocation(NPC, 38.93, -12.16, -25.17, 2, 0)
	MovementLoopAddLocation(NPC, 38.48, -10.7, -46.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.76, -10.7, -53, 2, 0)
	MovementLoopAddLocation(NPC, 26.17, -10.7, -54.38, 2, 0)
	MovementLoopAddLocation(NPC, 21.29, -10.7, -54.53, 2, 0)
	MovementLoopAddLocation(NPC, 17.74, -11.12, -58.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.25, -10.7, -42.08, 2, 0)
	MovementLoopAddLocation(NPC, 34.86, -11.55, -34.87, 2, 0)
	MovementLoopAddLocation(NPC, 37.28, -11.94, -29.41, 2, 0)
	MovementLoopAddLocation(NPC, 43.16, -12.09, -18.36, 2, 0)
	MovementLoopAddLocation(NPC, 48.19, -11.59, -12.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.37, -13.06, -13.91, 2, 0)
	MovementLoopAddLocation(NPC, 59.88, -13.81, -14.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.01, -11.94, -9.88, 2, 0)
	MovementLoopAddLocation(NPC, 39.03, -11.59, 0.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.89, -11, -5.97, 2, math.random(10, 20))
end

