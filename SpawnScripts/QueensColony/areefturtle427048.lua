--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427048.lua
	Script Purpose	:	Waypoint Path for areefturtle427048.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:20:23 
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
	MovementLoopAddLocation(NPC, -20.43, -12.71, -41.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.18, -12.25, -46.94, 2, 0)
	MovementLoopAddLocation(NPC, -34.22, -11.35, -49.88, 2, 0)
	MovementLoopAddLocation(NPC, -39.52, -11.14, -55.26, 2, 0)
	MovementLoopAddLocation(NPC, -41.92, -11.42, -62.71, 2, 0)
	MovementLoopAddLocation(NPC, -40.32, -11.64, -72.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.22, -11.31, -62.87, 2, 0)
	MovementLoopAddLocation(NPC, -40.21, -11.05, -57.4, 2, 0)
	MovementLoopAddLocation(NPC, -38.53, -11.15, -53.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -69.63, -11.36, -53.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -64.29, -10.67, -51.62, 2, 0)
	MovementLoopAddLocation(NPC, -53.7, -10.2, -42.45, 2, 0)
	MovementLoopAddLocation(NPC, -46.87, -10.36, -35.66, 2, 0)
	MovementLoopAddLocation(NPC, -46.81, -10.41, -28.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.36, -11.01, -33.27, 2, 0)
	MovementLoopAddLocation(NPC, -27.58, -11.71, -44.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.95, -11.96, -41.6, 2, 0)
	MovementLoopAddLocation(NPC, -18.33, -11.34, -34.49, 2, 0)
	MovementLoopAddLocation(NPC, -14.48, -11.43, -32.47, 2, 0)
	MovementLoopAddLocation(NPC, -7.14, -11.68, -31.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.47, -11.49, -36.42, 2, 0)
	MovementLoopAddLocation(NPC, -5.04, -11.39, -45.94, 2, 0)
	MovementLoopAddLocation(NPC, -3.33, -12.22, -63.7, 2, 0)
	MovementLoopAddLocation(NPC, -2.97, -12.68, -66.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.73, -12.31, -62.83, 2, 0)
	MovementLoopAddLocation(NPC, -12.14, -11.41, -55.64, 2, 0)
	MovementLoopAddLocation(NPC, -16.33, -11.39, -49.99, 2, 0)
	MovementLoopAddLocation(NPC, -18.97, -12.63, -45.49, 2, 0)
end

