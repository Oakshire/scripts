--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427040.lua
	Script Purpose	:	Waypoint Path for areefturtle427040.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:29 
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
	MovementLoopAddLocation(NPC, -82.59, -11.41, 17.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.61, -10.2, 14.82, 2, 0)
	MovementLoopAddLocation(NPC, -49.18, -10.41, 21.1, 2, 0)
	MovementLoopAddLocation(NPC, -32.16, -12.08, 31.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.79, -11.38, 24.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.18, -10.44, 9.97, 2, 0)
	MovementLoopAddLocation(NPC, -40.52, -10.2, 6.39, 2, 0)
	MovementLoopAddLocation(NPC, -26.89, -10.47, -14.69, 2, 0)
	MovementLoopAddLocation(NPC, -17.52, -11.26, -30.67, 2, 0)
	MovementLoopAddLocation(NPC, -9.56, -11.68, -39.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.1, -11.68, -47.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.47, -11.82, -40.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.69, -11.57, -34.54, 2, 0)
	MovementLoopAddLocation(NPC, -6.89, -11.83, -30.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.44, -11.79, -37.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.43, -11.37, -36.72, 2, 0)
	MovementLoopAddLocation(NPC, -38.06, -11.79, -34.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.91, -10.39, -42.39, 2, 0)
	MovementLoopAddLocation(NPC, -54.49, -10.39, -49.11, 2, 0)
	MovementLoopAddLocation(NPC, -62.6, -11.24, -52.36, 2, 0)
	MovementLoopAddLocation(NPC, -67.72, -11.62, -53.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -59.44, -10.46, -55.17, 2, 0)
	MovementLoopAddLocation(NPC, -49.82, -10.43, -58.22, 2, 0)
	MovementLoopAddLocation(NPC, -40.59, -11.55, -64.75, 2, 0)
	MovementLoopAddLocation(NPC, -37.06, -11.42, -70.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.99, -11.41, -65.41, 2, 0)
	MovementLoopAddLocation(NPC, -41.33, -11.32, -61.26, 2, 0)
	MovementLoopAddLocation(NPC, -41.04, -11.33, -47.93, 2, 0)
	MovementLoopAddLocation(NPC, -39.78, -11.68, -39.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.35, -12.1, -30.65, 2, 0)
	MovementLoopAddLocation(NPC, -39.52, -11.71, -25.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.48, -10.73, -14.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.51, -10.34, -6.91, 2, 0)
	MovementLoopAddLocation(NPC, -55.83, -10.42, -1.68, 2, 0)
	MovementLoopAddLocation(NPC, -66.68, -10.45, 2.54, 2, 0)
	MovementLoopAddLocation(NPC, -79.96, -11.3, 14.12, 2, 0)
end

