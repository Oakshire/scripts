--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587537.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587537.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:41:23 
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
	MovementLoopAddLocation(NPC, 149.03, 1.43, 87.76, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 150.55, 1.43, 72.56, 2, 0)
	MovementLoopAddLocation(NPC, 158.9, 1.4, 62.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 128.01, 1.69, 59.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.17, 1.23, 54.27, 2, 0)
	MovementLoopAddLocation(NPC, 155.45, 1.42, 52.41, 2, 0)
	MovementLoopAddLocation(NPC, 163.27, 1.39, 51.96, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.12, 1.31, 36.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.98, 1.13, 36.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.06, 1.41, 53.49, 2, 0)
	MovementLoopAddLocation(NPC, 153.89, 1.42, 60.42, 2, 0)
	MovementLoopAddLocation(NPC, 135.54, 1.29, 73.31, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 131.7, 1.21, 51.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 136.41, 1.48, 54.33, 2, 0)
	MovementLoopAddLocation(NPC, 139.77, 1.48, 58.23, 2, 0)
	MovementLoopAddLocation(NPC, 141.36, 1.27, 62.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 133.96, 1.37, 88.87, 2, 0)
	MovementLoopAddLocation(NPC, 133.73, 1.49, 95.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 133.5, 1.43, 91.19, 2, 0)
	MovementLoopAddLocation(NPC, 137.36, 1.28, 77.08, 2, 0)
	MovementLoopAddLocation(NPC, 143.42, 1.38, 67.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 133.44, 1.43, 91.35, 2, 0)
	MovementLoopAddLocation(NPC, 133.8, 1.49, 96.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 144.14, 1.45, 92.35, 2, 0)
	MovementLoopAddLocation(NPC, 146.2, 1.44, 89.08, 2, 0)
	MovementLoopAddLocation(NPC, 149.36, 1.43, 88.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.62, 1.38, 91.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.07, 1.4, 97.82, 2, math.random(10, 24))
end

