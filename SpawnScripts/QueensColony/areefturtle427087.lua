--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427087.lua
	Script Purpose	:	Waypoint Path for areefturtle427087.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:28 
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
	MovementLoopAddLocation(NPC, -124.84, -14.73, 237.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.67, -14.7, 240.18, 2, 0)
	MovementLoopAddLocation(NPC, -95.81, -14.75, 219.83, 2, 0)
	MovementLoopAddLocation(NPC, -91.41, -13.44, 221.06, 2, 0)
	MovementLoopAddLocation(NPC, -88.33, -13.21, 218.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -94.27, -14.26, 219.74, 2, 0)
	MovementLoopAddLocation(NPC, -109.35, -13.57, 239.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.69, -13.55, 223.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.7, -12.2, 197.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.94, -12.72, 216.05, 2, 0)
	MovementLoopAddLocation(NPC, -80.59, -12.5, 221.3, 2, 0)
	MovementLoopAddLocation(NPC, -77.16, -11.49, 223.13, 2, 0)
	MovementLoopAddLocation(NPC, -74.77, -11.54, 225.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -81.38, -12.16, 221.31, 2, 0)
	MovementLoopAddLocation(NPC, -87.6, -12.35, 220.97, 2, 0)
	MovementLoopAddLocation(NPC, -94.35, -12.21, 214.49, 2, 0)
	MovementLoopAddLocation(NPC, -97.88, -12.4, 215.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.3, -13.31, 218.16, 2, 0)
	MovementLoopAddLocation(NPC, -127.27, -14.72, 220.96, 2, math.random(10, 20))
end


