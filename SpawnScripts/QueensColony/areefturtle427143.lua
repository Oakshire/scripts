--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427143.lua
	Script Purpose	:	Waypoint Path for areefturtle427143.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:10 
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
	MovementLoopAddLocation(NPC, -99.1, -11.98, 225.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.13, -12.3, 238.17, 2, 0)
	MovementLoopAddLocation(NPC, -112.36, -12.82, 240.13, 2, 0)
	MovementLoopAddLocation(NPC, -117.07, -13.38, 244.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.91, -14.71, 206.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.7, -14.8, 242.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -113.6, -13.43, 240.11, 2, 0)
	MovementLoopAddLocation(NPC, -122.04, -12.18, 210.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.07, -12.26, 212.18, 2, 0)
	MovementLoopAddLocation(NPC, -106.01, -12.35, 211.97, 2, 0)
	MovementLoopAddLocation(NPC, -104.44, -12.21, 214.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -113.54, -13.29, 221.08, 2, 0)
	MovementLoopAddLocation(NPC, -129.59, -13.52, 227.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.5, -14.68, 200.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -105.56, -12.22, 200.36, 2, 0)
	MovementLoopAddLocation(NPC, -112.08, -12.09, 212.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.14, -13.35, 218.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -105.8, -13.27, 223.93, 2, 0)
	MovementLoopAddLocation(NPC, -100.28, -13.39, 227.25, 2, 0)
	MovementLoopAddLocation(NPC, -96.75, -13.58, 231.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -98.77, -12.28, 226.22, 2, 0)
	MovementLoopAddLocation(NPC, -97.95, -12.01, 221.05, 2, 0)
	MovementLoopAddLocation(NPC, -93.63, -11.74, 221.01, 2, math.random(10, 20))
end

