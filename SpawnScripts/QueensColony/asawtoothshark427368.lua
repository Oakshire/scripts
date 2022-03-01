--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427368.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427368.lua
	Script Author	:	Rylec
	Script Date	:	11-11-2019 06:43:40 
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
	MovementLoopAddLocation(NPC, -139.22, -13.48, 172.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.58, -12.54, 179.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.13, -12.46, 208.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.83, -13.28, 183.37, 2, 0)
	MovementLoopAddLocation(NPC, -141.12, -13.57, 175.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.63, -14.24, 171.72, 2, 0)
	MovementLoopAddLocation(NPC, -124, -12.28, 166.37, 2, 0)
	MovementLoopAddLocation(NPC, -112.57, -11.77, 157.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -115.46, -12.27, 172.28, 2, 0)
	MovementLoopAddLocation(NPC, -117.43, -13.53, 179.88, 2, 0)
	MovementLoopAddLocation(NPC, -125.36, -14.81, 194.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.7, -14.76, 212.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.17, -13.34, 192.35, 2, 0)
	MovementLoopAddLocation(NPC, -123.46, -12.44, 183.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.02, -13.1, 187.94, 2, 0)
	MovementLoopAddLocation(NPC, -132.86, -14.74, 199.32, 2, 0)
	MovementLoopAddLocation(NPC, -138.2, -14.75, 214.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.36, -14.18, 196.51, 2, 0)
	MovementLoopAddLocation(NPC, -113.29, -13.37, 187.49, 2, 0)
	MovementLoopAddLocation(NPC, -111.3, -13.01, 184.37, 2, 0)
	MovementLoopAddLocation(NPC, -106.64, -12.31, 181.83, 2, 0)
	MovementLoopAddLocation(NPC, -102.58, -12.06, 178.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -103.95, -12.24, 167.47, 2, 0)
	MovementLoopAddLocation(NPC, -108.91, -11.76, 152.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.02, -11.35, 161.11, 2, 0)
	MovementLoopAddLocation(NPC, -124.42, -11.42, 165.52, 2, 0)
	MovementLoopAddLocation(NPC, -127.38, -12.01, 167.85, 2, 0)
	MovementLoopAddLocation(NPC, -132.06, -12.6, 168.87, 2, 0)
	MovementLoopAddLocation(NPC, -137.58, -13.34, 167.56, 2, 0)
	MovementLoopAddLocation(NPC, -151.92, -14.12, 172.83, 2, math.random(10, 20))
end
