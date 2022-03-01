--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427070.lua
	Script Purpose	:	Waypoint Path for areefturtle427070.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:28:23 
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
	MovementLoopAddLocation(NPC, 19.29, -12.77, -20.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.21, -12.68, -15.85, 2, 0)
	MovementLoopAddLocation(NPC, 41.96, -12.25, -12.5, 2, 0)
	MovementLoopAddLocation(NPC, 49.66, -11.81, -12.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.14, -12.2, -16.49, 2, 0)
	MovementLoopAddLocation(NPC, 40.59, -12.68, -28.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.4, -13.11, -15.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.54, -12.72, -25.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.03, -12.49, -16.68, 2, 0)
	MovementLoopAddLocation(NPC, 40.74, -12.62, -13.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.37, -12.36, -1.69, 2, 0)
	MovementLoopAddLocation(NPC, 34.34, -12.74, 1.73, 2, 0)
	MovementLoopAddLocation(NPC, 34.25, -12.83, 4.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.42, -13.15, -17.13, 2, 0)
end


