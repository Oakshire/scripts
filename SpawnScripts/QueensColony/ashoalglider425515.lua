--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425515.lua
	Script Purpose	:	Waypoint Path for ashoalglider425515.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:38 
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
	MovementLoopAddLocation(NPC, 4.14, -11.53, -34.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.41, -11.73, -31.49, 2, 0)
	MovementLoopAddLocation(NPC, 11.9, -11.74, -23.19, 2, 0)
	MovementLoopAddLocation(NPC, 17.09, -11.91, -17.85, 2, 0)
	MovementLoopAddLocation(NPC, 27.56, -13.61, -0.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.1, -12.59, -29.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.65, -12.79, -30.48, 2, 0)
	MovementLoopAddLocation(NPC, 14.54, -12.3, -38.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.52, -12.73, -34.97, 2, 0)
	MovementLoopAddLocation(NPC, 35.22, -12.93, -28.49, 2, 0)
	MovementLoopAddLocation(NPC, 42.39, -13.18, -23.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.89, -11.61, -16.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.89, -11.76, -20.31, 2, 0)
	MovementLoopAddLocation(NPC, 28.29, -11, -34.77, 2, 0)
	MovementLoopAddLocation(NPC, 23.7, -11.09, -39.88, 2, 0)
	MovementLoopAddLocation(NPC, 19.44, -11.5, -42.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.16, -11.22, -40.93, 2, 0)
	MovementLoopAddLocation(NPC, 28.06, -11.29, -36.05, 2, 0)
	MovementLoopAddLocation(NPC, 38, -12.25, -28.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.71, -11.97, -22.79, 2, 0)
	MovementLoopAddLocation(NPC, 60.92, -11.47, -19.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.69, -11.78, -17.64, 2, 0)
	MovementLoopAddLocation(NPC, 39.58, -12.03, -15.04, 2, 0)
	MovementLoopAddLocation(NPC, 30.42, -12.04, -10.9, 2, 0)
	MovementLoopAddLocation(NPC, 19.38, -12.6, -7.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.66, -12.36, -12.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.81, -12.54, 3.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.15, -11.85, -1.34, 2, 0)
end

