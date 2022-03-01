--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427354.lua
	Script Purpose	:	Waypoint Path for areefturtle427354.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:29 
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
	MovementLoopAddLocation(NPC, -30.36, -11.41, -36.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.05, -11.31, -34.47, 2, 0)
	MovementLoopAddLocation(NPC, -54.28, -10.48, -26.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.62, -10.76, -26.91, 2, 0)
	MovementLoopAddLocation(NPC, -37.65, -10.34, -17.72, 2, 0)
	MovementLoopAddLocation(NPC, -34.31, -10.36, -3.47, 2, 0)
	MovementLoopAddLocation(NPC, -28.3, -11.54, 8.84, 2, 0)
	MovementLoopAddLocation(NPC, -26.98, -11.67, 11.31, 2, 0)
	MovementLoopAddLocation(NPC, -16.7, -12.26, 23.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.84, -11.28, -0.85, 2, 0)
	MovementLoopAddLocation(NPC, -21.11, -11.37, -4.85, 2, 0)
	MovementLoopAddLocation(NPC, -16.37, -12.05, -15.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.03, -12.24, 0.32, 2, 0)
	MovementLoopAddLocation(NPC, -19.41, -12.72, 4.7, 2, 0)
	MovementLoopAddLocation(NPC, -24.31, -13.78, 13.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.25, -12.97, 9.2, 2, 0)
	MovementLoopAddLocation(NPC, -28.01, -10.75, 0.27, 2, 0)
	MovementLoopAddLocation(NPC, -29.25, -10.19, -1.88, 2, 0)
	MovementLoopAddLocation(NPC, -33.83, -10.49, -11.51, 2, 0)
	MovementLoopAddLocation(NPC, -35.22, -10.98, -16.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.95, -10.59, -11.01, 2, 0)
	MovementLoopAddLocation(NPC, -47.49, -10.35, -9.31, 2, 0)
	MovementLoopAddLocation(NPC, -55.21, -10.51, -8.63, 2, 0)
	MovementLoopAddLocation(NPC, -74.24, -10.49, 6.85, 2, 0)
	MovementLoopAddLocation(NPC, -82.08, -11.72, 8.85, 2, 0)
	MovementLoopAddLocation(NPC, -86.77, -12.11, 12.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -78.61, -10.6, 10.09, 2, 0)
	MovementLoopAddLocation(NPC, -68.8, -10.47, 12.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -67.69, -10.44, 7.37, 2, 0)
	MovementLoopAddLocation(NPC, -58.33, -10.43, -5.32, 2, 0)
	MovementLoopAddLocation(NPC, -50.11, -10.6, -17.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.41, -10.37, -19.5, 2, 0)
	MovementLoopAddLocation(NPC, -35.13, -10.67, -28.6, 2, 0)
end

