--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427022.lua
	Script Purpose	:	Waypoint Path for areefturtle427022.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:15:47 
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
	MovementLoopAddLocation(NPC, -137.57, -11.53, 142.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.28, -11.7, 144.11, 2, 0)
	MovementLoopAddLocation(NPC, -103.36, -11.75, 145.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.95, -11.31, 174.14, 2, 0)
	MovementLoopAddLocation(NPC, -125.07, -12.34, 197.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.44, -12.84, 183.13, 2, 0)
	MovementLoopAddLocation(NPC, -140.48, -12.06, 179.75, 2, 0)
	MovementLoopAddLocation(NPC, -144.86, -12.33, 175.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -115.24, -13.44, 184.96, 2, 0)
	MovementLoopAddLocation(NPC, -113.89, -13.59, 186.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.39, -13.75, 186.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.84, -11.7, 156.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.19, -12.13, 150.99, 2, 0)
	MovementLoopAddLocation(NPC, -117.6, -11.73, 150.55, 2, 0)
	MovementLoopAddLocation(NPC, -113.77, -11.74, 149.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.17, -10.67, 147.91, 2, 0)
end

