--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425443.lua
	Script Purpose	:	Waypoint Path for ashoalglider425443.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 06:00:00 
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
	MovementLoopAddLocation(NPC, -109.45, -14.4, 246.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.42, -13.01, 240.48, 2, 0)
	MovementLoopAddLocation(NPC, -94.17, -13.14, 225.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.07, -12.99, 199.58, 2, 0)
	MovementLoopAddLocation(NPC, -103.42, -13.48, 194.98, 2, 0)
	MovementLoopAddLocation(NPC, -105.99, -13.55, 192.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.93, -14.36, 199.99, 2, 0)
	MovementLoopAddLocation(NPC, -129.63, -14.46, 221.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.47, -14.57, 223.44, 2, 0)
	MovementLoopAddLocation(NPC, -124.6, -14.6, 227.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.44, -14.5, 206.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.7, -14.45, 227.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -97.11, -13.11, 231.66, 2, 0)
	MovementLoopAddLocation(NPC, -104.7, -12.96, 239.45, 2, 0)
	MovementLoopAddLocation(NPC, -106.74, -14.37, 245.86, 2, 0)
end

