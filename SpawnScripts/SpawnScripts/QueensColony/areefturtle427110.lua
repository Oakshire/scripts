--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427110.lua
	Script Purpose	:	Waypoint Path for areefturtle427110.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:45:33 
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
	MovementLoopAddLocation(NPC, -94.29, -13.85, 204.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.7, -14.08, 202.88, 2, 0)
	MovementLoopAddLocation(NPC, -106.75, -13.6, 193.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.5, -14.7, 216.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.51, -14.72, 224.42, 2, 0)
	MovementLoopAddLocation(NPC, -144, -13.56, 229.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -107.2, -13.5, 225.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.33, -13.45, 223.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.16, -13.26, 227.7, 2, 0)
	MovementLoopAddLocation(NPC, -122.91, -12.34, 231.53, 2, 0)
	MovementLoopAddLocation(NPC, -125.01, -12.19, 234, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.48, -12.1, 237.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.34, -13.23, 233.74, 2, 0)
	MovementLoopAddLocation(NPC, -119.5, -14.72, 212.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.34, -14.92, 204.2, 2, 0)
	MovementLoopAddLocation(NPC, -97.32, -13.9, 204.22, 2, 0)
end


