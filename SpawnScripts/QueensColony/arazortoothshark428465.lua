--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428465.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428465.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:51 
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
	MovementLoopAddLocation(NPC, -22.83, -11.44, -34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.07, -12.25, -22.08, 2, 0)
	MovementLoopAddLocation(NPC, -1.85, -12.42, -19.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.41, -11.93, -28.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.54, -12.04, -13.05, 2, 0)
	MovementLoopAddLocation(NPC, -14.26, -12, -5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.15, -12.1, 2.87, 2, 0)
	MovementLoopAddLocation(NPC, -27.08, -12.63, 13.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.37, -11.94, 6.24, 2, 0)
	MovementLoopAddLocation(NPC, -27.02, -11.46, -0.85, 2, 0)
	MovementLoopAddLocation(NPC, -26.69, -11.33, -7.06, 2, 0)
	MovementLoopAddLocation(NPC, -26.64, -11.25, -12.33, 2, 0)
	MovementLoopAddLocation(NPC, -28.01, -11.61, -18.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.29, -10.7, -17.12, 2, 0)
	MovementLoopAddLocation(NPC, -47.17, -10.7, -9.63, 2, 0)
	MovementLoopAddLocation(NPC, -54.42, -10.7, -2.21, 2, 0)
	MovementLoopAddLocation(NPC, -68.51, -10.7, 7.85, 2, 0)
	MovementLoopAddLocation(NPC, -78.84, -10.7, 18.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -72.22, -10.7, 10.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -69.21, -10.7, 6.17, 2, 0)
	MovementLoopAddLocation(NPC, -58.21, -10.7, -5.67, 2, 0)
	MovementLoopAddLocation(NPC, -55.12, -10.7, -12.68, 2, 0)
	MovementLoopAddLocation(NPC, -34.96, -10.7, -36.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.38, -10.7, -47.71, 2, 0)
	MovementLoopAddLocation(NPC, -14.48, -10.58, -55.38, 2, 0)
	MovementLoopAddLocation(NPC, -5.1, -12.39, -63.7, 2, 0)
	MovementLoopAddLocation(NPC, -1.89, -12.45, -68.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.17, -10.99, -66.19, 2, 0)
	MovementLoopAddLocation(NPC, -13.07, -10.6, -65.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.55, -10.7, -78.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.56, -10.91, -68.94, 2, 0)
	MovementLoopAddLocation(NPC, -37.49, -10.61, -62.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.44, -10.7, -59.68, 2, 0)
	MovementLoopAddLocation(NPC, -31.2, -10.56, -52.71, 2, 0)
	MovementLoopAddLocation(NPC, -27.16, -11.63, -48.24, 2, 0)
	MovementLoopAddLocation(NPC, -26.5, -12.73, -42.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.47, -11.7, -37.95, 2, 0)
end

