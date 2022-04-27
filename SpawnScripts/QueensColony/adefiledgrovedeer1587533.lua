--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587533.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587533.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:39:34 
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
	MovementLoopAddLocation(NPC, 183.04, 1.54, 99.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 192.67, 1.27, 91.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 186.12, 1.3, 85.1, 2, 0)
	MovementLoopAddLocation(NPC, 178.74, 1.33, 75.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 172.05, 1.36, 63.1, 2, 0)
	MovementLoopAddLocation(NPC, 158.96, 1.41, 49.56, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.91, 1.41, 51.02, 2, 0)
	MovementLoopAddLocation(NPC, 135.61, 1.29, 73.09, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.74, 1.4, 67.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.7, 1.42, 62.96, 2, 0)
	MovementLoopAddLocation(NPC, 157.47, 1.41, 62.72, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.14, 1.4, 70.75, 2, 0)
	MovementLoopAddLocation(NPC, 164.99, 1.38, 77.88, 2, 0)
	MovementLoopAddLocation(NPC, 167.08, 1.37, 84.5, 2, 0)
	MovementLoopAddLocation(NPC, 174.53, 1.34, 92.99, 2, 0)
end


