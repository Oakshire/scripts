--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427043.lua
	Script Purpose	:	Waypoint Path for areefturtle427043.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:31 
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
	MovementLoopAddLocation(NPC, -59.89, -10.65, -11.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.24, -10.2, -17.51, 2, 0)
	MovementLoopAddLocation(NPC, -19.62, -10.79, -23.3, 2, 0)
	MovementLoopAddLocation(NPC, -6.39, -11.6, -25.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.38, -11.43, -34.26, 2, 0)
	MovementLoopAddLocation(NPC, -15.42, -11.35, -44.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.82, -12.76, -42.33, 2, 0)
	MovementLoopAddLocation(NPC, -20.88, -13.1, -41.7, 2, 0)
	MovementLoopAddLocation(NPC, -26.01, -13.82, -42.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.52, -12.52, -38.76, 2, 0)
	MovementLoopAddLocation(NPC, -24.24, -12.43, -36.19, 2, 0)
	MovementLoopAddLocation(NPC, -22.86, -12.26, -32.75, 2, 0)
	MovementLoopAddLocation(NPC, -8.05, -11.36, -11.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.12, -11.82, -16.81, 2, 0)
	MovementLoopAddLocation(NPC, -21.76, -12.25, -30.15, 2, 0)
	MovementLoopAddLocation(NPC, -31.05, -12.84, -39.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.28, -12.85, -32.19, 2, 0)
	MovementLoopAddLocation(NPC, -24.02, -13.02, -24.31, 2, 0)
	MovementLoopAddLocation(NPC, -22.88, -12.95, -22.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.59, -12.19, -20.48, 2, 0)
	MovementLoopAddLocation(NPC, -24.07, -11.51, -16.26, 2, 0)
	MovementLoopAddLocation(NPC, -24, -11.25, -5.97, 2, 0)
	MovementLoopAddLocation(NPC, -22.82, -12.4, 7.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.28, -12.21, -1.4, 2, 0)
	MovementLoopAddLocation(NPC, -11.9, -12.35, -7.25, 2, 0)
	MovementLoopAddLocation(NPC, -10.55, -12.77, -11.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.59, -12.5, -6.23, 2, 0)
	MovementLoopAddLocation(NPC, -16.05, -12.17, 0.6, 2, 0)
	MovementLoopAddLocation(NPC, -20.39, -11.58, 4.12, 2, 0)
	MovementLoopAddLocation(NPC, -23.43, -11.36, 5.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.63, -11.75, -5.53, 2, 0)
	MovementLoopAddLocation(NPC, -15.8, -12.11, -14.18, 2, 0)
	MovementLoopAddLocation(NPC, -14.66, -12.24, -17.21, 2, 0)
	MovementLoopAddLocation(NPC, -14.84, -12.19, -21.53, 2, 0)
	MovementLoopAddLocation(NPC, -15.76, -12.12, -24.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.64, -12.24, -24.91, 2, 0)
	MovementLoopAddLocation(NPC, -25.72, -12.82, -24.89, 2, 0)
	MovementLoopAddLocation(NPC, -28, -12.77, -25.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.05, -11.36, -23.13, 2, 0)
	MovementLoopAddLocation(NPC, -44.37, -10.11, -19.74, 2, 0)
	MovementLoopAddLocation(NPC, -49.78, -10.2, -16.79, 2, 0)
	MovementLoopAddLocation(NPC, -57.54, -10.57, -14.5, 2, 0)
end

