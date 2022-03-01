--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425749.lua
	Script Purpose	:	Waypoint Path for atriggerfish425749.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:14:42 
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
	MovementLoopAddLocation(NPC, -117.75, -11.08, 97.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -121.36, -11.93, 127.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.95, -11.66, 144.25, 2, 0)
	MovementLoopAddLocation(NPC, -113.02, -12.18, 159.91, 2, 0)
	MovementLoopAddLocation(NPC, -105.17, -12.07, 168.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.23, -13.7, 157.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -149.27, -15.04, 167.96, 2, 0)
	MovementLoopAddLocation(NPC, -147.16, -14.96, 168.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.49, -14.97, 179.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.65, -13.78, 168.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.66, -13.51, 155.52, 2, 0)
	MovementLoopAddLocation(NPC, -132.59, -12.43, 140.09, 2, 0)
	MovementLoopAddLocation(NPC, -129.75, -11.78, 136.32, 2, 0)
	MovementLoopAddLocation(NPC, -130.55, -11.86, 134.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.95, -11.82, 101.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.77, -11.53, 108.07, 2, 0)
	MovementLoopAddLocation(NPC, -130.13, -10.56, 107.39, 2, 0)
	MovementLoopAddLocation(NPC, -114.64, -10.07, 93.22, 2, 0)
	MovementLoopAddLocation(NPC, -109.1, -11.88, 90.18, 2, 0)
	MovementLoopAddLocation(NPC, -107.19, -12.07, 86.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.17, -10.84, 92.91, 2, 0)
	MovementLoopAddLocation(NPC, -127.17, -10.54, 93.86, 2, 0)
	MovementLoopAddLocation(NPC, -139.42, -11.91, 101.6, 2, 0)
	MovementLoopAddLocation(NPC, -144.82, -12.82, 104.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.45, -10.53, 93.59, 2, 0)
	MovementLoopAddLocation(NPC, -118.39, -10.98, 96.14, 2, 0)
end

