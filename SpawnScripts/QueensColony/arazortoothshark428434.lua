--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428434.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428434.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:40 
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
	MovementLoopAddLocation(NPC, -12.06, -11.64, -47.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.04, -11.42, -47.22, 2, 0)
	MovementLoopAddLocation(NPC, 4.45, -11.44, -45.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.73, -12.11, -45.32, 2, 0)
	MovementLoopAddLocation(NPC, -19.83, -12.44, -44.11, 2, 0)
	MovementLoopAddLocation(NPC, -26.76, -12.28, -41.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.35, -12.08, -39.7, 2, 0)
	MovementLoopAddLocation(NPC, -11.33, -11.58, -34.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.07, -11.12, -32.05, 2, 0)
	MovementLoopAddLocation(NPC, -23.27, -11.03, -28.54, 2, 0)
	MovementLoopAddLocation(NPC, -36.22, -10.7, -23.92, 2, 0)
	MovementLoopAddLocation(NPC, -70.32, -10.7, -5.03, 2, 0)
	MovementLoopAddLocation(NPC, -78.86, -10.7, 0.37, 2, 0)
	MovementLoopAddLocation(NPC, -91.86, -11.64, 7.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -92.13, -11.71, -11.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -92.61, -11.37, -4.2, 2, 0)
	MovementLoopAddLocation(NPC, -94.45, -10.7, 4.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -94.05, -11, 11.5, 2, 0)
	MovementLoopAddLocation(NPC, -92.85, -10.99, 17.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -85.95, -10.7, 11.94, 2, 0)
	MovementLoopAddLocation(NPC, -71.83, -10.7, -3.88, 2, 0)
	MovementLoopAddLocation(NPC, -67.2, -10.7, -8.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -63.78, -10.7, -11.48, 2, 0)
	MovementLoopAddLocation(NPC, -60.67, -10.7, -12.08, 2, 0)
	MovementLoopAddLocation(NPC, -55.35, -10.7, -17.27, 2, 0)
	MovementLoopAddLocation(NPC, -31.36, -10.7, -42.61, 2, 0)
	MovementLoopAddLocation(NPC, -18.56, -10.72, -52.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.84, -11.26, -58.08, 2, 0)
	MovementLoopAddLocation(NPC, -6.34, -11.7, -62.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.29, -11.43, -62.92, 2, 0)
	MovementLoopAddLocation(NPC, 2.23, -11.5, -63.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.55, -10.7, -58.75, 2, 0)
	MovementLoopAddLocation(NPC, -7.72, -10.7, -51.06, 2, 0)
end

