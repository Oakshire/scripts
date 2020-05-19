--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427027.lua
	Script Purpose	:	Waypoint Path for areefturtle427027.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:01 
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
	MovementLoopAddLocation(NPC, -116.12, -11.82, 66.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.52, -10.65, 68.26, 2, 0)
	MovementLoopAddLocation(NPC, -105.3, -11.92, 74.32, 2, 0)
	MovementLoopAddLocation(NPC, -107.27, -11.67, 78.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -108.89, -10.5, 72.36, 2, 0)
	MovementLoopAddLocation(NPC, -121.45, -10.5, 63.59, 2, 0)
	MovementLoopAddLocation(NPC, -127.36, -10.45, 56.17, 2, 0)
	MovementLoopAddLocation(NPC, -128.81, -11.47, 54.47, 2, 0)
	MovementLoopAddLocation(NPC, -130.01, -11.67, 51.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.49, -11.77, 39.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.66, -10.55, 51.07, 2, 0)
	MovementLoopAddLocation(NPC, -120.8, -10.35, 60.25, 2, 0)
	MovementLoopAddLocation(NPC, -115.9, -11.74, 64.15, 2, 0)
	MovementLoopAddLocation(NPC, -112.56, -11.86, 64.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.71, -10.51, 61.74, 2, 0)
	MovementLoopAddLocation(NPC, -129.69, -10.31, 55.95, 2, 0)
	MovementLoopAddLocation(NPC, -134.89, -12.77, 52.67, 2, 0)
	MovementLoopAddLocation(NPC, -143.93, -13.05, 50.88, 2, 0)
	MovementLoopAddLocation(NPC, -145.57, -13.18, 51.19, 2, 0)
	MovementLoopAddLocation(NPC, -148.19, -13.44, 52.96, 2, 0)
	MovementLoopAddLocation(NPC, -148.53, -14.76, 66.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.04, -13.37, 51.34, 2, 0)
	MovementLoopAddLocation(NPC, -144.04, -13.24, 50.95, 2, 0)
	MovementLoopAddLocation(NPC, -137.87, -12.8, 56.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.69, -12.3, 55.35, 2, 0)
	MovementLoopAddLocation(NPC, -129.72, -11.28, 56.01, 2, 0)
	MovementLoopAddLocation(NPC, -127.65, -10.57, 57.29, 2, 0)
	MovementLoopAddLocation(NPC, -120.36, -10.36, 61.57, 2, 0)
	MovementLoopAddLocation(NPC, -116.64, -11.59, 64.87, 2, 0)
end
