--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428439.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428439.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:17 
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
	MovementLoopAddLocation(NPC, -67.51, -10.66, -34.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -59.68, -10.7, -43.42, 2, 0)
	MovementLoopAddLocation(NPC, -40.59, -10.7, -43.15, 2, 0)
	MovementLoopAddLocation(NPC, -28.14, -11.08, -34.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.33, -11.36, -25.12, 2, 0)
	MovementLoopAddLocation(NPC, 0.13, -11.51, -24.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.25, -11.98, -17.64, 2, 0)
	MovementLoopAddLocation(NPC, -9.07, -12.38, -9.64, 2, 0)
	MovementLoopAddLocation(NPC, -10.82, -12.57, -4.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.92, -12.21, -0.75, 2, 0)
	MovementLoopAddLocation(NPC, -18.43, -11.92, 4.39, 2, 0)
	MovementLoopAddLocation(NPC, -24.82, -12.36, 16.24, 2, 0)
	MovementLoopAddLocation(NPC, -27.96, -13.17, 21.4, 2, 0)
	MovementLoopAddLocation(NPC, -32.14, -13.21, 25.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.66, -13.03, 20.93, 2, 0)
	MovementLoopAddLocation(NPC, -17.17, -12.72, 2.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.5, -11.23, 5.26, 2, 0)
	MovementLoopAddLocation(NPC, -40.91, -10.7, 7.53, 2, 0)
	MovementLoopAddLocation(NPC, -75.51, -10.7, 14.78, 2, 0)
	MovementLoopAddLocation(NPC, -84.24, -10.7, 16.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -62.41, -10.7, -14.22, 2, 0)
	MovementLoopAddLocation(NPC, -59.36, -10.7, -20.41, 2, 0)
	MovementLoopAddLocation(NPC, -54.54, -10.7, -28.68, 2, 0)
	MovementLoopAddLocation(NPC, -48.75, -11.1, -36.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.42, -10.7, -43.21, 2, 0)
	MovementLoopAddLocation(NPC, -53.34, -10.73, -54.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -65.39, -10.95, -44.94, 2, 0)
end

