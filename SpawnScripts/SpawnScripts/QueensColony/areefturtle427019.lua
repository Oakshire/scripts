--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427019.lua
	Script Purpose	:	Waypoint Path for areefturtle427019.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:14:15 
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
	MovementLoopAddLocation(NPC, -121.44, -11.77, 97.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.78, -11.77, 116.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.59, -10.41, 126.34, 2, 0)
	MovementLoopAddLocation(NPC, -127.18, -10.62, 132.28, 2, 0)
	MovementLoopAddLocation(NPC, -137.78, -12.36, 139.34, 2, 0)
	MovementLoopAddLocation(NPC, -142.99, -12.59, 142.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -121.4, -11.73, 153.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.19, -12.2, 162, 2, 0)
	MovementLoopAddLocation(NPC, -135.72, -13.58, 175.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.44, -13.77, 179.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.98, -13.29, 174.63, 2, 0)
	MovementLoopAddLocation(NPC, -129.05, -12.34, 155.73, 2, 0)
	MovementLoopAddLocation(NPC, -130.52, -12.35, 153.68, 2, 0)
	MovementLoopAddLocation(NPC, -133.79, -12.24, 143.79, 2, 0)
	MovementLoopAddLocation(NPC, -135.87, -12.73, 138.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.03, -13.04, 127.91, 2, 0)
	MovementLoopAddLocation(NPC, -148.5, -12.36, 104.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.52, -12.58, 104.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.82, -10.33, 93.52, 2, 0)
	MovementLoopAddLocation(NPC, -122.63, -11.66, 95.18, 2, 0)
end

