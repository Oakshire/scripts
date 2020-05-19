--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428478.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428478.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:43 
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
	MovementLoopAddLocation(NPC, 63.49, -11.69, -64.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.03, -10.7, -64.17, 2, 0)
	MovementLoopAddLocation(NPC, 46.2, -10.7, -63.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.63, -10.7, -63.8, 2, 0)
	MovementLoopAddLocation(NPC, 61.05, -10.7, -63.82, 2, 0)
	MovementLoopAddLocation(NPC, 68.94, -11.33, -62.25, 2, 0)
	MovementLoopAddLocation(NPC, 71.14, -11.72, -59.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.39, -10.98, -57.49, 2, 0)
	MovementLoopAddLocation(NPC, 73.86, -10.7, -53.56, 2, 0)
	MovementLoopAddLocation(NPC, 75.52, -10.7, -49.07, 2, 0)
	MovementLoopAddLocation(NPC, 81.09, -10.97, -43.74, 2, 0)
	MovementLoopAddLocation(NPC, 87.57, -11.26, -40.32, 2, 0)
	MovementLoopAddLocation(NPC, 94.94, -11.92, -33.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.54, -12.26, -35.73, 2, 0)
	MovementLoopAddLocation(NPC, 96.91, -12.6, -37.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.93, -12.76, -35.45, 2, 0)
	MovementLoopAddLocation(NPC, 92.62, -12.74, -15.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.06, -12.34, -24.85, 2, 0)
	MovementLoopAddLocation(NPC, 80.92, -11.78, -33.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.72, -11.24, -34.6, 2, 0)
	MovementLoopAddLocation(NPC, 99.8, -11.85, -33.46, 2, 0)
	MovementLoopAddLocation(NPC, 101.36, -12.07, -31.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.17, -11.32, -43.28, 2, 0)
	MovementLoopAddLocation(NPC, 79.72, -11.02, -46.56, 2, 0)
end


