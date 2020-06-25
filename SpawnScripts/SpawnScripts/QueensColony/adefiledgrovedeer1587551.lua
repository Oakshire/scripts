--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587551.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587551.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:46:26 
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
	MovementLoopAddLocation(NPC, 165.23, 1.39, 17.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.24, 1.2, 31.11, 2, 0)
	MovementLoopAddLocation(NPC, 156.2, 1.27, 36.52, 2, 0)
	MovementLoopAddLocation(NPC, 147.44, 1.45, 65.24, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.8, 1.41, 65.49, 2, 0)
	MovementLoopAddLocation(NPC, 162.75, 1.39, 63.96, 2, 0)
	MovementLoopAddLocation(NPC, 171.08, 1.36, 57.3, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.06, 1.37, 59.78, 2, 0)
	MovementLoopAddLocation(NPC, 163.23, 1.39, 63.76, 2, 0)
	MovementLoopAddLocation(NPC, 137.44, 1.28, 76.07, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 149.35, 1.24, 51.26, 2, 0)
	MovementLoopAddLocation(NPC, 151.37, 1.23, 41.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.28, 0.34, 17.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 131.73, 1.13, 41.45, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.04, 1.46, 52.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 142.1, 1.47, 54.67, 2, 0)
	MovementLoopAddLocation(NPC, 142.06, 1.26, 61.9, 2, 0)
	MovementLoopAddLocation(NPC, 135.47, 1.28, 83.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.07, 1.42, 59.39, 2, 0)
	MovementLoopAddLocation(NPC, 159.37, 1.4, 57.11, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.8, 1.36, 38.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 168.26, 1.38, 32.44, 2, 0)
end

