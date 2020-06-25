--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425499.lua
	Script Purpose	:	Waypoint Path for ashoalglider425499.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:28:27 
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
	MovementLoopAddLocation(NPC, 16.22, -12.44, -17.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.05, -11.9, -21.39, 2, 0)
	MovementLoopAddLocation(NPC, 5.52, -11.78, -33.47, 2, 0)
	MovementLoopAddLocation(NPC, -5.38, -11.52, -45.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.95, -11.79, -56.27, 2, 0)
	MovementLoopAddLocation(NPC, 9.58, -11.54, -67.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.44, -11.2, -71.49, 2, 0)
	MovementLoopAddLocation(NPC, -3.21, -10.7, -76.72, 2, 0)
	MovementLoopAddLocation(NPC, -5.28, -10.7, -79.09, 2, 0)
	MovementLoopAddLocation(NPC, -8.32, -10.7, -81.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.76, -10.7, -71.26, 2, 0)
	MovementLoopAddLocation(NPC, 6.01, -10.62, -66.71, 2, 0)
	MovementLoopAddLocation(NPC, 9.57, -11.03, -62.26, 2, 0)
	MovementLoopAddLocation(NPC, 15.65, -11.34, -56.36, 2, 0)
	MovementLoopAddLocation(NPC, 33.59, -11.96, -34.32, 2, 0)
	MovementLoopAddLocation(NPC, 37.3, -12.27, -28.89, 2, 0)
	MovementLoopAddLocation(NPC, 39.76, -12.4, -26.24, 2, 0)
	MovementLoopAddLocation(NPC, 43.37, -12.36, -23.81, 2, 0)
	MovementLoopAddLocation(NPC, 51.49, -12.32, -17.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.55, -12.1, -15.41, 2, 0)
	MovementLoopAddLocation(NPC, 62.07, -11.54, -9.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.06, -11.79, -12.53, 2, 0)
	MovementLoopAddLocation(NPC, 43.46, -12.49, -20.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.67, -14.08, -21.98, 2, 0)
	MovementLoopAddLocation(NPC, 35.23, -14.41, -22.95, 2, 0)
	MovementLoopAddLocation(NPC, 28.39, -14.82, -23.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.7, -14.37, -18.46, 2, 0)
	MovementLoopAddLocation(NPC, 31.86, -13.54, -16.26, 2, 0)
	MovementLoopAddLocation(NPC, 35.01, -12.27, -11.65, 2, 0)
	MovementLoopAddLocation(NPC, 40.57, -11.53, -4.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.01, -12.68, -12.73, 2, 0)
	MovementLoopAddLocation(NPC, 20.04, -12.44, -16.1, 2, 0)
end

