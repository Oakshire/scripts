--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425470.lua
	Script Purpose	:	Waypoint Path for ashoalglider425470.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:34 
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
	MovementLoopAddLocation(NPC, -3.16, -11.47, -60.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.9, -11.6, -49.09, 2, 0)
	MovementLoopAddLocation(NPC, -14.31, -11.27, -30.29, 2, 0)
	MovementLoopAddLocation(NPC, -20.8, -12.09, -20, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.55, -11.88, -18.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.79, -11.8, -19.74, 2, 0)
	MovementLoopAddLocation(NPC, -14.69, -11.88, -19.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.74, -12.36, -14.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.76, -12.14, -17.88, 2, 0)
	MovementLoopAddLocation(NPC, -26.77, -12.02, -31.51, 2, 0)
	MovementLoopAddLocation(NPC, -31.94, -12.38, -38.57, 2, 0)
	MovementLoopAddLocation(NPC, -35.11, -12.41, -44.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.15, -10.79, -31.29, 2, 0)
	MovementLoopAddLocation(NPC, -4.98, -11.07, -24.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.99, -11.01, -25.89, 2, 0)
	MovementLoopAddLocation(NPC, -18.18, -10.98, -28.07, 2, 0)
	MovementLoopAddLocation(NPC, -25.92, -11.44, -30.54, 2, 0)
	MovementLoopAddLocation(NPC, -29.5, -11.78, -30.82, 2, 0)
	MovementLoopAddLocation(NPC, -33.42, -12.13, -29.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.9, -12.44, -31.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.6, -12.68, -32.59, 2, 0)
	MovementLoopAddLocation(NPC, -20.89, -12.12, -35.87, 2, 0)
	MovementLoopAddLocation(NPC, -16.61, -11.86, -37.46, 2, 0)
	MovementLoopAddLocation(NPC, -8.21, -11.57, -40.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.18, -11.74, -39.03, 2, 0)
	MovementLoopAddLocation(NPC, -28.61, -11.93, -37.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.37, -11.74, -42.26, 2, 0)
	MovementLoopAddLocation(NPC, -37.29, -11.12, -48.89, 2, 0)
	MovementLoopAddLocation(NPC, -43.89, -10.99, -55.36, 2, 0)
	MovementLoopAddLocation(NPC, -47.72, -11.29, -57.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.25, -10.7, -56.09, 2, 0)
	MovementLoopAddLocation(NPC, -67.41, -10.7, -53.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.16, -10.7, -53.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.7, -10.7, -47.83, 2, 0)
	MovementLoopAddLocation(NPC, -23.86, -10.67, -47.36, 2, 0)
	MovementLoopAddLocation(NPC, -12.71, -11.49, -44.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.92, -11.52, -51.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.11, -11.54, -60.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.11, -11.54, -48.42, 2, 0)
	MovementLoopAddLocation(NPC, -9.97, -11.38, -40.86, 2, 0)
	MovementLoopAddLocation(NPC, -13, -11.13, -33.41, 2, 0)
	MovementLoopAddLocation(NPC, -15.6, -11.49, -27.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.22, -11.99, -18.47, 2, 0)
	MovementLoopAddLocation(NPC, -15.73, -12.48, -13.79, 2, 0)
	MovementLoopAddLocation(NPC, -18.2, -12.81, -8.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.06, -12.58, -17.1, 2, 0)
	MovementLoopAddLocation(NPC, -22.71, -12.21, -23.87, 2, 0)
	MovementLoopAddLocation(NPC, -27.61, -12.01, -32.89, 2, 0)
	MovementLoopAddLocation(NPC, -32.98, -12.61, -39.89, 2, 0)
	MovementLoopAddLocation(NPC, -35.31, -12.5, -44.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.19, -11.05, -30.12, 2, 0)
	MovementLoopAddLocation(NPC, 2.74, -11.44, -23.37, 2, math.random(10, 20))
end
