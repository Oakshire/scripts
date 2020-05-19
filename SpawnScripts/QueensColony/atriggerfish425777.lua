--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425777.lua
	Script Purpose	:	Waypoint Path for atriggerfish425777.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:12:47 
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
	MovementLoopAddLocation(NPC, 61.36, -11.65, -76.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.55, -11.1, -82.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.42, -11.97, -47.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.95, -11.47, -49.14, 2, 0)
	MovementLoopAddLocation(NPC, 60.12, -11.27, -52.01, 2, 0)
	MovementLoopAddLocation(NPC, 54.12, -10.98, -54.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.03, -11.41, -67.04, 2, 0)
	MovementLoopAddLocation(NPC, 56.42, -11.92, -80.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.66, -11.79, -72.23, 2, 0)
	MovementLoopAddLocation(NPC, 77.7, -11.54, -69.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.27, -11.92, -78.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.24, -11.99, -74.35, 2, math.random(10, 20))
end


