--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425520.lua
	Script Purpose	:	Waypoint Path for ashoalglider425520.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:40 
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
	MovementLoopAddLocation(NPC, 19.05, -11.53, -59.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.24, -11.92, -62.88, 2, 0)
	MovementLoopAddLocation(NPC, 8.38, -12.43, -67.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.26, -11.86, -53, 2, 0)
	MovementLoopAddLocation(NPC, 12.91, -11.53, -38.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.92, -10.7, -44.96, 2, 0)
	MovementLoopAddLocation(NPC, 21, -10.7, -55.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.04, -11.08, -50.96, 2, 0)
	MovementLoopAddLocation(NPC, 38.74, -11.19, -36.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.69, -11.8, -27.26, 2, 0)
	MovementLoopAddLocation(NPC, 23.81, -11.56, -12.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.14, -12.6, -8.16, 2, 0)
	MovementLoopAddLocation(NPC, 36, -13.11, 0.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.87, -13.37, -31.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.12, -13.22, -6.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.41, -12.7, -16.79, 2, 0)
	MovementLoopAddLocation(NPC, 20.63, -11.9, -26.11, 2, 0)
	MovementLoopAddLocation(NPC, 10.05, -10.7, -52.37, 2, 0)
	MovementLoopAddLocation(NPC, 7.49, -10.7, -63.33, 2, 0)
	MovementLoopAddLocation(NPC, 4.91, -10.7, -73.66, 2, 0)
	MovementLoopAddLocation(NPC, 4.65, -10.99, -79.07, 2, 0)
	MovementLoopAddLocation(NPC, 6.46, -11.32, -83.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.52, -11.5, -83.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.33, -11.79, -74.18, 2, 0)
	MovementLoopAddLocation(NPC, -4.65, -12.29, -66.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.02, -11.7, -63.41, 2, 0)
end

