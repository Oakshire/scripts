--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427400.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427400.lua
	Script Author	:	Rylec
	Script Date	:	11-11-2019 06:43:34 
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
	MovementLoopAddLocation(NPC, -148.24, -14.67, 83.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.62, -13.92, 86.24, 2, 0)
	MovementLoopAddLocation(NPC, -143.67, -13.46, 88.52, 2, 0)
	MovementLoopAddLocation(NPC, -130.79, -10.46, 91.97, 2, 0)
	MovementLoopAddLocation(NPC, -117.86, -10.64, 93.94, 2, 0)
	MovementLoopAddLocation(NPC, -112.53, -10.61, 89.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.33, -10.61, 93.37, 2, 0)
	MovementLoopAddLocation(NPC, -130.86, -11.12, 95.66, 2, 0)
	MovementLoopAddLocation(NPC, -142.83, -12.52, 105.9, 2, 0)
	MovementLoopAddLocation(NPC, -147.3, -12.55, 112.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -152.84, -12.41, 121.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.37, -11.38, 116.83, 2, 0)
	MovementLoopAddLocation(NPC, -133.93, -11.68, 116.85, 2, 0)
	MovementLoopAddLocation(NPC, -123.66, -11.64, 116.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.55, -11.99, 128.11, 2, 0)
	MovementLoopAddLocation(NPC, -121.12, -11.8, 134.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -101.16, -11.78, 127.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -81.41, -11.33, 135.26, 2, 0)
	MovementLoopAddLocation(NPC, -80.52, -11.44, 140.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.8, -11.1, 136.09, 2, 0)
	MovementLoopAddLocation(NPC, -89.95, -11.25, 128.31, 2, 0)
	MovementLoopAddLocation(NPC, -122.46, -11.72, 119.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.23, -11.77, 120.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.58, -10.6, 108.24, 2, 0)
	MovementLoopAddLocation(NPC, -128.92, -10.6, 108.63, 2, 0)
	MovementLoopAddLocation(NPC, -131.39, -11.62, 94.79, 2, 0)
	MovementLoopAddLocation(NPC, -131.96, -11.62, 85.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.1, -13, 99.21, 2, 0)
	MovementLoopAddLocation(NPC, -151.72, -12.86, 111.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -151.14, -13.27, 95.92, 2, 0)
	MovementLoopAddLocation(NPC, -150.7, -14.3, 89.53, 2, 0)
end
