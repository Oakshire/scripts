--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427298.lua
	Script Purpose	:	Waypoint Path for areefturtle427298.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:04 
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
	MovementLoopAddLocation(NPC, -60.27, -11.71, -54.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -54.61, -11.16, -53.8, 2, 0)
	MovementLoopAddLocation(NPC, -34.54, -10.56, -54.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.61, -11.25, -45.93, 2, 0)
	MovementLoopAddLocation(NPC, -36.67, -11.18, -21.07, 2, 0)
	MovementLoopAddLocation(NPC, -34.74, -10.45, -12.72, 2, 0)
	MovementLoopAddLocation(NPC, -30.78, -11.59, 16.94, 2, 0)
	MovementLoopAddLocation(NPC, -30.64, -12.99, 24.31, 2, 0)
	MovementLoopAddLocation(NPC, -38.26, -12.7, 36.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.77, -11.8, 10.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.21, -11.46, 6.14, 2, 0)
	MovementLoopAddLocation(NPC, -26.21, -11.44, -7.33, 2, 0)
	MovementLoopAddLocation(NPC, -25.3, -11.72, -12.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.48, -11.31, -16.96, 2, 0)
	MovementLoopAddLocation(NPC, -26.03, -11.58, -20.52, 2, 0)
	MovementLoopAddLocation(NPC, -26.06, -11.72, -23.36, 2, 0)
	MovementLoopAddLocation(NPC, -26.78, -11.8, -26.04, 2, 0)
	MovementLoopAddLocation(NPC, -31.67, -11.89, -35.34, 2, 0)
	MovementLoopAddLocation(NPC, -37.09, -11.79, -38.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.2, -11.26, -32.85, 2, 0)
	MovementLoopAddLocation(NPC, -32.2, -10.41, -27.68, 2, 0)
	MovementLoopAddLocation(NPC, -29.63, -10.35, -18.69, 2, 0)
	MovementLoopAddLocation(NPC, -27.99, -10.99, -2.77, 2, 0)
	MovementLoopAddLocation(NPC, -26.64, -12.46, 0.13, 2, 0)
	MovementLoopAddLocation(NPC, -23.9, -13, 1.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.52, -12.14, -0.35, 2, 0)
	MovementLoopAddLocation(NPC, -24.77, -11.42, -2.13, 2, 0)
	MovementLoopAddLocation(NPC, -24.2, -11.52, -4.81, 2, 0)
	MovementLoopAddLocation(NPC, -22.74, -11.79, -9.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.98, -11.43, -15.5, 2, 0)
	MovementLoopAddLocation(NPC, -27.33, -11.53, -20.17, 2, 0)
	MovementLoopAddLocation(NPC, -33.6, -11.74, -25.64, 2, 0)
	MovementLoopAddLocation(NPC, -39.99, -11.78, -34.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.66, -10.37, -35.93, 2, 0)
	MovementLoopAddLocation(NPC, -49.21, -10.38, -40.87, 2, 0)
	MovementLoopAddLocation(NPC, -53.17, -10.6, -47.88, 2, 0)
	MovementLoopAddLocation(NPC, -57.69, -11.52, -52.91, 2, 0)
end

