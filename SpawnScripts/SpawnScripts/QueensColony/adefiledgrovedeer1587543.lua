--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587543.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587543.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:42:03 
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
	MovementLoopAddLocation(NPC, 162.95, 1.39, 57.29, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.44, 1.4, 58.09, 2, 0)
	MovementLoopAddLocation(NPC, 157.38, 1.41, 63.87, 2, 0)
	MovementLoopAddLocation(NPC, 139.99, 1.4, 76.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 145.11, 1.45, 78.91, 2, 0)
	MovementLoopAddLocation(NPC, 166.61, 1.38, 99.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.74, 1.44, 92.23, 2, 0)
	MovementLoopAddLocation(NPC, 143.28, 1.46, 88.82, 2, 0)
	MovementLoopAddLocation(NPC, 129.81, 1.3, 86.44, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 135.55, 1.48, 88.93, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 139.97, 1.47, 84.45, 2, 0)
	MovementLoopAddLocation(NPC, 149.09, 1.44, 82.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 139.91, 1.27, 67.87, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.3, 1.42, 65.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.15, 1.4, 59.07, 2, 0)
end


