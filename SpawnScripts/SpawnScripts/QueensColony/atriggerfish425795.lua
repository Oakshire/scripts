--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425795.lua
	Script Purpose	:	Waypoint Path for atriggerfish425795.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:19:07 
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
	MovementLoopAddLocation(NPC, 63.98, -11.93, -78.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.28, -11.95, -67.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.7, -11.45, -55.73, 2, 0)
	MovementLoopAddLocation(NPC, 75.1, -11.37, -51.53, 2, 0)
	MovementLoopAddLocation(NPC, 79.24, -11.96, -35.56, 2, 0)
	MovementLoopAddLocation(NPC, 83.71, -11.99, -30.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 100.12, -12.92, -28.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.38, -12.89, -33.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.71, -11.94, -34.17, 2, 0)
	MovementLoopAddLocation(NPC, 101.67, -11.83, -36.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.71, -12, -40.19, 2, 0)
	MovementLoopAddLocation(NPC, 67.09, -11.85, -47.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.97, -10.96, -74.28, 2, 0)
	MovementLoopAddLocation(NPC, 56.33, -11.17, -82.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.69, -11.04, -33.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.42, -11.13, -47.22, 2, 0)
	MovementLoopAddLocation(NPC, 71.83, -11.17, -55.54, 2, 0)
end


