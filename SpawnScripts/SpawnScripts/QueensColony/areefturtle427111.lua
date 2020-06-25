--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427111.lua
	Script Purpose	:	Waypoint Path for areefturtle427111.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:45:54 
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
	MovementLoopAddLocation(NPC, -106.99, -14.79, 225.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -122.07, -13.42, 227.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.22, -12.21, 201.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.03, -12.18, 199.94, 2, 0)
	MovementLoopAddLocation(NPC, -108.17, -12.48, 196.53, 2, 0)
	MovementLoopAddLocation(NPC, -114.42, -12.63, 198.52, 2, 0)
	MovementLoopAddLocation(NPC, -119.55, -13.32, 203.92, 2, 0)
	MovementLoopAddLocation(NPC, -127.24, -14.73, 216.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.02, -13.31, 194, 2, 0)
	MovementLoopAddLocation(NPC, -114.5, -14.67, 197.15, 2, 0)
	MovementLoopAddLocation(NPC, -111.89, -14.82, 197.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -108.31, -14.42, 195.78, 2, 0)
	MovementLoopAddLocation(NPC, -106.18, -12.75, 193.35, 2, 0)
	MovementLoopAddLocation(NPC, -104.24, -12.57, 191.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.1, -13.43, 223.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -93.86, -13.43, 227.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -83.47, -13.12, 217.52, 2, 0)
	MovementLoopAddLocation(NPC, -73.92, -11.85, 204.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -77.67, -11.99, 206.73, 2, 0)
	MovementLoopAddLocation(NPC, -83.03, -13.25, 215.88, 2, 0)
	MovementLoopAddLocation(NPC, -85.68, -14.75, 221.04, 2, 0)
	MovementLoopAddLocation(NPC, -87.04, -14.76, 221.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.18, -14.9, 220, 2, 0)
end

