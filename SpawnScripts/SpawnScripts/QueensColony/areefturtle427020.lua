--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427020.lua
	Script Purpose	:	Waypoint Path for areefturtle427020.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:14:27 
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
	MovementLoopAddLocation(NPC, -108.61, -12.21, 108.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.98, -12.35, 104.16, 2, 0)
	MovementLoopAddLocation(NPC, -119.87, -12.27, 99.98, 2, 0)
	MovementLoopAddLocation(NPC, -122.63, -12.33, 96.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.07, -11.11, 94.17, 2, 0)
	MovementLoopAddLocation(NPC, -129.27, -10.38, 94.34, 2, 0)
	MovementLoopAddLocation(NPC, -133.23, -11.12, 99.46, 2, 0)
	MovementLoopAddLocation(NPC, -132.68, -12.71, 101.02, 2, 0)
	MovementLoopAddLocation(NPC, -130.31, -12.67, 106.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.8, -11.87, 127.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.12, -12.73, 138.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.07, -12.24, 150.07, 2, 0)
	MovementLoopAddLocation(NPC, -130.28, -11.79, 154.74, 2, 0)
	MovementLoopAddLocation(NPC, -129.2, -11.86, 156.35, 2, 0)
	MovementLoopAddLocation(NPC, -123.7, -12.01, 168.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.5, -12.57, 171.22, 2, 0)
	MovementLoopAddLocation(NPC, -129.52, -13.58, 174.03, 2, 0)
	MovementLoopAddLocation(NPC, -135.96, -14.87, 179.49, 2, 0)
	MovementLoopAddLocation(NPC, -138.14, -14.83, 179.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.01, -14.73, 167.88, 2, 0)
	MovementLoopAddLocation(NPC, -140.63, -13.29, 158.75, 2, 0)
	MovementLoopAddLocation(NPC, -143, -13.64, 153.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.01, -12.37, 149.99, 2, 0)
	MovementLoopAddLocation(NPC, -101.35, -11.74, 145.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.28, -11.29, 133.66, 2, 0)
	MovementLoopAddLocation(NPC, -132.24, -12.81, 131.11, 2, 0)
	MovementLoopAddLocation(NPC, -130.73, -12.92, 124.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.26, -11.58, 133.49, 2, 0)
	MovementLoopAddLocation(NPC, -120.15, -11.48, 127.34, 2, 0)
end

