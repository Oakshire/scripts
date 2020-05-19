--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427388.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427388.lua
	Script Author	:	Rylec
	Script Date	:	11-15-2019 06:25:35 
	Script Notes	:	Dummy script until they fix these sharks on Live
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
	MovementLoopAddLocation(NPC, -107.28, -11, 78.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.93, -11.07, 81.41, 2, 0)
	MovementLoopAddLocation(NPC, -130.76, -11.3, 84.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -147.27, -12.64, 78.63, 2, 0)
	MovementLoopAddLocation(NPC, -151.58, -12.74, 65.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.12, -12.19, 59.05, 2, 0)
	MovementLoopAddLocation(NPC, -116.54, -11.79, 52.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.49, -11.68, 67.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.72, -11.74, 72.22, 2, 0)
	MovementLoopAddLocation(NPC, -127.32, -11.93, 75.18, 2, 0)
	MovementLoopAddLocation(NPC, -137.96, -12.43, 76.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.94, -12.47, 68.84, 2, 0)
	MovementLoopAddLocation(NPC, -149.37, -12.11, 19.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.72, -11.36, 30.37, 2, 0)
	MovementLoopAddLocation(NPC, -122.98, -11.04, 47.18, 2, 0)
	MovementLoopAddLocation(NPC, -107.05, -10.95, 71.17, 2, 0)
end

