--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427330.lua
	Script Purpose	:	Waypoint Path for areefturtle427330.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:43 
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
	MovementLoopAddLocation(NPC, -49.64, -10.56, 27.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.99, -11.04, 21.17, 2, 0)
	MovementLoopAddLocation(NPC, -49.76, -10.43, 17.57, 2, 0)
	MovementLoopAddLocation(NPC, -50.19, -10.35, -51.32, 2, 0)
	MovementLoopAddLocation(NPC, -52.79, -10.21, -54.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.69, -10.48, -61.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.98, -10.4, -46.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.21, -11.96, -33.51, 2, 0)
	MovementLoopAddLocation(NPC, -20.38, -11.91, -31.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.49, -12.09, -16.7, 2, 0)
	MovementLoopAddLocation(NPC, -14.91, -12.15, -6.78, 2, 0)
	MovementLoopAddLocation(NPC, -15.51, -12.03, 1.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.09, -11.92, -0.09, 2, 0)
	MovementLoopAddLocation(NPC, -24.98, -11.14, -2.64, 2, 0)
	MovementLoopAddLocation(NPC, -28.85, -10.42, -6.76, 2, 0)
	MovementLoopAddLocation(NPC, -32.41, -10.2, -9.13, 2, 0)
	MovementLoopAddLocation(NPC, -38.55, -10.3, -15.46, 2, 0)
	MovementLoopAddLocation(NPC, -41.31, -10.22, -17.5, 2, 0)
	MovementLoopAddLocation(NPC, -51.6, -10.2, -28.77, 2, 0)
	MovementLoopAddLocation(NPC, -62.93, -10.12, -36.23, 2, 0)
	MovementLoopAddLocation(NPC, -66.13, -10.12, -40.51, 2, 0)
	MovementLoopAddLocation(NPC, -70.25, -10.98, -45.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.48, -10.2, -43.51, 2, 0)
	MovementLoopAddLocation(NPC, -17.83, -11.94, -44.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.83, -11.53, -48.56, 2, 0)
	MovementLoopAddLocation(NPC, -10.59, -11.04, -60.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.11, -11.11, -57.74, 2, 0)
	MovementLoopAddLocation(NPC, -10.05, -10.23, -47.31, 2, 0)
	MovementLoopAddLocation(NPC, -10.69, -10.38, -39.87, 2, 0)
	MovementLoopAddLocation(NPC, -14.9, -12.24, -16.2, 2, 0)
	MovementLoopAddLocation(NPC, -17.85, -12.34, -0.77, 2, 0)
	MovementLoopAddLocation(NPC, -18.07, -12.54, 2.86, 2, 0)
	MovementLoopAddLocation(NPC, -19.68, -13.4, 8.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.6, -13.61, 10.71, 2, 0)
	MovementLoopAddLocation(NPC, -31.35, -11.82, 15.3, 2, math.random(10, 20))
end
