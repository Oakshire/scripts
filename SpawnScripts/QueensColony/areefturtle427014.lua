--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427014.lua
	Script Purpose	:	Waypoint Path for areefturtle427014.lua
	Script Author	:	Rylec
	Script Date	:	10-23-2019 07:03:53 
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
	MovementLoopAddLocation(NPC, -48.31, -13.79, 256.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -62.36, -14.7, 266.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -71.29, -15.18, 262.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -64.52, -14.77, 267.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -67.14, -14.81, 264.85, 2, 0)
	MovementLoopAddLocation(NPC, -75.68, -14.12, 252.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -60.38, -12.05, 248.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.73, -12.03, 252.47, 2, 0)
	MovementLoopAddLocation(NPC, -54.23, -12.43, 270.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.48, -12.42, 265.1, 2, math.random(10, 20))
end
