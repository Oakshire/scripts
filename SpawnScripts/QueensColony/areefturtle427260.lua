--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427260.lua
	Script Purpose	:	Waypoint Path for areefturtle427260.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:24 
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
	MovementLoopAddLocation(NPC, -55.3, -11.14, 0.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.75, -10.2, 1.88, 2, 0)
	MovementLoopAddLocation(NPC, -42.84, -10.16, 2.88, 2, 0)
	MovementLoopAddLocation(NPC, -30.49, -10.99, 5.93, 2, 0)
	MovementLoopAddLocation(NPC, -25.03, -11.53, 6.96, 2, 0)
	MovementLoopAddLocation(NPC, -18.25, -12.51, 6.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.27, -12.24, 10.81, 2, 0)
	MovementLoopAddLocation(NPC, -42.31, -11.28, 15.27, 2, 0)
	MovementLoopAddLocation(NPC, -44.96, -11.23, 15.94, 2, 0)
	MovementLoopAddLocation(NPC, -52.05, -10.59, 20.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.84, -11.24, 16.69, 2, 0)
	MovementLoopAddLocation(NPC, -34.79, -11.8, 10.35, 2, 0)
	MovementLoopAddLocation(NPC, -28.34, -12.11, 6.12, 2, 0)
	MovementLoopAddLocation(NPC, -25.45, -12.67, 1.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.35, -12.22, -1.23, 2, 0)
	MovementLoopAddLocation(NPC, -26.2, -11.49, -2.74, 2, 0)
	MovementLoopAddLocation(NPC, -27.58, -11.15, -3, 2, 0)
	MovementLoopAddLocation(NPC, -30.2, -11.07, -2.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.61, -11.09, -6.15, 2, 0)
	MovementLoopAddLocation(NPC, -24.82, -11.22, -12.75, 2, 0)
	MovementLoopAddLocation(NPC, -20.54, -11.26, -32.59, 2, 0)
	MovementLoopAddLocation(NPC, -19.72, -11.26, -36.17, 2, 0)
	MovementLoopAddLocation(NPC, -14.55, -11.33, -46.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.89, -11.71, -29.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.91, -11.35, -27.64, 2, 0)
	MovementLoopAddLocation(NPC, -16.83, -11.21, -24.68, 2, 0)
	MovementLoopAddLocation(NPC, -39.84, -10.53, -15.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.74, -10.41, -11.56, 2, 0)
	MovementLoopAddLocation(NPC, -35.54, -10.2, -1.51, 2, 0)
	MovementLoopAddLocation(NPC, -33.06, -10.64, 6.78, 2, 0)
	MovementLoopAddLocation(NPC, -27.4, -11.41, 18.01, 2, 0)
	MovementLoopAddLocation(NPC, -25.05, -11.48, 20.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.87, -12.03, 15.79, 2, 0)
	MovementLoopAddLocation(NPC, -18.81, -12.18, 2.1, 2, 0)
	MovementLoopAddLocation(NPC, -15.44, -11.84, -2.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.58, -10.32, -2.4, 2, 0)
	MovementLoopAddLocation(NPC, -37.39, -10.2, -1.73, 2, 0)
	MovementLoopAddLocation(NPC, -53.23, -11.14, 0.02, 2, 0)
	MovementLoopAddLocation(NPC, -55.65, -12.06, 2.13, 2, 0)
	MovementLoopAddLocation(NPC, -56.3, -11.57, 5.57, 2, math.random(10, 20))
end

